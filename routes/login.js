/**
 * Created by AntDy11 on 5/10/2016.
 */
var express = require('express');
var router = express.Router();

var passport = require('passport');
var db = require('../data/db');
var bcrypt = require('bcryptjs');

/* GET login page. */
router.get('/', function (req, res, next) {
    console.log('Getting login page');
    res.render('login', {title: 'Login to workout'});
});

/* POST (attempt) login */
router.post('/', passport.authenticate('local',
    {
        failureRedirect: '/login'
    }),
    function(req, res) {
        res.redirect('/');
    }
);
/**
 * GET Registration page
 */
router.get('/register', function (req, res, next) {
    res.render('register', {title: 'Register to log your workout'});
});

/**
 * POST a new registration
 */
router.post('/register', function (req, res, next) {
    db.each('SELECT * FROM user', function (err, row) {
            console.log(row);
        },
        function (err) {
            if (err) {
                console.log("ERROR: " + err.message);
            }
            console.log('End of users dump.');
        });
    userDb.run("INSERT INTO user(username, passHash) VALUES(?,?)",
        [req.body.username, bcrypt.hashSync(req.body.password)],
        function (err) {
            if(err) { // problem
                console.log(err.message);
                res.redirect('/login/register');
            } else { // go to home page
                res.redirect('/');
            }
        }
    );
});

module.exports = router;