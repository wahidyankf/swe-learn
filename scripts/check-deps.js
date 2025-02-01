#!/usr/bin/env node

import { execSync } from 'child_process';
import { platform } from 'os';
import { join } from 'path';

// Colors for output
const colors = {
  red: '\x1b[31m',
  green: '\x1b[32m',
  yellow: '\x1b[33m',
  reset: '\x1b[0m',
};

let missingDeps = 0;

// Helper function to check command existence and version
function checkCommand(name, versionCommand, minVersion = null) {
  try {
    const output = execSync(versionCommand, {
      stdio: ['pipe', 'pipe', 'pipe'],
    }).toString();
    console.log(
      `${colors.green}✓ ${name} is installed${
        colors.reset
      } (version: ${output.trim()})`
    );

    if (minVersion) {
      const version = output.match(/\d+\.\d+\.\d+/)?.[0] || output;
      if (!checkVersion(version, minVersion)) {
        console.log(
          `${colors.red}✗ ${name} version must be >= ${minVersion}${colors.reset}`
        );
        missingDeps++;
        return false;
      }
    }
    return true;
  } catch (error) {
    console.log(`${colors.red}✗ ${name} is not installed${colors.reset}`);
    missingDeps++;
    return false;
  }
}

// Helper function to check version
function checkVersion(current, required) {
  const currentParts = current.split('.').map(Number);
  const requiredParts = required.split('.').map(Number);

  for (let i = 0; i < 3; i++) {
    const currentPart = currentParts[i] || 0;
    const requiredPart = requiredParts[i] || 0;

    if (currentPart > requiredPart) return true;
    if (currentPart < requiredPart) return false;
  }
  return true;
}

// Check if we're on Linux for system package checks
const isLinux = platform() === 'linux';

console.log(
  `${colors.yellow}Checking required dependencies...${colors.reset}\n`
);

// Check Node.js and npm
console.log('Node.js and npm:');
checkCommand('node', 'node --version', '20.0.0');
checkCommand('npm', 'npm --version');
console.log();

// Check Java and Maven
console.log('Java and Maven:');
const sdkmanPath = join(
  process.env.HOME || '',
  '.sdkman',
  'bin',
  'sdkman-init.sh'
);
try {
  execSync(`test -f "${sdkmanPath}"`);
  console.log(`${colors.green}✓ SDKMAN is installed${colors.reset}`);
} catch {
  console.log(`${colors.red}✗ SDKMAN is not installed${colors.reset}`);
  missingDeps++;
}
checkCommand('java', 'java -version 2>&1 | head -n1', '21.0.0');
checkCommand('mvn', 'mvn --version | head -n1');
console.log();

// Check Python and Poetry
console.log('Python and Poetry:');
checkCommand('python3', 'python3 --version', '3.12.0');
checkCommand('poetry', 'poetry --version');
console.log();

// Check Go
console.log('Go:');
checkCommand('go', 'go version', '1.21.0');
console.log();

// Check OCaml and OPAM
console.log('OCaml and OPAM:');
if (checkCommand('opam', 'opam --version')) {
  try {
    const switchOutput = execSync('opam switch list').toString();
    if (!switchOutput.includes('4.14.1')) {
      console.log(
        `${colors.red}✗ OCaml 4.14.1 switch is not installed${colors.reset}`
      );
      missingDeps++;
    } else {
      console.log(
        `${colors.green}✓ OCaml 4.14.1 switch is installed${colors.reset}`
      );
    }
  } catch {
    console.log(`${colors.red}✗ Could not check OCaml switch${colors.reset}`);
    missingDeps++;
  }
}
console.log();

// Check system packages for OCaml (Linux only)
if (isLinux) {
  console.log('System packages for OCaml:');
  const requiredPackages = [
    'bubblewrap',
    'gcc',
    'make',
    'g++',
    'rsync',
    'git',
    'm4',
    'unzip',
    'pkg-config:amd64',
    'musl-tools',
    'mercurial',
    'libev-dev:amd64',
  ];

  for (const pkg of requiredPackages) {
    try {
      execSync(`dpkg -l | grep -q "^ii  ${pkg} "`);
      console.log(`${colors.green}✓ ${pkg} is installed${colors.reset}`);
    } catch {
      console.log(`${colors.red}✗ ${pkg} is not installed${colors.reset}`);
      missingDeps++;
    }
  }
  console.log();
}

// Final summary
if (missingDeps === 0) {
  console.log(
    `${colors.green}All dependencies are satisfied! You can proceed with 'npm install'${colors.reset}`
  );
  process.exit(0);
} else {
  console.log(
    `${colors.red}Found ${missingDeps} missing or incompatible dependencies. Please install them before running 'npm install'${colors.reset}`
  );
  process.exit(1);
}
