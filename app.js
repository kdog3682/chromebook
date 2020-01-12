// hi
const {write, log} = require('./uc.js')
const fs = require('fs')
const path = require('path')


let cdir = process.cwd()

let cfile = __filename

let resolve = path.resolve(     )


function read(file) {
  return fs.readFileSync(file, 'utf8')
}

log(read('app.js').slice(3,5))
log(read('./app.js').slice(3,5))
log(read(process.cwd() + '/' + 'app.js').slice(3,5))
log(read(cfile).slice(3,5))


log(read(cfile).slice(3,5))
log(read(resolve).slice(3,5))


/*
MMMM

DDDD, MMMM D, YYYY




DDDD

Timestamp of Activity Log.

Can be done on the browser.



*/

You can have various of the same file open.
You acn down themaload as certain things.

Path.resolve