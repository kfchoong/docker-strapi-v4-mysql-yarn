module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'f7aa94036f5582e7da9785c5d53bef29'),
  },
});
