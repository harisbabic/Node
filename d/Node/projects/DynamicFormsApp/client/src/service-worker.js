self.addEventListener('fetch', event => {});


// const CACHE_NAME = "my-app-cache-v1";
// const urlsToCache = [
//   "/",
//   "/index.html",
//   "/styles.css",
//   "/main.js",
//   "/logo.png",
// ];

// // Install a service worker
// self.addEventListener("install", event => {
//   event.waitUntil(
//     caches.open(CACHE_NAME)
//       .then(cache => {
//         console.log("Opened cache");
//         return cache.addAll(urlsToCache);
//       })
//   );
// });

// // Cache and return requests
// self.addEventListener("fetch", event => {
//   event.respondWith(
//     caches.match(event.request)
//       .then(response => {
//         return response || fetch(event.request);
//       })
//   );
// });

// // Update a service worker
// self.addEventListener("activate", event => {
//   const cacheWhitelist = ["my-app-cache-v1"];
//   event.waitUntil(
//     caches.keys().then(cacheNames => {
//       return Promise.all(
//         cacheNames.map(cacheName => {
//           if (cacheWhitelist.indexOf(cacheName) === -1) {
//             return caches.delete(cacheName);
//           }
//         })
//       );
//     })
//   );
// });
