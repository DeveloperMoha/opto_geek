'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "a1bb5efa92e11eeed5b21428c1d2e294",
"assets/assets/fonts/Quicksand-Bold.ttf": "517b4a8fa3577cc7066e9bcfebe4beff",
"assets/assets/fonts/Quicksand-Light.ttf": "34d0d3091e4f3de26ff0f2c4a4f6bfb7",
"assets/assets/fonts/Teko-Bold.ttf": "a57cd2d00fa838bd32992b064ec0b889",
"assets/assets/fonts/Teko-Light.ttf": "139fbe872b1e2f151a33df55fbc0646b",
"assets/assets/images/accuritytests/alphapet/a.svg": "54152b8495757797b508326159676c0e",
"assets/assets/images/accuritytests/alphapet/b.svg": "5a6e41923fdf7e11badbe274e04e282e",
"assets/assets/images/accuritytests/alphapet/c.svg": "ddf9c9b31d8b3d7d5a756602756d56c1",
"assets/assets/images/accuritytests/alphapet/d.svg": "adcf25264b29ac808f37c0a80cac5ef6",
"assets/assets/images/accuritytests/alphapet/e.svg": "d92173ee4521a932ae669552f7a49d58",
"assets/assets/images/accuritytests/alphapet/f.svg": "5edbf237a7c510c05f5ec8963e63f6fb",
"assets/assets/images/accuritytests/alphapet/g.svg": "1ec762c74fd02b94d4c3bba79f94f3f3",
"assets/assets/images/accuritytests/alphapet/h.svg": "d4d72968116f116abef4b38d4ffa1f86",
"assets/assets/images/accuritytests/alphapet/i.svg": "1c213ec3616035fc1a4fc91c878303c3",
"assets/assets/images/accuritytests/alphapet/j.svg": "5b3f0c587f9174934b59bb4e282980ed",
"assets/assets/images/accuritytests/alphapet/k.svg": "d28f311c9995f7b64b90d5bac0aa0e00",
"assets/assets/images/accuritytests/alphapet/l.svg": "35af5b9507c99269854917e5f3d9889b",
"assets/assets/images/accuritytests/alphapet/m.svg": "c2084fb7c33644ae273b8f69d5879fec",
"assets/assets/images/accuritytests/alphapet/n.svg": "8499bb152b67b284f7c2f00dede947a5",
"assets/assets/images/accuritytests/alphapet/o.svg": "c59078afdfa4937840b0b4caf742fee7",
"assets/assets/images/accuritytests/alphapet/p.svg": "28e7f0183c41dbfc0ed56dd49093994a",
"assets/assets/images/accuritytests/alphapet/q.svg": "7f44bd28b72c12b45b8ee61c4eec1926",
"assets/assets/images/accuritytests/alphapet/r.svg": "7b2a2f2f5c470643f180af3b4a550cb9",
"assets/assets/images/accuritytests/alphapet/s.svg": "21d450a188042b963770257c484a50fa",
"assets/assets/images/accuritytests/alphapet/t.svg": "30c2d109e9af87200cf6724ed18a7142",
"assets/assets/images/accuritytests/alphapet/u.svg": "99389888415ce9d985f7148be4b4418d",
"assets/assets/images/accuritytests/alphapet/v.svg": "383207ba074a574f779e673cb0f358b1",
"assets/assets/images/accuritytests/alphapet/w.svg": "5ff77be5f667f9819bad6cad60fe180a",
"assets/assets/images/accuritytests/alphapet/x.svg": "ef5a4fa705c31e6252f1e1093321b2f1",
"assets/assets/images/accuritytests/alphapet/y.svg": "bcef669bc530cb57dda89548429d8cfc",
"assets/assets/images/accuritytests/alphapet/z.svg": "9d7b4204d32f9537c0a8f1be60c99908",
"assets/assets/images/accuritytests/c_alphabet_icon.svg": "ddf9c9b31d8b3d7d5a756602756d56c1",
"assets/assets/images/accuritytests/e_alphabet_icon.svg": "d92173ee4521a932ae669552f7a49d58",
"assets/assets/images/accuritytests/lea/brain.svg": "d27af45e56fc5bef0cb2de9de37e6cd0",
"assets/assets/images/accuritytests/lea/bycicle.svg": "325a7db117cda1839f71ceec037327d8",
"assets/assets/images/accuritytests/lea/car.svg": "be4544261a2602ceaca84cf387439ea7",
"assets/assets/images/accuritytests/lea/cat1.svg": "9ffdc51194b1c25fa64bac4d6b1977e4",
"assets/assets/images/accuritytests/lea/cheerful.svg": "90a6f590af0a5e67117b187c0fae5f30",
"assets/assets/images/accuritytests/lea/cubic.svg": "4668d7722a19c2b2e0427a713148ff20",
"assets/assets/images/accuritytests/lea/diamond.svg": "be81a39aed183042881a18cabb02337d",
"assets/assets/images/accuritytests/lea/foot.svg": "eff6be6df4ba33a32e7856f9d7c8c6f3",
"assets/assets/images/accuritytests/lea/gun.svg": "5812f80435baeeccd77f38ab2ba41b85",
"assets/assets/images/accuritytests/lea/heart.svg": "941912ee73b3bb8577d0856d522c8fc9",
"assets/assets/images/accuritytests/lea/home.svg": "64d2a0156cdd752bb491122082366dc2",
"assets/assets/images/accuritytests/lea/motorcycle.svg": "d5ea7a3097b4ff9d05a0bd4fd55287b7",
"assets/assets/images/accuritytests/lea/plane.svg": "90a8f1a19eb790491a9a1b4a7d72c91c",
"assets/assets/images/accuritytests/lea/rectangle.svg": "d3645178bbc80ae0e4c2d2776899fb91",
"assets/assets/images/accuritytests/lea/sexi.svg": "11fbbe861c0ca9d2d561d36511f26118",
"assets/assets/images/accuritytests/lea/skelton.svg": "211e593a21bd1c8b4dcdd2a97501b717",
"assets/assets/images/accuritytests/lea/solid_circle.svg": "130e821277b50f8b462f6dc48162f963",
"assets/assets/images/accuritytests/lea/square.svg": "2acda5b78673db3ad6a4ed24b6c25c0c",
"assets/assets/images/accuritytests/lea/star.svg": "eaab9f18fe63d49627b6cc44ac316241",
"assets/assets/images/accuritytests/lea/sun.svg": "86aa95c989b46799ff7b5de52fd4f1df",
"assets/assets/images/accuritytests/lea/taxi.svg": "4c1fa92aa460664193a7cdc20f4dccae",
"assets/assets/images/accuritytests/lea/triangle.svg": "b28fd92703b908cce962b41623a13d60",
"assets/assets/images/accuritytests/lea/weapon.svg": "5eb8c7fb1405b0e46181a9766fbe02f7",
"assets/assets/images/accuritytests/lea/wifi.svg": "71d6726ac006153d45bede53668661f3",
"assets/assets/images/accuritytests/lea/world.svg": "80fccfbcb828ea50af7650845d1bc7da",
"assets/assets/images/accuritytests/lea/yes.svg": "93ea83ad8368c2e1113bcc05d6f5d072",
"assets/assets/images/accuritytests/numeral/eight.svg": "6cafc63187cc22a0a451c53db23b0f96",
"assets/assets/images/accuritytests/numeral/five.svg": "d935cb1c2f01df19569b87e0ffb40185",
"assets/assets/images/accuritytests/numeral/four.svg": "2ba6ce4531f1ab638d2aaaad94889492",
"assets/assets/images/accuritytests/numeral/nine.svg": "d53d4b6db310f867c37002a50c14693c",
"assets/assets/images/accuritytests/numeral/one.svg": "5aa73ec759b026597134831700ee91c0",
"assets/assets/images/accuritytests/numeral/seven.svg": "fb505140a5cc6338e680eca66620e956",
"assets/assets/images/accuritytests/numeral/six.svg": "44bc2370db5665ac08005773087974b9",
"assets/assets/images/accuritytests/numeral/three.svg": "18a0bedcd728c04dba055f3e5e256863",
"assets/assets/images/accuritytests/numeral/two.svg": "0d63a266b2c35490d00d97271e0f5dcf",
"assets/assets/images/accuritytests/numeral/zero.svg": "56f9134cd4969aad8238058c5708647e",
"assets/assets/images/accuritytests/pediatric/bat.svg": "b3e1503d316bdcd21bd8f34f1840ee40",
"assets/assets/images/accuritytests/pediatric/bird.svg": "1d96caed21cc3d31c709b68dfdb39db0",
"assets/assets/images/accuritytests/pediatric/butterfly.svg": "02f9057ec8b90336719ebc54a161382b",
"assets/assets/images/accuritytests/pediatric/cow.svg": "d4b92435037f1e222bcd30493be94018",
"assets/assets/images/accuritytests/pediatric/dog.svg": "e8fbbdc5d03793988bf03742d2600433",
"assets/assets/images/accuritytests/pediatric/dolphin.svg": "ae8836892f807f533418b4ee46ade70a",
"assets/assets/images/accuritytests/pediatric/duck.svg": "da619fda2b3df5c6b6eb2c5562d75cbc",
"assets/assets/images/accuritytests/pediatric/elephant.svg": "11de567e2bfc55aa0cd95ec8c6cd2749",
"assets/assets/images/accuritytests/pediatric/fish.svg": "5aaecea2f6102145ae9489751989bccc",
"assets/assets/images/accuritytests/pediatric/frog.svg": "a580b058240269583eda83296da91da4",
"assets/assets/images/accuritytests/pediatric/hen.svg": "f3f83a250f4f5984b8c798c244a33ccc",
"assets/assets/images/accuritytests/pediatric/horse.svg": "43078ac35160a84e6f5773e1c8ba5c4b",
"assets/assets/images/accuritytests/pediatric/lion.svg": "ca443fc39c9d6c17f6ba94dceab8a961",
"assets/assets/images/accuritytests/pediatric/panda.svg": "9cb795978ecc1fbde1d8600e2d0e5c08",
"assets/assets/images/accuritytests/pediatric/pig.svg": "b24e0f593d5b5e8a778b0e60b81be0df",
"assets/assets/images/accuritytests/pediatric/plant.svg": "e704f98a7be025282b4115f2e03d02c8",
"assets/assets/images/accuritytests/pediatric/spider.svg": "a69b52a2531ad56e5be448fbab348020",
"assets/assets/images/accuritytests/pediatric/tiger.svg": "55a93b2d02f4aaa8e1632dac22bca3bf",
"assets/assets/images/accuritytests/pediatric/tree.svg": "27bd699a83c2c4f9c946c5c05b555293",
"assets/assets/images/accuritytests/pediatric/zebra.svg": "561fb0eafa5df301341204a7feacd5ee",
"assets/assets/images/logo.png": "82f5e99c6a32a9e82d9105da840c6095",
"assets/assets/images/splash0.jfif": "007de94804f890abb7d061114063ad76",
"assets/assets/images/splash1.jfif": "5bae255d514cf6c80f04273b0fd66804",
"assets/assets/images/splash_1.jpg": "d8df23812801498681ab41e23d073be1",
"assets/assets/images/splash_2.jpg": "8d2d1af0f80d613a4c432dfe19c38a81",
"assets/assets/images/splash_3.jpg": "5cf55c5937ff55e831892350e3a7242d",
"assets/FontManifest.json": "d57235892c457ef25b23ffdc5fb594cc",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "cf18a00554526ba1ad5de576b5302b90",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "e633625a2dacc3ca3b561a53c2cbba8c",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "393854da7f139b74247547716885504e",
"/": "393854da7f139b74247547716885504e",
"main.dart.js": "5950466b42afb2da339c9c134772b8ec",
"manifest.json": "1e90e694bbd17cca136716c60d17dcd0",
"version.json": "f070e12a1dead5df554cc6b253796c50"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
