#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Counter for missing dependencies
MISSING_DEPS=0

# Function to check command existence
check_command() {
    if ! command -v "$1" &> /dev/null; then
        echo -e "${RED}✗ $1 is not installed${NC}"
        MISSING_DEPS=$((MISSING_DEPS + 1))
        return 1
    else
        version=$($2)
        echo -e "${GREEN}✓ $1 is installed${NC} (version: $version)"
        return 0
    fi
}

# Function to check minimum version
check_version() {
    local current=$1
    local required=$2
    if [ "$(printf '%s\n' "$required" "$current" | sort -V | head -n1)" = "$required" ]; then 
        return 0
    else
        return 1
    fi
}

echo -e "${YELLOW}Checking required dependencies...${NC}"
echo

# Check Node.js and npm
echo "Node.js and npm:"
if check_command "node" "node --version"; then
    NODE_VERSION=$(node --version | cut -d 'v' -f 2)
    if ! check_version "$NODE_VERSION" "20.0.0"; then
        echo -e "${RED}✗ Node.js version must be >= 20.0.0${NC}"
        MISSING_DEPS=$((MISSING_DEPS + 1))
    fi
fi
check_command "npm" "npm --version"
echo

# Check Java and Maven
echo "Java and Maven:"
if [ -f "$HOME/.sdkman/bin/sdkman-init.sh" ]; then
    source "$HOME/.sdkman/bin/sdkman-init.sh"
    echo -e "${GREEN}✓ SDKMAN is installed${NC}"
else
    echo -e "${RED}✗ SDKMAN is not installed${NC}"
    MISSING_DEPS=$((MISSING_DEPS + 1))
fi

if check_command "java" "java -version 2>&1 | head -n 1"; then
    JAVA_VERSION=$(java -version 2>&1 | head -n 1 | cut -d'"' -f2 | cut -d'.' -f1)
    if ! check_version "$JAVA_VERSION" "21"; then
        echo -e "${RED}✗ Java version must be >= 21${NC}"
        MISSING_DEPS=$((MISSING_DEPS + 1))
    fi
fi
check_command "mvn" "mvn --version | head -n 1"
echo

# Check Python and Poetry
echo "Python and Poetry:"
if check_command "python3" "python3 --version"; then
    PYTHON_VERSION=$(python3 --version | cut -d' ' -f2)
    if ! check_version "$PYTHON_VERSION" "3.12.0"; then
        echo -e "${RED}✗ Python version must be >= 3.12.0${NC}"
        MISSING_DEPS=$((MISSING_DEPS + 1))
    fi
fi
check_command "poetry" "poetry --version"
echo

# Check Go
echo "Go:"
if check_command "go" "go version | cut -d' ' -f3"; then
    GO_VERSION=$(go version | cut -d' ' -f3 | cut -c3-)
    if ! check_version "$GO_VERSION" "1.21.0"; then
        echo -e "${RED}✗ Go version must be >= 1.21.0${NC}"
        MISSING_DEPS=$((MISSING_DEPS + 1))
    fi
fi
echo

# Check OCaml and OPAM
echo "OCaml and OPAM:"
if check_command "opam" "opam --version"; then
    if [ -z "$(opam switch list | grep 4.14.1)" ]; then
        echo -e "${RED}✗ OCaml 4.14.1 switch is not installed${NC}"
        MISSING_DEPS=$((MISSING_DEPS + 1))
    else
        echo -e "${GREEN}✓ OCaml 4.14.1 switch is installed${NC}"
    fi
fi
echo

# Check system packages for OCaml
echo "System packages for OCaml:"
REQUIRED_PACKAGES="bubblewrap gcc make g++ rsync git m4 unzip pkg-config musl-tools mercurial libev-dev"
for pkg in $REQUIRED_PACKAGES; do
    if ! dpkg -l | grep -q "^ii  $pkg "; then
        echo -e "${RED}✗ $pkg is not installed${NC}"
        MISSING_DEPS=$((MISSING_DEPS + 1))
    else
        echo -e "${GREEN}✓ $pkg is installed${NC}"
    fi
done
echo

# Final summary
if [ $MISSING_DEPS -eq 0 ]; then
    echo -e "${GREEN}All dependencies are satisfied! You can proceed with 'npm install'${NC}"
    exit 0
else
    echo -e "${RED}Found $MISSING_DEPS missing or incompatible dependencies. Please install them before running 'npm install'${NC}"
    exit 1
fi
