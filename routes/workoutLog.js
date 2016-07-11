/**
 * Created by AntDy11 on 4/30/2016.
 */
var db = require('../data/db');
var express = require('express');
var router = express.Router();

/* GET without an id */
router.get('/', function(req, res, next) {
    res.render('workoutLog', { title: 'Workout Log', previousWorkout: '', warmup: '', exercise: '', burnout: '', rotation: ''})
});

/* GET first sets up an object to hold all our data */
router.get('/:id', function(req, res, next) {
    req.jadeData= { title: 'Workout Log'};
    req.session.currentWorkout = [];
    next();
});

/* GET last workout information */
router.get('/:id', function(req, res, next) {
    db.all("SELECT * FROM workoutLog WHERE SUBSTR(date, 0, 11) = " +
        "(SELECT MAX(SUBSTR(`date`, 0, 11))FROM workoutLog WHERE " +
        "rotationNum = ?) AND " +
        "rotationNum IN (0,?,99);", [req.params.id, req.params.id], function(err, rows) {
        if(err) {
            res.status(500).send(err.message).end();
            return;
        }
        req.jadeData.previousWorkout = rows;
        next();
    });
});

/* GET warmup information.*/
router.get('/:id', function(req, res, next) {
    db.all("SELECT * FROM exerciseList WHERE rotationNum = 0;", function(err, rows) {
        if(err) {
            res.status(500).send(err.message).end();
            return;
        }
        req.jadeData.warmup = rows;
        next();
    });
});

/* GET exercise information.*/
router.get('/:id', function(req, res, next) {
    db.all("SELECT * FROM exerciseList WHERE rotationNum = ?;", [req.params.id], function(err, rows) {
        if(err) {
            res.status(500).send(err.message).end();
            return;
        }
        req.jadeData.exercise = rows;
        next();
    });
});

/* GET burnout information.*/
router.get('/:id', function(req, res, next) {
    db.all("SELECT * FROM exerciseList WHERE rotationNum = 99;", function(err, rows) {
        if(err) {
            res.status(500).send(err.message).end();
            return;
        }
        req.jadeData.burnout = rows;
        next();
    });
});

/* GET rotation name */
router.get('/:id', function(req, res, next) {
    db.all("SELECT rotationName FROM rotationList " +
        "WHERE rotationNum = ?;", [req.params.id], function(err, rows) {
        if(err) {
            res.status(500).send(err.message).end();
            return;
        }
        req.jadeData.rotation = rows;
        next();
    })
});

/* GET finally renders the page */
router.get('/:id', function(req, res, next) {
    res.render('workoutLog', req.jadeData);
});

module.exports = router;
