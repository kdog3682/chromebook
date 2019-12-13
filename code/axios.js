const axios = require('axios')
const url = 'https://jsfiddle.net/kdog3682/y41dtpqa/embedded/js'
const ural = 'https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY'


console.log(Math.random())
console.log('------------')
axios.get(url).then(response => {
  
  let regex = /<pre(.*)<\/pre>/s
  
  console.log(response.match(regex)[1])
}).catch(err => {
  console.log(err)
})


