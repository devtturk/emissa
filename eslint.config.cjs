module.exports = [
  {
    files: ['**/*.js', '**/*.ts'],
    ignores: ['dist', 'node_modules'],
    languageOptions: { sourceType: 'module' },
    rules: { 'no-unused-vars': 'error' },
  },
];
