// ======================================
// 1. Map and base maps
// ======================================
var map = L.map('map').setView([25.5276, 69.0111], 13);   // Mirpur Khas

var esri = L.tileLayer(
    'https://server.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/tile/{z}/{y}/{x}',
    { attribution: 'Tiles &copy; Esri', maxZoom: 19 }
).addTo(map);

var osm = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; OpenStreetMap contributors', maxZoom: 19
});

var satellite = L.tileLayer(
    'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}',
    { attribution: 'Tiles &copy; Esri', maxZoom: 19 }
);

var pointsLayer = L.layerGroup().addTo(map);

L.control.layers(
    { "Esri Streets": esri, "OpenStreetMap": osm, "Satellite": satellite },
    { "Banks and ATMs": pointsLayer }
).addTo(map);

// ======================================
// 2. Helpers
// ======================================
var $ = function (id) { return document.getElementById(id); };
var firstLoad = true;
var currentType = '';          // '', 'Bank' or 'ATM'
var markersById = {};          // id -> Leaflet marker (used by the list)

function escapeHtml(t) {
    return String(t).replace(/[&<>"']/g, function (c) {
        return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
}

async function api(path) {
    var response;
    try {
        response = await fetch('/api' + path);
    } catch (e) {
        throw new Error('Cannot reach the server. Is "node server.js" running? Open http://localhost:3000');
    }
    var data = await response.json().catch(function () { return {}; });
    if (!response.ok) throw new Error(data.error || 'Request failed');
    return data;
}

// ======================================
// 3. Symbols and pop-ups
// ======================================
// A bank and its ATM are almost at the same spot, so the two symbols are drawn
// side by side (banks 10 px left, ATMs 10 px right of the true location).
function iconFor(type) {
    var isBank = (type === 'Bank');
    var shift = isBank ? -10 : 10;
    return L.divIcon({
        className: '',
        html: '<div class="pin ' + (isBank ? 'bank' : 'atm') + '">' + (isBank ? 'B' : 'A') + '</div>',
        iconSize: [24, 24],
        iconAnchor: [12 - shift, 12],
        popupAnchor: [shift, -14]
    });
}

// ---- bank logo badge (logo file if it exists, otherwise the bank code) ----
var BANK_CODES = {
    'Allied Bank': 'ABL',
    'Soneri Bank': 'SNB',
    'United Bank Limited': 'UBL',
    'National Bank of Pakistan': 'NBP',
    'Habib Metropolitan Bank': 'HMB',
    'BankIslami': 'BIPL',
    'Bank AL Habib': 'BAH',
    'Bank of Punjab': 'BOP',
    'JS Bank': 'JS',
    'Bank Alfalah': 'BAF',
    'MCB Bank': 'MCB',
    'Habib Bank Limited': 'HBL',
    'Meezan Bank': 'MBL',
    'Zarai Taraqiati Bank (ZTBL)': 'ZTBL'
};

function bankCode(name) {
    if (!name) return 'BANK';
    if (BANK_CODES[name]) return BANK_CODES[name];
    var words = name.replace(/[()]/g, '').split(/\s+/).filter(Boolean);
    return words.slice(0, 3).map(function (w) { return w[0]; }).join('').toUpperCase();
}

function bankSlug(name) {
    return String(name || '').toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '');
}

function logoHtml(bankName) {
    // if logos/<slug>.png does not exist, the <img> removes itself and the code shows
    return '<span class="logo"><em>' + escapeHtml(bankCode(bankName)) + '</em>' +
           '<img src="logos/' + bankSlug(bankName) + '.png" alt="" ' +
           'onerror="this.remove()"></span>';
}

function popupHtml(p, latlng) {
    function row(label, value) {
        return '<div class="slip-row"><span>' + label + '</span><span>' +
               escapeHtml(value || 'Not available') + '</span></div>';
    }
    return '<div class="slip-head">' + logoHtml(p.bank_name) +
           '<div><div class="slip-bank">' + escapeHtml(p.bank_name || 'Bank') + '</div>' +
           '<div class="slip-name">' + escapeHtml(p.name) + '</div></div></div>' +
        '<div class="slip-body">' +
        row('Type', p.feature_type) +
        row('Address', p.address) +
        row('Source', p.source) +
        row('Location', latlng.lat.toFixed(5) + ', ' + latlng.lng.toFixed(5)) +
        '</div>';
}

// ======================================
// 4. Load points from the API (with filters)
// ======================================
async function loadPoints() {
    $('message').textContent = '';

    var params = new URLSearchParams();
    if (currentType) params.set('type', currentType);
    if ($('bankFilter').value) params.set('bank', $('bankFilter').value);
    if ($('search').value.trim()) params.set('q', $('search').value.trim());

    try {
        var geojson = await api('/banks?' + params.toString());
        var stats = await api('/stats');

        // statistics cards
        $('statTotal').textContent = stats.total;
        $('statBanks').textContent = stats.banks;
        $('statAtms').textContent = stats.atms;

        // map
        pointsLayer.clearLayers();
        markersById = {};

        var layer = L.geoJSON(geojson, {
            pointToLayer: function (feature, latlng) {
                return L.marker(latlng, { icon: iconFor(feature.properties.feature_type) });
            },
            onEachFeature: function (feature, lyr) {
                markersById[feature.properties.id] = lyr;
                lyr.bindPopup(function () {
                    return popupHtml(feature.properties, lyr.getLatLng());
                });
            }
        });
        layer.addTo(pointsLayer);

        // side list
        renderList(geojson.features);

        $('summary').textContent =
            'SHOWING ' + geojson.features.length + ' OF ' + stats.total + ' POINTS';

        // zoom to the data the first time
        if (firstLoad && geojson.features.length > 0) {
            map.fitBounds(layer.getBounds(), { padding: [30, 30], maxZoom: 15 });
        }
        firstLoad = false;
    } catch (e) {
        $('summary').textContent = 'COULD NOT LOAD DATA';
        $('message').textContent = e.message;
    }
}

function renderList(features) {
    var ul = $('list');
    ul.innerHTML = '';

    if (features.length === 0) {
        ul.innerHTML = '<li class="empty"><div class="nm">No points match your filters.</div></li>';
        return;
    }

    features.forEach(function (f) {
        var p = f.properties;
        var isBank = (p.feature_type === 'Bank');

        var li = document.createElement('li');
        li.innerHTML =
            '<span class="tag ' + (isBank ? 'bank' : 'atm') + '">' + (isBank ? 'BANK' : 'ATM') + '</span>' +
            '<div><div class="nm">' + escapeHtml(p.name) + '</div>' +
            '<div class="sub">' + escapeHtml(p.address || p.bank_name || '') + '</div></div>';

        // click an item: fly to it on the map and open its pop-up
        li.addEventListener('click', function () {
            var marker = markersById[p.id];
            if (!marker) return;
            map.flyTo(marker.getLatLng(), 17, { duration: 0.8 });
            setTimeout(function () { marker.openPopup(); }, 850);
        });

        ul.appendChild(li);
    });
}

async function loadBankNames() {
    try {
        var names = await api('/bank-names');
        names.forEach(function (n) {
            var o = document.createElement('option');
            o.value = n;
            o.textContent = n;
            $('bankFilter').appendChild(o);
        });
    } catch (e) { /* the main load shows the error */ }
}

// ======================================
// 5. Legend
// ======================================
var legend = L.control({ position: 'bottomright' });
legend.onAdd = function () {
    var div = L.DomUtil.create('div', 'legend');
    div.innerHTML =
        '<b>Legend</b>' +
        '<div><span class="pin bank">B</span>Bank branch</div>' +
        '<div><span class="pin atm">A</span>ATM</div>';
    return div;
};
legend.addTo(map);

// ======================================
// 6. Filters
// ======================================
document.querySelectorAll('#typeSeg button').forEach(function (btn) {
    btn.addEventListener('click', function () {
        document.querySelectorAll('#typeSeg button').forEach(function (b) { b.classList.remove('on'); });
        btn.classList.add('on');
        currentType = btn.dataset.type;
        loadPoints();
    });
});

$('bankFilter').addEventListener('change', loadPoints);
$('search').addEventListener('input', loadPoints);

$('resetBtn').addEventListener('click', function () {
    currentType = '';
    $('bankFilter').value = '';
    $('search').value = '';
    document.querySelectorAll('#typeSeg button').forEach(function (b) {
        b.classList.toggle('on', b.dataset.type === '');
    });
    loadPoints();
});

// ======================================
// 7. Start
// ======================================
loadBankNames();
loadPoints();