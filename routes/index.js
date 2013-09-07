require('../models/rating');

exports.index = function(req, res) {
  
  if (req.method == 'POST') {
    rating = new Rating(req.body);
    rating.save(function() {
      res.redirect('/');
    });

  } else {
    var client = require('mongodb').MongoClient;
    Rating.search(function(err, docs) {
      res.render('index', {ratings: docs});
    });
  }
};