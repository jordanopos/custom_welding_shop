'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "c233f5ff3b2c4afcccbaf2e883cb8f52",
"assets/assets/fonts/TitilliumWeb-Regular.ttf": "ed1d014bf2b8b72f27d6af65c69f710a",
"assets/assets/images/Custom%2520way%2520fabrications%2520wordmark.png": "5dd219c9c0b1b567f340a56d48857049",
"assets/assets/images/CWF-logo.png": "4bcc65fb7c3cd97e4a631c19713f8b4d",
"assets/assets/images/Works%2520%2520_-11.jpg": "a72a035a4d8b7dd0a1519f0b12e69578",
"assets/assets/images/Works%2520%2520_-15.jpg": "2f273079272ac4efbcc871bc05be7a8f",
"assets/assets/images/Works%2520%2520_-2.png": "738943cf40355defa1d56d3ecceb5047",
"assets/assets/images/Works%2520%2520_-26.jpg": "47ccf70f054551ca65f0acba98fd80dd",
"assets/assets/images/Works%2520%2520_-28.jpg": "a67598eb0df8b2ae545f404f2815c3b8",
"assets/assets/images/Works%2520%2520_-29.jpg": "2a2c7a766c3dd5d92003d481c09438a1",
"assets/assets/images/Works%2520%2520_-30.jpg": "55252b2f9dcc8bddf10a89fee4493b67",
"assets/assets/images/Works%2520%2520_-31.jpg": "8b57a59b97b2a3c20af92f96094945f0",
"assets/assets/images/Works%2520%2520_-32.jpg": "9c47e50b9e77e590df1aab679d2b70fb",
"assets/assets/images/Works%2520%2520_-33.jpg": "ed3870c9ef525b7a084b7383cff974fe",
"assets/assets/images/Works%2520%2520_-34.jpg": "081711d995ce0ea77f182cd57e17f10b",
"assets/assets/images/Works%2520%2520_-35.jpg": "a51b9f7f81ff9dfefd308b0480202608",
"assets/assets/images/Works%2520%2520_-36.jpg": "d0cbde67234f6c19a92fc8ec8e8edf16",
"assets/assets/images/Works%2520%2520_-37.jpg": "89443c2975ed7f7324f4051a2ab0af7b",
"assets/assets/images/Works%2520%2520_-38.jpg": "882cc3a7f711889461043152c34f4a96",
"assets/assets/images/Works%2520%2520_-39.jpg": "d416f1e6012a2bb649ec4bf94c496c3a",
"assets/assets/images/Works%2520%2520_-4.jpg": "0ad0047bcc9c6f84b85a74b62c953072",
"assets/assets/images/Works%2520%2520_-40.jpg": "7e136a2db4b936bf6ea16c6e24bdcafe",
"assets/assets/images/Works%2520%2520_-41.jpg": "53e3ffa922dbc03a26c91e1a8fa542b3",
"assets/assets/images/Works%2520%2520_-44.jpg": "925d7997f88c0235e5cebe1c7b57750c",
"assets/assets/images/Works%2520%2520_-46.jpg": "24d570ba57aab853dd609e74feed6465",
"assets/FontManifest.json": "947c90ff932a761f5347ae7bf0770c6f",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "cb7917c608139e60ad9221b2a62ea17d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/icofont_flutter/lib/fonts/icofont.ttf": "22304f677719908079b166a1280db76e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "73da7935b60ba806bb4aa28977ef8212",
"/": "73da7935b60ba806bb4aa28977ef8212",
"main.dart.js": "3470752aba01feca929214a8f052a6fd",
"manifest.json": "fee27154740fdb74491750925ee18bce",
"version.json": "e528fc5742e626b02a518db82b35444a"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
