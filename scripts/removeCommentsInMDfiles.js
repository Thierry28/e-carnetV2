// node /Users/thierrygaillot/Projets/USER_GUIDES/Ecm_guide/scripts/removeCommentsInMDfiles.js

// npm install replace-in-file

//https://www.regexpal.com/94246

//text = text.replace(/<!--[\s\S]*?-->|([^:]|^)\/\/.*$/gm, '');

const replace = require('replace-in-file');

const options = {

    files: [
      'md/*.mdwocomments'
    ],
  
    //Replacement to make (string or regex) 
    from: [/<!--[\s\S]*?-->|([^:]|^)\/\/.*$/gm, /\[Retour au sommaire\]\(\#TOC\)/g],
    //from: /a/gm,
    to: '',
    countMatches: true
  };

// replace(options)
// .then(changedFiles => {
//     console.log('Modified files:', JSON.stringify(changedFiles));
//     //console.log('Modified files:', changedFiles.join(', '));
// })
// .catch(error => {
//     console.error('Error occurred:', error);
// });

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




// //jshint esversion:8
// //jshint node:true
// const fs = require( 'fs' );
// const path = require( 'path' );

// const CHAPTERS = "md";


// // Make an async function that gets executed immediately
// (async ()=>{
//     // Our starting point
//     try {
//         // Get the files as an array
//         const files = await fs.promises.readdir(CHAPTERS );

//         // Loop them all with the new for...of
//         for( const file of files ) {
//             // Get the full paths
//             const fromPath = path.join( moveFrom, file );

//             fs.readFile(file, 'utf8', function (err,data) {
//                 if (err) {
//                   return console.log(err);
//                 }
//                 var result = data.replace(/<!--[\s\S]*?-->|([^:]|^)\/\/.*$/gm, '');
              
//                 fs.writeFile(someFile, result, 'utf8', function (err) {
//                    if (err) return console.log(err);
//                 });
//               });

//             // Log because we're crazy
//             console.log( "Moved '%s'->'%s'", fromPath, toPath );
//         } // End for...of
//     }
//     catch( e ) {
//         // Catch anything bad that happens
//         console.error( "We've thrown! Whoops!", e );
//     }

// })(); // Wrap in parenthesis and call now


// //requiring path and fs modules
// const path = require('path');
// const fs = require('fs');
// //joining path of directory 
// const directoryPath = path.join(__dirname, 'Documents');

// //passsing directoryPath and callback function
// fs.readdir(directoryPath, function (err, files) {
//     //handling error
//     if (err) {
//         return console.log('Unable to scan directory: ' + err);
//     } 
//     //listing all files using forEach
//     files.forEach(function (file) {
//         // Do whatever you want to do with the file
//         console.log(file); 
//     });
// });


// //jshint esversion:8
// //jshint node:true
// const fs = require( 'fs' );
// const path = require( 'path' );

// const moveFrom = "/tmp/movefrom";
// const moveTo = "/tmp/moveto";

// // Make an async function that gets executed immediately
// (async ()=>{
//     // Our starting point
//     try {
//         // Get the files as an array
//         const files = await fs.promises.readdir( moveFrom );

//         // Loop them all with the new for...of
//         for( const file of files ) {
//             // Get the full paths
//             const fromPath = path.join( moveFrom, file );
//             const toPath = path.join( moveTo, file );

//             // Stat the file to see if we have a file or dir
//             const stat = await fs.promises.stat( fromPath );

//             if( stat.isFile() )
//                 console.log( "'%s' is a file.", fromPath );
//             else if( stat.isDirectory() )
//                 console.log( "'%s' is a directory.", fromPath );

//             // Now move async
//             await fs.promises.rename( fromPath, toPath );

//             // Log because we're crazy
//             console.log( "Moved '%s'->'%s'", fromPath, toPath );
//         } // End for...of
//     }
//     catch( e ) {
//         // Catch anything bad that happens
//         console.error( "We've thrown! Whoops!", e );
//     }

// })(); // Wrap in parenthesis and call now


