// replace head>
// by
// head>

var tag = "<head>";
tag+="<!-- Global site tag (gtag.js) - Google Analytics -->";
tag+="<script async src='https://www.googletagmanager.com/gtag/js?id=G-1DH35SCWYB'></script>";
tag+="<script>";
tag+="  window.dataLayer = window.dataLayer || [];";
tag+=" function gtag(){dataLayer.push(arguments);}";
tag+=" gtag('js', new Date());";
tag+="  gtag('config', 'G-1DH35SCWYB');";
tag+="</script>";


// node /Users/thierrygaillot/Projets/USER_GUIDES/Ecm_guide/scripts/ga/insertGAtag.js

// npm install replace-in-file

//https://www.regexpal.com/94246

//text = text.replace(/<!--[\s\S]*?-->|([^:]|^)\/\/.*$/gm, '');

const replace = require('replace-in-file');

const options = {

    files: [
      'build/**/*.html'
    ],
  
    //Replacement to make (string or regex) 
    from: [/<head>/g],
    //from: /a/gm,
    to: tag,
    countMatches: true
  };

(async () => {
    try {
        const results = await replace(options)
        console.log('Replacement results:', JSON.stringify(results));

        const changedFiles = results
        .filter(result => result.hasChanged)
        .map(result => result.file);
        console.log('Replacement results:', JSON.stringify(changedFiles));
      }
      catch (error) {
        console.error('Error occurred:', error);
      }
})();

