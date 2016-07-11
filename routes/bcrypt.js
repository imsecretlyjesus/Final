/**
 * Created by AntDy11 on 5/11/2016.
 */
//var express = require('express');
var router = require('express').Router();

var bcrypt = require('bcryptjs');
router.get('/hash/:password', function(req, res, next) {
    var hash = bcrypt.hashSync(req.params.password);
    res.send(hash);
});

router.get('/compare/:password', function(req, res, next) {
    var plaintext = req.params.password;
    // paste a hash here:
    var hash = '$2a$10$JjvYJJNzMDBQQjPxjrTZLejFx5y6PqjrF4YlvsGc8uGEuc72JcWoG';
    var valid = bcrypt.compareSync(plaintext, hash);
    if (valid) res.send(plaintext + " is the password");
    else res.send(plaintext + " doesn't match");
});

router.get('/decrypt', function(req, res, next) {
    "use strict";
    var password = "password";
    var hashes = [
        '$2a$10$JjvYJJNzMDBQQjPxjrTZLejFx5y6PqjrF4YlvsGc8uGEuc72JcWoG',
        '$2a$10$R1iUFMLYDpr4bLpLD5es0umkDvyGXAw2ZM8VjdwGHmldV5IKWQ6ji',
        '$2a$10$Vcpqn4yXZBSwdvRo9x3jaud4FyObxDMSl6YJrVXYRL9v6OeJJAmou',
        '$2a$10$iRyape4dr7ZiUIIB4TLczeURyivhLP.ociUZl7gYOaW//7Pa9g59m'
    ];
    var reply = 'No match';
    for (var i in hashes) {
        if (bcrypt.compareSync(password, hashes[i])) {
            reply = hashes[i] + ' is a hash of ' + password;
        }
    }
    res.send(reply);
});
module.exports = router;