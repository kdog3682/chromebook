//const fs = require('fs') 
//const https = require('https')

import fs from 'fs'
import https from 'https'
import {matchWithRegex} from './dataParseUtils.mjs'

const input = 'https://jsfiddle.net/kdog3682/y41dtpqa/embedded/js'
let request = https.get(input, (result) => {
  
  
  result.on('data', chunk => {

    let regex = /<pre class=\"tCont active\">(.*)<\/pre>/s
    let answer = matchWithRegex(chunk.toString(), regex)
    console.log(answer)
  })
  result.on('end', () => {
    console.log('finished')
  })
})

request.on('error', (err) => {
  console.log('error: ' + err.message)
});
