const fs = require('fs')
const steggy = require('steggy')
 
const original = fs.readFileSync('./mario.png') // buffer
const message = 'Everything appears to be working Dave!' // string or buffer

// encoding should be supplied if message is provided as a string in non-default encoding
const concealed = steggy.conceal()(original, message)
fs.writeFileSync('./mario.png', concealed)

fs.writeFile("../../../../desktop/out.png", concealed, 'base64', function(err) {
  if(err) console.log(err);
  else console.log("fin!");
});


console.log("png has been encrypted...");