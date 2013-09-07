if (process.env.VCAP_SERVICES) {
  var env = JSON.parse(process.env.VCAP_SERVICES);
  var url = env['mongolab-n/a'][0]['credentials']['uri'];
} else {
  var url = 'mongodb://127.0.0.1:27017/mydoctors';
}

Rating = function(params) {
  this.hospitalName = params.hospitalName;
  this.doctorName = params.doctorName;
  this.rating = params.rating;  
};

Rating.prototype.save = function(callback) {
  var $this = this;

  require('mongodb').connect(url, function(err, db) {
    db.collection('ratings').insert($this, function(err, docs) {
      db.close();
      callback();
    });
  });
};

Rating.index = function(callback) {
  require('mongodb').connect(url, function(err, db) {
    db.collection('ratings').find().toArray(function(err, results) {
      db.close();
      callback(err, results);
    });
  });
};
