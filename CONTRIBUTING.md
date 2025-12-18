# Contributing Guidelines

## Welcome Contributors!

Thank you for considering contributing to this GitHub Final Project repository. This document outlines the guidelines for contributing to the development and maintenance of the project.

## Table of Contents
- [Getting Started](#getting-started)
- [Code Style](#code-style)
- [Documentation](#documentation)
- [Testing](#testing)
- [Issue Tracker](#issue-tracker)
- [Pull Request Process](#pull-request-process)
- [Code Review](#code-review)
- [Licensing](#licensing)

## Getting Started

1. **Fork the repository** on GitHub to your own account
2. **Clone your fork** to your local machine:
   ```bash
   git clone https://github.com/YOUR_USERNAME/github-final-project.git
   cd github-final-project
   ```
3. **Set up the upstream remote** to sync with the original repository:
   ```bash
   git remote add upstream https://github.com/ORIGINAL_OWNER/github-final-project.git
   ```
4. **Create a new branch** for your feature or bug fix:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Code Style

### Python Code
- Use **PEP 8** style guidelines
- Include meaningful comments for complex logic
- Use descriptive variable and function names
- Example for the simple interest calculator:
  ```python
  def calculate_simple_interest(principal, time, rate):
      """
      Calculate simple interest using the formula: SI = P × T × R
      
      Args:
          principal (float): Principal amount
          time (float): Time period in years
          rate (float): Annual interest rate (as decimal)
      
      Returns:
          float: Calculated simple interest
      """
      simple_interest = principal * time * rate
      return simple_interest
  ```

### Shell Scripts
- Use consistent indentation (4 spaces)
- Include shebang at the top: `#!/bin/bash`
- Add comments explaining the purpose and usage
- Example for the simple-interest.sh script:
  ```bash
  #!/bin/bash
  # Simple Interest Calculator Script
  # Usage: ./simple-interest.sh
  
  echo "=== Simple Interest Calculator ==="
  read -p "Enter principal amount: " principal
  read -p "Enter time period (years): " time
  read -p "Enter annual interest rate (as decimal): " rate
  
  # Calculate simple interest
  interest=$(echo "$principal * $time * $rate" | bc)
  echo "Simple Interest: $interest"
  ```

### Markdown Files
- Use proper headings and formatting
- Include clear section organization
- Use code blocks with language specification

## Documentation

### Code Documentation
- All functions and classes must have docstrings
- Document parameters, return values, and exceptions
- Update README.md when adding new features

### Commit Messages
Follow the conventional commits format:
- **feat**: New feature
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style changes (formatting, etc.)
- **refactor**: Code refactoring
- **test**: Adding or updating tests
- **chore**: Maintenance tasks

Example commit message:
```
feat: Add simple interest calculator script

- Create simple-interest.sh with interactive input
- Implement basic error handling for invalid inputs
- Add documentation for script usage
```

## Testing

### Before Submission
1. **Test your code** with various inputs
2. **Verify calculations** are correct (especially for financial formulas)
3. **Check for edge cases**:
   - Zero values
   - Negative values (where applicable)
   - Large numbers
   - Decimal inputs

### Testing Examples
For the simple interest calculator, test:
```bash
# Test case 1: Normal values
Input: principal=1000, time=5, rate=0.05
Expected output: 250

# Test case 2: Zero principal
Input: principal=0, time=10, rate=0.1
Expected output: 0

# Test case 3: Decimal values
Input: principal=1250.75, time=3.5, rate=0.075
Expected output: 328.259375
```

## Issue Tracker

### Finding Issues
- Check the **Issues tab** for open tasks
- Look for labels like `good-first-issue`, `bug`, or `enhancement`
- Comment on issues you'd like to work on

### Creating Issues
When reporting bugs or requesting features:
1. Use a **clear, descriptive title**
2. Provide **steps to reproduce** (for bugs)
3. Include **expected vs actual behavior**
4. Add **screenshots** if applicable
5. Specify **environment details** (OS, Python version, etc.)

## Pull Request Process

### Creating a Pull Request
1. **Ensure your fork is synced** with the upstream repository:
   ```bash
   git fetch upstream
   git merge upstream/main
   ```
2. **Push your changes** to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```
3. **Create a Pull Request** on GitHub with:
   - Descriptive title
   - Detailed description of changes
   - Reference to related issues (e.g., "Closes #123")
   - Screenshots or examples if applicable

### PR Template
Use this format for your PR description:
```markdown
## Description
Brief description of the changes made.

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Code refactoring
- [ ] Other (please describe)

## Testing Performed
Describe the tests you ran to verify your changes.

## Screenshots (if applicable)
Add screenshots to help explain your changes.

## Checklist
- [ ] My code follows the style guidelines
- [ ] I have performed a self-review of my code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix is effective
```

## Code Review

### Review Process
All contributions undergo a code review process:
1. **Automatic checks** (if configured):
   - Syntax validation
   - Code style checks
   - Basic linting
2. **Maintainer review** for:
   - Code quality and readability
   - Functionality correctness
   - Security considerations
   - Performance implications

### Responding to Feedback
- Be open to constructive feedback
- Address all review comments
- Make requested changes or explain why not
- Update your PR after making changes

## Licensing

### Contribution Licensing
By contributing to this repository, you agree that:
1. Your contributions will be licensed under the **Apache License 2.0**
2. You have the right to submit the work under this license
3. The code you submit is your original work or properly attributed

### Adding New Dependencies
If your contribution requires new dependencies:
1. Check if the dependency's license is compatible with Apache 2.0
2. Update requirements.txt if needed
3. Document the new dependency in README.md

## Getting Help

### Questions and Support
- **For technical questions**: Open a discussion or check existing issues
- **For process questions**: Refer to this CONTRIBUTING.md document
- **For urgent issues**: Tag maintainers in comments

### Resources
- [Project README](README.md) - General project information
- [Code of Conduct](CODE_OF_CONDUCT.md) - Community behavior guidelines
- [GitHub Documentation](https://docs.github.com) - Git and GitHub help

## Recognition

All contributors will be acknowledged in:
- The project's README.md (for significant contributions)
- Release notes
- Contributor statistics

---

Thank you for your interest in contributing to this project! Your efforts help improve the project for everyone.
