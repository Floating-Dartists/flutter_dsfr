'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"manifest.json": "0867c3e13649ac4d06fe34b7b3ddce08",
"index.html": "3c7efc5a2b776fcba18805858dd57364",
"/": "3c7efc5a2b776fcba18805858dd57364",
"assets/AssetManifest.bin": "746a5bfd5d39d12ef0b4de43f6334bb0",
"assets/fonts/MaterialIcons-Regular.otf": "bcb2ad8e4135b6163fa5426b46acf243",
"assets/AssetManifest.bin.json": "de1d14b2f75ba1fae5fb0fbc357490cb",
"assets/FontManifest.json": "f2c7d9c8a72f09766154a7b59f2570a2",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/NOTICES": "66661b8dbd5c7d556e5f2bed33c2268f",
"assets/AssetManifest.json": "3ee9d8ace04028458ba30a6346134131",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/flutter_dsfr/fonts/Spectral/Spectral-Light.ttf": "99e0862d30ba35987b1dc8d794b78301",
"assets/packages/flutter_dsfr/fonts/Spectral/Spectral-Italic.ttf": "4a505c4df410f6bbbc5f8d6bf18f3ab4",
"assets/packages/flutter_dsfr/fonts/Spectral/Spectral-Regular.ttf": "7b78ff83168097bf78ed628b3ed15d9c",
"assets/packages/flutter_dsfr/fonts/Spectral/Spectral-LightItalic.ttf": "312236df70ac9bff394b91594f6cb0af",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-RegularItalic.otf": "1935e8642d7aafcb48a1a3e12fbc1dbe",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-LightItalic.otf": "ab2f3f4efd64c6ebf79c10c64c9e5f6d",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-Thin.otf": "9b2043ca052c408fa68502150ac79338",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-MediumItalic.otf": "31c3c800a0b7c6f84aeee1fb2561d830",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-Regular.otf": "cb94c50f09878c19dbc7bce8ffb26719",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-ExtraBold.otf": "0c354ef53d1fdc3cdb1ed1ca00b63f8a",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-Bold.otf": "8777ccfe444bc286bc4ee5b94d65e46c",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-Light.otf": "5a7a39640d969f6d6aa4ed6adeba3138",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-ExtraBoldItalic.otf": "ea9bf8b3ab3f36b59f22741f49878a68",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-BoldItalic.otf": "eeaa6e3c71a950cbaaaf323e3a19fd6b",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-Medium.otf": "712af6ae4bb19939f2fb3af0d8bd630b",
"assets/packages/flutter_dsfr/fonts/Marianne/Marianne-ThinItalic.otf": "959446ba7126f97e2fdc5904339c944f",
"assets/packages/flutter_dsfr/icons/remixicon.ttf": "ef28be86babd470b9c88e584c3820c96",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "5b57defd3f664349858cedbc6f86f4ae",
"version.json": "ff966ab969ba381b900e61629bfb9789",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea"};
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
