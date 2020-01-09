/*

Q: Why should asynchronous code be used?


Q: Am I interpreting this correctly? ANd also, is writestream more expensive than appendFile since it has to go through the act of creating a 'Writable' stream object?
fs.createWriteStream(path, [options]) #
Returns a new WriteStream object (See Writable Stream).

options is an object with the following defaults:

{ flags: 'w',
  encoding: null,
  mode: 0666 }
options may also include a start option to allow writing data at some position past the beginning of the file. Modifying a file rather than replacing it may require a flags mode of r+ rather than the default mode w.
//end

Q: WHen dealng with fs read / write, should the path and file be 2 separate entities? Should relative paths or absolute paths be used when doing things with nodejs? and file system? //qend

config-parse:
You cannot be too leninent with the search strategy because

config-targetwords:
Instead => gets shunted to rules me thinks.

Config-variations:
The first version is to use tag:\n\n\n\n.
The second version is to use tag: stuff.

Q: Is there anything in your code experience that you initially disliked and completed? // For me it's regex.


Q: Is string.exec(regexp) completely unnecessary? //My current feeling is that anything you do with exec could be much more efficiently done with match or matchAll. I feel it is similar to apply vs. call where if you want to use apply, you could just as easily use call, but give it an argument with ...args.

  THe purpose of this would be to

Q: You have a function that formats a utf8 text file. What would you name the parameter?

// For example: function ReplaceComments(parameter) { //code } ... What would you name the parameter? Thus far across my code, I use 's', 'str', 'string', 'file', 'filename', 'path' ... I am having a hard time deciding on a consistent parameter name to use.

!// Q: A LearnJavascript Question Posting App? There is a time to be sarcastic and this is not it.

Instead of using '!' or 'Nope!' use textcal so that you can be as explicit as possible.

config-parseStrategy:
get the partitions.
get the sentences.
shunt into config
shunt into other?

Q: Does anyone  use the Chrome caret editor? // Have some hard time with it.qend
Do you write throw or continue when moving past an error in catch-try? wihout stopping the current program?
 How do you choose
 
 Q: How does require work?
  
  "As long as the user experience is not affected, load it up as much as you want." I don't necessarily agree with this.
  #Unsorted
  // The regex should not be global because it should hit one match. It should not keep going.
  Basically, my phenotype seems to not proliferate. This is a story that I tell myself.
  I have great role models for how to work hard. It took a long time, but the algorithms of my parents have truly sunk into me with a 10 year delay. I am relatively certain that everything I am teaching to the kids
  Should I track statistics for how many lines are actually getting paired?
  The goal of teaching is to create within the human element, an internal generator of energy.
What is an interface? You see it pretty often
Config: No parsing for dated notes. They are kept as is.
Config: Textcal will be marked by “Nope!” Usage: Everything before the “Nope!” is to be parsed as the quoted text. Everything after the “Nope!” is my commentary. The entire thing is one individual line.

Config: Hashtag should be used as the title.
Config: I should make a kdogrc and perhaps .kdog files. (lol) (.kdogrc wasn't allowed on crostini)

Ultimate Defense Challenge: 1. Box Style Shake Town with Proper Form for 5 minutes. 2. 1 vs. 1 defense against a middle schooler. 3 tries. Don't let them score 2 times. 3. 1 vs. 1 defense against Mr. Lee. 3 tries. Don't let him score 2 time. Nope! It invokes your name. You should not be engaged in the process. It is too difficult. It has elements out of their control. (Playing against a middle schooler.

Common Javascript Errors: Random text somewhere in the file.
Common Javascript Errors: Missing a parentheses.
Common Javascript Errors: Missing a return
  
  config-vs:
  test line is [arr of words] shunt to arr[1]
  count the line
  
  config-parser:
  If the tag name is shared, nest it as an internal object.
  It will need to be done as a stream.
  
  config-efficiency:
  
  config-notetaking:
  suddenly I am writing a lot better by using the prefix of config.
  
  
  config-sources:
  i guess everything comes from
  
  
  
  Config-targetwords:
  strength - goal, mission, journey, belief, confidence, win, lose, power, strength, courage, perseverance, effort, discipline, victory, defeat, suffering, human
  Notsure - element
  Story - story
  
  Config:
  Create pre-determined containers for everything.
  On save, the item is shunted to 'examples' folder or 'questions' folder.
  On save, unrelated notes will not be included in the output item.
  On save, there will be variable declarations for the name of the file as well as additional modifers that might be included.
    None of this should happen in the terminal.
  Have an output sheet that speaks to the statistics.
    Number of completed files.
    Number of incomplete files.
  Have a way to access tangential files, or at least note when they appear. (With a timestamp)
  If save is activated, the file gets saved to the folder.
    Run this at the bottom of the file.
    When you're absolutely ready, click save. And the file gets saved.
  
  Config-Todo:
  Write a mapping function for "if a line contains" to transform it into valid regexp javascript.
  
  Config-lines:
  If a line contains 'story' =>
  If a line contains '?'
  If a line starts with 'I'
  If a line contains
  If a line contains
  If a line contains
  After the lines get parsed out, it's basically not that important to get the rest, because the rest is probably just a sentence like this.

*/

