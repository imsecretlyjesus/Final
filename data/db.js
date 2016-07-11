/**
 * Created by AntDy11 on 5/1/2016.
 */
//var express = require('express');
//var router = express.Router();
//var path = require('path');
var sqlite3 = require('sqlite3').verbose();
console.log(__filename);
var db = new sqlite3.Database(__dirname + '/workout.db', sqlite3.OPEN_READWRITE);

/* GET rotationList */
db.each('SELECT * FROM user', function (err, row) {
        console.log(row);
    },
    function (err) {
        if (err) {
            console.log("ERROR: " + err.message);
        }
        console.log('End of user dump.');
    });
module.exports = db;