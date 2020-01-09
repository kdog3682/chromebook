const path = require('path')
const {write, log} = require('./uc.js')

let fileString = `const {write, log} = require('./uc.js')













\/\*
  Title: Generate New Caret File
  Type: App
  Shunt: Yes

\*\/



`

let thisfile = read('app.js')

write('app.js', thisfile, './apps')
write(process.argv[2], fileString)















/*
  Title: Generate New Caret File
  Type: App
  Descrition: the fileString will be written into process.argv named file.
  Shunt current file to new folder: Yes

*/