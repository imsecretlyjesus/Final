/**
 * Created by AntDy11 on 4/30/2016.
 */
var db = require('../data/db');
var express = require('express');
var router = express.Router();

/* GET plan page. */
router.get('/', function(req, res, next) {
    db.all('SELECT * FROM rotationList', function(err, rows) {
        if(err) {
            res.status(500).send(err.message).end();
            return;
        }
        res.render('rotationList', { title: 'Plan' , plan: rows});
    });
});

/* GET myRotationList*/
router.get('/rotationList', function(req, res, next) {
    db.all('SELECT * FROM rotationList', function(err, rows) {
        if(err) {
            res.status(500).send(err.message).end();
            return;
        }
        res.json(rows);
    });
});

module.exports = router;