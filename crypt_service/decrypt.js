const fs = require('fs')
const steggy = require('steggy')
 

// ./mario.png
// ../../../../desktop/outGRRR.png

const image = fs.readFileSync('../../../../desktop/outGRRRRR.png')
// Returns a string if encoding is provided, otherwise a buffer
const revealed = steggy.reveal(/* optional password */)(image /*, encoding */)
console.log("message:",revealed.toString())