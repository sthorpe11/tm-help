'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "ec1edbe5ec06112969f569c1ee97b920",
"assets/AssetManifest.json": "6722f581d81cffac3873e6c9891d12ed",
"assets/assets/attorneyinjungle_smallest.jpg": "2c2f13578ed6021085f4d63d6b3ab774",
"assets/assets/Description_Search.PNG": "ae706e4713cd2bda21651eded00e9b6e",
"assets/assets/Logo.png": "3c009af0b5cedfb3f05e71ecfad1ef1f",
"assets/assets/TEAS_add_goods1.PNG": "67bc37f5b5286b62da2598e1f2ba379f",
"assets/assets/TEAS_applicant_information.PNG": "3ff8e1f4ff9d1b09209711e750ac3834",
"assets/assets/TEAS_apply_online.PNG": "70d067a27f92b00c8563b7af36d78680",
"assets/assets/TEAS_create_account.PNG": "52d890b89bebacb561bdc2a79cdb9f77",
"assets/assets/TEAS_declaration.PNG": "9d96e1101353672fb53bfb51a32cdf5b",
"assets/assets/TEAS_filing_basis-a.PNG": "6231ec81162acf89f1e325b4d126c092",
"assets/assets/TEAS_filing_basis-b.PNG": "e913f34d7fc00bbe8613cff6b1f04d02",
"assets/assets/TEAS_filing_basis.PNG": "bd5c18e0f05150d6b2064f9075c9a392",
"assets/assets/TEAS_filing_basis1a.PNG": "9a4fd6cf22f6fc3a39f576136c9d76d5",
"assets/assets/TEAS_filing_basis1b.PNG": "83efe45c4810d85523a5d4c491a728f2",
"assets/assets/TEAS_filing_basis_done.PNG": "612b9f3bf913d6114444b1b059426b38",
"assets/assets/TEAS_filing_options.PNG": "9e9a8593dcb59c65e1d1ac2dca50cfb9",
"assets/assets/TEAS_input.PNG": "8d89d82f17f03fc81a1ad7c7cda069ad",
"assets/assets/TEAS_insert_entries.PNG": "15d49b75dbc147406f4e3be33c38c97f",
"assets/assets/TEAS_mark_information.PNG": "d872c0449921a72d8892a1094d197b64",
"assets/assets/TEAS_pay_submit.PNG": "00ff4eb3cdb3fd466d8006c9095e853d",
"assets/assets/TEAS_search_manual.PNG": "1fe54ed19470abe8a98e239708d9a7a4",
"assets/assets/TEAS_start_application.PNG": "087874f3dbda3719775818c07cfbacf7",
"assets/assets/TEAS_validate.PNG": "39ce03a8587b5a56fc45fd4d0a3fd761",
"assets/assets/TESS.PNG": "57cc01bab49b585e56d13a97cd5686a9",
"assets/assets/TESS_Basic_Search1.PNG": "94ecf0a07a3c94397f2406fb2e8699eb",
"assets/assets/TESS_Basic_Search1Result.PNG": "79127e4a86afeba426e19d3463614366",
"assets/assets/TESS_Basic_Search2.PNG": "7d0d15a0f1c6e1142e0783b0a6e0339d",
"assets/assets/TESS_Basic_Search2Result.PNG": "595eb4489f24b865c19d145dbfe79710",
"assets/assets/TESS_Search.PNG": "1daa41a31823bbb21c822b54e0fd75e4",
"assets/assets/trademark-license_600x360.jpg": "689528549607b721853ba1e52cd76260",
"assets/assets/trademark_ID_manual.PNG": "3554c9c15245b4540a386d0911e80b93",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "436fab1ee829366730a50d2ea76a93d5",
"assets/NOTICES": "cdbccc65825032917241a6bf0df50528",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2622ac75d093545913354f8e9078b1dc",
"/": "2622ac75d093545913354f8e9078b1dc",
"main.dart.js": "b5f00eea646f5ecb9a027f935a8c0573",
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
