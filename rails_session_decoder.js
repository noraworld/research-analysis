const rsd = require('rails-session-decoder');
const read = require('readline-sync');
const fs = require('fs');
const json = JSON.parse(fs.readFileSync('./rails_session_decoder.json', 'utf8'));

var cookie = read.question('Input your cookie: ');
if (!cookie) {
  cookie = json.cookie;
  console.log('Using ' + cookie + ' instead');
}

var key = read.question('Input your secret key: ');
if (!key) {
  key = json.key;
  console.log('Using ' + key + ' instead');
}

console.log('');

var decoder = rsd(key);

decoder.decodeCookie(cookie, (err, data) => {
  if (data) {
    console.log(data);
  }
  else {
    console.log(err);
  }
});
