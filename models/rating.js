var URL = 'mongodb://127.0.0.1:27017/mydoctors';

Rating = function(params) {
  this.hospitalName = params.hospitalName;
  this.doctorName = params.doctorName;
  this.rating = params.rating;  
};

Rating.prototype.save = function(callback) {
  var $this = this;
  var client = require('mongodb').MongoClient;

  client.connect(URL, function(err, db) {
    db.collection('ratings').insert($this, function(err, docs) {
      db.close();
      callback();
    });
  });
};

Rating.index = function(callback) {
  var client = require('mongodb').MongoClient;
  client.connect(URL, function(err, db) {
    db.collection('ratings').find().toArray(function(err, results) {
      db.close();
      callback(err, results);
    });
  });
};
