// middleware/auth.js
const passport = require('passport');

module.exports = {
  authenticateJWT: (req, res, next) => {
    passport.authenticate('jwt', { session: false }, (err, user, info) => {
      if (err || !user) {
        return res.status(403).json({ message: 'Unauthorized' });
      }
      req.user = user;
      next();
    })(req, res, next);
  }
};
