
// Title: Parse and Scrape  Website Code

const log = (c) => console.log(c)
const fs = require('fs')
const http = require('https')



let item = 'peqevuq'
let url = `https://output.jsbin.com/${item}.js`

http.get(url, result => { // This is where the data writing happens.   
  let data = []
  result.on('data', chunk => {
    data.push(chunk)  
  });

  result.on('end', () => {
    
    log(data)
    
    fs.writeFile('test.txt', data, {flag: 'a'}, (err) => {
      if (err) throw err
    });
  })
})




/*
  Edit one line above, and one line below. Allow to jump after the bracket. Smart bracket indent. See the results in the other pain. 

*/
