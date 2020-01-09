// const fs = require('fs')
// const {log} = require('./uc.js')
// const http = require('http')

// let path = './foo.js'
// let stream = fs.createReadStream(path)

// // fs.stat(path, (err, data) => {
// //   if (err) throw err
// //   log(data.size/1000)
// // })

// http.createServer((req, res) => {
//   stream.on('open', () => {
//     stream.pipe(res)
    
//   })
// }).listen(8080)

const fs = require('fs')
const {log} = require('./uc.js')
const http = require('http')

let path = './http.js'
let stream = fs.createReadStream(path)

// // fs.stat(path, (err, data) => {
// //   if (err) throw err
// //   log(data.size/1000)
// // })

// http.createServer((req, res) => {
//   stream.on('open', () => {
//     stream.pipe(res)
    
//   })
// }).listen(8000)


// async function handle() {
//   const result = await streamToString(stream)
//   log(result)
// }

// function streamToString(stream) {
//   const chunks = []
//   return new Promise((res, rej) => {
//     stream.on('data', chunk => chunks.push(chunk))
//     stream.on('error', rej)
//     stream.on('end', () => res(Buffer.concat(chunks).toString()))
//   })
// }


// function replace(text) {
//   return new Promise(res => {
//     let output = text.replace(/\/\*|\*\//g, 'replaced')
//     res(output)
//   })
// }

// streamToString(stream).then(res => replace(res)).then(res => log(res))


