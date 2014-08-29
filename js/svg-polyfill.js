document.body.addEventListener('error', function(event) {
    var img = event.target;

    if (img.src) {

        // Switch source to PNG fallback for browsers that don't support SVG.
        img.src = img.src.replace(/\.svg$/, '.png');
    }
}, true);

