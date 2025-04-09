'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"splash/img/light-4x.png": "9ba8b7dc93322588d2be8c65dc1c9739",
"splash/img/dark-3x.png": "5390cc7b426ba4ae532ce46f1a04faac",
"splash/img/light-3x.png": "5390cc7b426ba4ae532ce46f1a04faac",
"splash/img/light-1x.png": "1f45572d763a49dd6b57c8500d53b32b",
"splash/img/dark-1x.png": "1f45572d763a49dd6b57c8500d53b32b",
"splash/img/light-2x.png": "93b5140f75ffdc52079e2c8a7d536ee5",
"splash/img/dark-2x.png": "93b5140f75ffdc52079e2c8a7d536ee5",
"splash/img/dark-4x.png": "9ba8b7dc93322588d2be8c65dc1c9739",
"index.html": "79df52d8c35327cea79d7669189af3a4",
"/": "79df52d8c35327cea79d7669189af3a4",
"assets/NOTICES": "7f45b3fc6f0bc0b497370121c8da9139",
"assets/assets/ariannaap_transparent.png": "b97aadbbd934bb8996310fc8dc839611",
"assets/assets/logo.png": "6584b521825e39d7f2fa9b98104cff35",
"assets/assets/images/horoscope/sagittarius-sign.svg": "c59aeb6fefbd44707aede825a73f9faa",
"assets/assets/images/horoscope/cancer-sign.svg": "91d6b9f11b73d9ce0bd4fac57d7ff6d4",
"assets/assets/images/horoscope/virgo-sign.svg": "46bf14fc5fef2a08f9feb14c3fa784c2",
"assets/assets/images/horoscope/scorpio-sign.svg": "c52ab0459919233339f2d80b6541b72f",
"assets/assets/images/horoscope/leo-sign.svg": "fb548a1ee75957acb25cdf4adccf1e63",
"assets/assets/images/horoscope/gemini-sign.svg": "e856d0b4a43592b87b6078407054c14a",
"assets/assets/images/horoscope/aries-sign.svg": "9c96935ee64d36b23369ce88190f21f5",
"assets/assets/images/horoscope/libra-sign.svg": "4138b7d41650283090d9d2b0c85c73cb",
"assets/assets/images/horoscope/taurus-sign.svg": "4918a5e4f62054fb21b7c8b3308c2f15",
"assets/assets/images/horoscope/capricorn-sign.svg": "902f06bdee98c5f125d3b2aed3fceb8f",
"assets/assets/images/horoscope/pisces-sign.svg": "6415fcc695a5f3188b85a54db2edc218",
"assets/assets/images/horoscope/aquarius-sign.svg": "a481f6fcf8f31ce89462e1b644c278f5",
"assets/assets/images/handwritten-logo.png": "674a0a4b5d8fd82d1227f06944df0bd9",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "b8bcd1e6f72d08bda9a9d050e97c2d60",
"assets/fonts/MaterialIcons-Regular.otf": "b0b060243dd6e14664d88f1068be64e3",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "78b5a09f83db7e4d814d751d0452b40f",
"assets/AssetManifest.json": "1a57c8136d36c35d59e012d766d9ea03",
"version.json": "74b0d2d2e1a22caecc7317f76d51a5ca",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"main.dart.js": "c846be16522d4f1bb0f0547d94544d52",
"icons/Icon-maskable-512.png": "9ba8b7dc93322588d2be8c65dc1c9739",
"icons/Icon-192.png": "2809f4f281fdff7231afaa3906e8d92e",
"icons/Icon-512.png": "9ba8b7dc93322588d2be8c65dc1c9739",
"icons/Icon-maskable-192.png": "2809f4f281fdff7231afaa3906e8d92e",
"manifest.json": "10d0cdfd2763dbe32541a438d289d4c2",
"favicon.png": "074a894a45fafd1328c9af5178fac736",
"flutter_bootstrap.js": "6398a8b14437f3062bc0bb521bf43d20"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
