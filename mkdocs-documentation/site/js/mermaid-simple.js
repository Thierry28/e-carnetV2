// Mermaid initialization for Material theme
document.addEventListener('DOMContentLoaded', function() {
    // Configure Mermaid
    mermaid.initialize({
        startOnLoad: false,
        theme: 'default',
        securityLevel: 'loose',
        themeVariables: {
            primaryColor: '#4051b5'
        }
    });
    
    // Find all <pre class="mermaid"> elements and convert them to <div class="mermaid">
    const mermaidPres = document.querySelectorAll('pre.mermaid');
    mermaidPres.forEach((pre, index) => {
        // Get the code content from inside the <code> tag
        const codeElement = pre.querySelector('code');
        const graphDefinition = codeElement ? codeElement.textContent : pre.textContent;
        
        // Create a new div element
        const div = document.createElement('div');
        div.className = 'mermaid';
        div.id = 'mermaid-' + index;
        div.textContent = graphDefinition;
        
        // Replace the pre element with the div
        pre.parentNode.replaceChild(div, pre);
    });
    
    // Now render all mermaid diagrams
    mermaid.init();
});