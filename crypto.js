const crypto = require("crypto");

let pass = "abcdef1234";
let sha512 = crypto.createHash("sha512").update(pass).digest("base64");
console.log(sha512);
let pass2 = "abcdef123";
let sha5122 = crypto.createHash("sha512").update(pass2).digest("base64");
console.log(sha5122);

