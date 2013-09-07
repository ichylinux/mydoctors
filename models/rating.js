// DB接続情報
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

Rating.VERY_GOOD = 5;
Rating.GOOD      = 4;
Rating.NORMAL    = 3;
Rating.BAD       = 2;
Rating.VERY_BAD  = 1;

RATINGS = [
  [Rating.VERY_GOOD, 'とてもよい'],
  [Rating.GOOD     , 'なかなかよい'],
  [Rating.NORMAL   , 'ふつう'],
  [Rating.BAD      , 'なんかだめ'],
  [Rating.VERY_BAD , 'だめ']
];

Rating.search = function(callback) {
  require('mongodb').connect(url, function(err, db) {
    db.collection('ratings').find().toArray(function(err, results) {
      db.close();
      callback(err, results);
    });
  });
};

Rating.rating_name = function(rating) {
  for (var i = 0; i < RATINGS.length; i ++) {
    if (rating == RATINGS[i][0]) {
      return RATINGS[i][1];
    }
  }

  return null;
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
