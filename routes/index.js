
/*
 * GET home page.
 */

exports.index = function(req, res) {
  if (req.method == 'POST') {
    res.render('index', { title: 'My Doctors' });
  } else {
    res.render('index', { title: 'My Doctors' });
  }
};