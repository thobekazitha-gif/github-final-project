# Simple Interest Calculator

A Python-based calculator that computes simple interest given principal amount, annual rate of interest, and time period in years.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Formula](#formula)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [License](#license)

## Overview

This project provides a straightforward calculator for computing simple interest, which is commonly used in financial calculations, loans, and investments. Unlike compound interest, simple interest is calculated only on the principal amount.

## Features

- **Simple Interface**: Easy-to-use input prompts for principal, rate, and time
- **Precise Calculations**: Accurate financial calculations with proper decimal handling
- **Clear Output**: Well-formatted display of calculated interest
- **Error Handling**: Basic validation for input values

## Formula

The simple interest is calculated using the following formula:

```
Simple Interest (SI) = Principal (p) × Time (t) × Rate of Interest (r)
```

Where:
- **p** = Principal amount (initial investment/loan amount)
- **t** = Time period in years
- **r** = Annual rate of interest (as a decimal, e.g., 5% = 0.05)

## Installation

### Prerequisites
- Python 3.6 or higher

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/github-final-project.git
   ```

2. Navigate to the project directory:
   ```bash
   cd github-final-project
   ```

## Usage

Run the calculator directly using Python:

```bash
python simple_interest_calculator.py
```

Follow the on-screen prompts:
1. Enter the principal amount (p)
2. Enter the time period in years (t)
3. Enter the annual rate of interest (r)

The program will calculate and display the simple interest.

## Examples

### Example 1: Basic Calculation
```
Enter the principal amount: 1000
Enter the time period in years: 5
Enter the annual rate of interest (as decimal): 0.05

Simple Interest = 1000 * 5 * 0.05 = 250.0
Total Amount = 1250.0
```

### Example 2: Different Values
```
Enter the principal amount: 5000
Enter the time period in years: 3.5
Enter the annual rate of interest (as decimal): 0.075

Simple Interest = 5000 * 3.5 * 0.075 = 1312.5
Total Amount = 6312.5
```

## Code Structure

The main script contains:
- Input collection for principal, time, and rate
- Calculation of simple interest using the formula `p * t * r`
- Output display showing both the simple interest and total amount (principal + interest)

## Contributing

We welcome contributions to improve this project! Please read our [CONTRIBUTING.md](CONTRIBUTING.md) file for guidelines on how to contribute.

### Contribution Guidelines
- **Code Style**: Maintain consistent code style for readability
- **Documentation**: Ensure well-documented code for effective collaboration
- **Testing**: Thoroughly test your changes before submitting a pull request
- **Issue Tracker**: Check the Issue Tracker for existing tasks
- **Code Review**: All contributions undergo a code review process

## Code of Conduct

Please note that this project is released with a Contributor Code of Conduct. By participating in this project you agree to abide by its terms. See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for details.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Future Enhancements

Potential improvements for future versions:
- Graphical user interface (GUI)
- Support for different time units (months, days)
- Comparison with compound interest
- File input/output for batch calculations
- Web-based version
- Export functionality for calculation results

## Support

For questions, issues, or feature requests, please:
1. Check the existing issues
2. Create a new issue with detailed information

## Acknowledgments

- Thanks to all contributors who have helped with this project
- Inspired by basic financial literacy educational tools

---

*Note: This calculator is for educational purposes. For actual financial decisions, consult with a qualified financial professional.*
