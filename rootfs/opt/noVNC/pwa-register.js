(() => {
    "use strict";

    if (!("serviceWorker" in navigator)) {
        return;
    }

    window.addEventListener("load", () => {
        navigator.serviceWorker.register("service-worker.js", { scope: "./" })
            .catch((error) => {
                console.warn("Thunderbird PWA service worker registration failed:", error);
            });
    });
})();
