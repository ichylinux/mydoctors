require('../models/rating');

var index = function(req, res) {
  rating = new Rating(req.body);
  rating.save(function() {
    res.redirect('/');
  });
};

var create = function(req, res) {
  var client = require('mongodb').MongoClient;
  Rating.search(function(err, docs) {
    res.render('index', {ratings: docs});
  });
};

exports.index = function(req, res) {
  if (req.method == 'POST') {
    index(req, res);
  } else {
    create(req, res);
  }
};
