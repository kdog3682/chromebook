/*
 * 
 * The string is 0011*
 * If k = 2 ... we get 00, 11, and 0011 as the substrings.
 * If k = 1 ... we get 0, 0, 1, 1 as the substrings.
 * s:[0,1], s:[2,3], s:[0,3] are the answers.
 */

let string = '0011'
let k = 2

let z = string.split('')

let uniques = [...new Set(z)]

let regex = (arg) =>  new RegExp(`${arg.repeat(k)}`)


for (item of uniques) {
  console.log(string.match(regex(item)))
}
/*;'
for ( let i = 0; i < z.length - k; i++) {
  console.log(z[0], z[1])
}
*/


