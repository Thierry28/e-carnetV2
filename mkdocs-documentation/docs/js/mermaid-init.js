// Simple Mermaid initialization
window.addEventListener('load', function() {
    if (typeof mermaid !== 'undefined') {
        mermaid.initialize({ 
            startOnLoad: true,
            theme: 'default'
        });
        
        // Find all pre.mermaid elements and convert them to div.mermaid
        document.querySelectorAll('pre.mermaid').forEach(function(pre, index) {
            var div = document.createElement('div');
            div.className = 'mermaid';
            div.innerHTML = pre.innerHTML.replace(/<code>/g, '').replace(/<\/code>/g, '');
            pre.parentNode.replaceChild(div, pre);
        });
    }
});