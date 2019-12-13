const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello world!')
})


app.get('dog/', (req, res) => {
  res.send('Hello dog!')
})


app.get('./cat', (req, res) => {
  res.send('Hello cat!')
})


app.get('/pig', (req, res) => {
  res.send('Hello wopigrld!')
})

app.listen(port, () => console.log('Testing this out!'))

/*
 listen is for when the server recieves a request.
 get references the basic root of the website.
 It can reference anything. 
*/
