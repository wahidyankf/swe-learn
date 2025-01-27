module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    // Add any custom rules here
    'body-max-line-length': [2, 'always', 100],
  },
};
