var mysql = require('mysql')

var conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'gogi',
})

conn.connect(function(err, conn) {
    if(err) {
        console.log("fail")}
        else {
            console.log("seccess")
        }
})
module.exports = conn