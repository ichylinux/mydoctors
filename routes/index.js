require('../models/rating');

var create = function(req, res) {
  rating = new Rating(req.body);
  rating.save(function() {
    res.redirect('/');
  });
};

var index = function(req, res) {
  Rating.search(function(err, docs) {
    res.render('index', {title: 'My Doctors', ratings: docs});
  });
};

exports.index = function(req, res) {
  if (req.method == 'POST') {
    create(req, res);
  } else {
    index(req, res);
  }
};