const { fs, path, axios, n, nn, t, tt, validSingletonSentenceRE, isSentenceRE, partitionsRE, validPartitionsRE, linebreak, ONEDAY, TODAY, MONTHS, getDate, directories, generateUtilsDotJSApp, cleanup, parseChunks, parseSentences, toNumber, toLetter, shuffle, appendObj, tally, matchTextLinesByInputQuery, inputIsArrayOrRest, isArray, words, read, write, append, remove, size, createDate, isFile, readP, writeP, prependText, tallyFunctions, tallyJSAdvanced, ordinal, allUnique, consolidate, getFilesWithUserInput, getFiles, constructModuleExports, removeComments, prettyHTML, aggregateSentences, wordCount, gp, finalConcat } = require('./uc.js')

const prettier = require('prettier');
const chalk = require('chalk')
const options = {parser: 'babel', singleQuote: false}


// Q: How would you turn console.log into log? might there be a better way of doing this?
const log = {
  
  green(input) {console.log(chalk.green(input))},
  red(input) {console.log(chalk.red(input))},
  blue(input) {console.log(chalk.blue(input))},
  yellow(input) {console.log(chalk.yellow(input))},

  greenbold(input) {console.log(chalk.green.bold(input))},
  redbold(input) {console.log(chalk.red.bold(input))},
  bluebold(input) {console.log(chalk.blue.bold(input))},
  yellowbold(input) {console.log(chalk.yellow.bold(input))},
}
/*
Currently, when log is called, it has to be called as log.green('hi') or log.red('sup'). You can't just call log('heyhey.') Would there be a way to incorporate a default log into this log object such that this latter functionality would work? //qend
*/


// Q: How does this function work?
function prepareMatches(iterator) {
let obj = {};
for (const match of iterator) {
genTextObject('hi');
  }
  }
//qend

// Q: How does this work?
// constructor(args, options) {
//   super(args, options);

//   this.log(chalk.green("Yeoman Electrode ComponentAdd generator version"), pkg.version);
//   this.log("Loaded from", chalk.magenta(path.dirname(require.resolve("../package.json"))));

//   this.packageName = this.options.packageName || "demo-app";
//   this.developerName = this.options.developerName || "demoDeveloper";
//   this.className = this.options.className;
// }
//qend
 

 

//Q: How would you trim comments at the start of a line?
function replaceStartingComments(s) {
  return s.replace(/\n\/\//g, '\n') //don't trim this comment
  //don't trim this comment
// do trim this comment
}
// boopqend
 

function doit(file, fileoutputname, outputpath) { // 30 minutes debugging this due to an extra \t
  const text = read(file);
  const contents = []
  let count = 0
  // const results = text.matchAll(/Q\:\s(.*\?)\s*([^]*?)\s*qendz/g); // Finds a question.
  // const results = text.matchAll(/Q\:\s(.*\?)\s*([^]*?)\s*\/\/([^]*?)qend/g); // Finds a question.
    // const results = text.matchAll(/Q\:\s(.*\?)\s*([^]*?)\s*\/\*([^]*?)qend\s*\*\//g) //works
    // Uses /* */ for the final partition.
    // Without the greedy operator, it keeps going and going, and then once it goes past, it will backtrack. With the greedy operator, it will stop at the first occurence.
       const results = text.matchAll(/Q\:\s(.*\?)\s*([^]*?)\s*\/\/\s*(.*?)qend/g)
  log.redbold('START')
  for (const match of results) { // Use const so it is explicit that the el is not changing.
    let [_, question, code, comments] = match;
    log.yellow(question)
    log.green(comments)
    
    try {
      code = (prettier.format(replaceStartingComments(code), options))
    }
    catch (e){ //
      log.red('Error in processing; ' + question)
      continue;
    }
    contents.push({question, styleForReddit(code), comments})
    log.blue('Contents pushed ' + (++count))
    log.red('-----------------')
  
  }
  log.redbold('FINISH')
  
  append(fileoutputname, contents, outputpath)
}


function styleForReddit(s) { //
  return s.replace(/\n\n/g, '\n\n&nbsp;\n\n')
}

function parsePartitions(file) {
  return read(file).match(/.*?:\n[^]+?\n\n)
}

let fileinputname = 'prettier.js'
let fileoutputname = 'js-questions.json'
let outputpath = './examples'


// Q: Should an if-else be used here instead of 2 if statements? Should readFile and readFolder be combined together?
function recursiveRead(input) {
  if (isFile(input)) {
    return read(input) // as file
  }
  
  if (isDirectory(input)) {
    for (const item of read(input) {
      let results = recursiveRead(item)
    }
  }
  // When the folder is being read, it's going to generate a different path.
}


//end


// doit(fileinputname, fileoutputname, outputpath)



/*
  Title: RegExp-Prettier Question Formatter
  Type:
  
*/
