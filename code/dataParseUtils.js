

function matchWithRegex(string, regex) {
  if (string.match(regex)) {
    return string.match(regex)[1]
  }
  return 'Match did not work.'
}

function boo() {
  return 'hi from boo'
}

const message = 'hi from message'

function foo() {
  return 'hi from foo'
}

module.exports = {
  matchWithRegex,
  foo,
  boo,
  message,
}
