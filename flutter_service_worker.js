'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "4a5e03e92e79ed102d952a8177985127",
"assets/AssetManifest.json": "614ed09e94dc0b14fbd39bdc697141cd",
"assets/assets/attorneyinjungle_smallest.jpg": "2c2f13578ed6021085f4d63d6b3ab774",
"assets/assets/Description_Search.PNG": "da68698bf2db49648acb44f04a06e76e",
"assets/assets/Logo.png": "3c009af0b5cedfb3f05e71ecfad1ef1f",
"assets/assets/TEAS_add_goods1.PNG": "89c29466cee7e488ec272bc7f93d57de",
"assets/assets/TEAS_applicant_information.PNG": "3ff8e1f4ff9d1b09209711e750ac3834",
"assets/assets/TEAS_apply_online.PNG": "70d067a27f92b00c8563b7af36d78680",
"assets/assets/TEAS_create_account.PNG": "6f5a3961d411c39e814e94769a8b8e5e",
"assets/assets/TEAS_filing_basis.PNG": "bd5c18e0f05150d6b2064f9075c9a392",
"assets/assets/TEAS_filing_basis1a.PNG": "9a4fd6cf22f6fc3a39f576136c9d76d5",
"assets/assets/TEAS_filing_basis1b.PNG": "75781d1f53bd53c9b2486d2f758996c6",
"assets/assets/TEAS_filing_basis_done.PNG": "00fb8d2a0391236e54da97ce361f1f4c",
"assets/assets/TEAS_filing_options.PNG": "b3e7ce4536537965b0ed35a6ebc12e89",
"assets/assets/TEAS_insert_entries.PNG": "ca4718403d40adf19b9181581777bb9c",
"assets/assets/TEAS_mark_information.PNG": "04c419ebf01af5e99038ea4389bc011a",
"assets/assets/TEAS_search_manual.PNG": "190ceb27610ea00d06bc91929358a11f",
"assets/assets/TEAS_start_application.PNG": "3ff99aac04db687ee8735ef93507b095",
"assets/assets/TESS.PNG": "bb985553da95fe188af7be9c3b29b2db",
"assets/assets/TESS_Basic_Search1.PNG": "ae02aa6b77f293aeab5484b53f17343f",
"assets/assets/TESS_Basic_Search1Result.PNG": "79127e4a86afeba426e19d3463614366",
"assets/assets/TESS_Basic_Search2.PNG": "f629474fb12db5e5938a354a980ef226",
"assets/assets/TESS_Basic_Search2Result.PNG": "595eb4489f24b865c19d145dbfe79710",
"assets/assets/TESS_Search.PNG": "9b421ebbb495b871df4af14564fcfa36",
"assets/assets/trademark_ID_manual.PNG": "273a3b4322fe4c90726eb1fd0b345052",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "176048e01878186745ac87a0e9b29631",
"assets/NOTICES": "184cd17964878b75373bef1ccf95ddc5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "0f1a270792ac3e99f78fa47d621d8176",
"/": "0f1a270792ac3e99f78fa47d621d8176",
"main.dart.js": "7b81faeeda9f0a615080ee95405db7a9",
"manifest.json": "5e573e78dc80e97bb57cfe5077a04c65",
"version.json": "a948902960699333665ec7e87c30d98d"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
