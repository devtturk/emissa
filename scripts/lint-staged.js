#!/usr/bin/env node
const { execSync } = require('child_process');
const files = execSync('git diff --name-only --cached', { encoding: 'utf8' })
  .split('\n')
  .filter(Boolean);

const prettierFiles = files.filter((f) => /\.(ts|tsx|js|jsx|json|md)$/.test(f));
try {
  if (prettierFiles.length) {
    execSync(`prettier --check ${prettierFiles.join(' ')}`, {
      stdio: 'inherit',
    });
  }
  const eslintFiles = files.filter((f) => /\.(js|jsx)$/.test(f));
  if (eslintFiles.length) {
    execSync(`eslint ${eslintFiles.join(' ')}`, { stdio: 'inherit' });
  }
} catch {
  process.exit(1);
}
