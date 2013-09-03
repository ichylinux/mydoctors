
/*
 * GET home page.
 */

exports.index = function(req, res) {
  var URL = 'mongodb://127.0.0.1:27017/mydoctors';

  if (req.method == 'POST') {
    var client = require('mongodb').MongoClient;
    client.connect(URL, function(err, db) {
      var rating = {hospitalName: req.body.hospitalName, doctorName: req.body.doctorName, rating: req.body.rating};
      db.collection('ratings').insert(rating, function(err, docs) {
        db.close();
      });
    });
    
    res.redirect('/');

  } else {
    var client = require('mongodb').MongoClient;
    client.connect(URL, function(err, db) {
      db.collection('ratings').find().toArray(function(err, results) {
        res.render('index', {ratings: results});
        db.close();
      });
    });
    
  }
};