const fs = require('fs')
const steggy = require('steggy')
 
const image = fs.readFileSync('./mario.png')
// Returns a string if encoding is provided, otherwise a buffer
const revealed = steggy.reveal(/* optional password */)(image /*, encoding */)
console.log("message:",revealed.toString())