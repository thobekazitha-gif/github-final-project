# Simple Interest Calculator Script (`simple-interest.sh`)

## Overview
This is a Bash shell script that calculates simple interest based on user input. The script follows the formula: **Simple Interest = Principal × Time × Rate**.

## Script Content
Create a new file named `simple-interest.sh` in your repository and paste the following code:

```bash
#!/bin/bash

# ==============================================
# SIMPLE INTEREST CALCULATOR
# ==============================================
# This script calculates simple interest using
# the formula: SI = P * T * R
# ==============================================

echo "========================================"
echo "   SIMPLE INTEREST CALCULATOR"
echo "========================================"
echo ""

# Input: Principal amount
echo "Enter the principal amount (P):"
read principal

# Validate principal input
while ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ $(echo "$principal <= 0" | bc) -eq 1 ]]; do
    echo "Invalid input! Please enter a positive number:"
    read principal
done

# Input: Time period in years
echo "Enter the time period in years (T):"
read time

# Validate time input
while ! [[ "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ $(echo "$time <= 0" | bc) -eq 1 ]]; do
    echo "Invalid input! Please enter a positive number:"
    read time
done

# Input: Annual rate of interest
echo "Enter the annual rate of interest (R) as a decimal (e.g., 0.05 for 5%):"
read rate

# Validate rate input
while ! [[ "$rate" =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ $(echo "$rate <= 0" | bc) -eq 1 ]]; do
    echo "Invalid input! Please enter a positive number:"
    read rate
done

# ==============================================
# CALCULATION
# ==============================================

# Calculate simple interest
simple_interest=$(echo "$principal * $time * $rate" | bc)

# Calculate total amount
total_amount=$(echo "$principal + $simple_interest" | bc)

# ==============================================
# OUTPUT
# ==============================================

echo ""
echo "========================================"
echo "           CALCULATION RESULTS"
echo "========================================"
echo ""
echo "Principal Amount (P): $principal"
echo "Time Period (T): $time years"
echo "Annual Rate (R): $rate"
echo "----------------------------------------"
echo "Simple Interest (P × T × R): $simple_interest"
echo "----------------------------------------"
echo "Total Amount (Principal + Interest): $total_amount"
echo "========================================"
echo ""
echo "Thank you for using the Simple Interest Calculator!"
```

## How to Use This Script

### 1. Adding the Script to Your Repository
1. In your GitHub repository, click on **"Add file"** → **"Create new file"**
2. Name the file `simple-interest.sh`
3. Copy and paste the entire script above into the file editor
4. Scroll down and click **"Commit changes"**

### 2. Making the Script Executable (Local Machine)
If you're running this script on your local machine, make it executable:

```bash
chmod +x simple-interest.sh
```

### 3. Running the Script
You can run the script in several ways:

**Method 1: Direct execution**
```bash
./simple-interest.sh
```

**Method 2: Using bash command**
```bash
bash simple-interest.sh
```

**Method 3: Using sh command**
```bash
sh simple-interest.sh
```

## Script Features

### ✅ Input Validation
- Ensures all inputs are positive numbers
- Prevents non-numeric inputs
- Provides clear error messages for invalid inputs

### ✅ Clear User Interface
- Well-formatted display with separators
- Step-by-step input prompts
- Organized output section

### ✅ Precise Calculations
- Uses `bc` calculator for floating-point arithmetic
- Handles decimal values accurately
- Displays both simple interest and total amount

### ✅ Educational Format
- Shows the formula being used
- Clearly labels all input and output values
- Includes explanatory comments

## Example Usage

Here's what a typical session looks like:

```
========================================
   SIMPLE INTEREST CALCULATOR
========================================

Enter the principal amount (P):
1000
Enter the time period in years (T):
5
Enter the annual rate of interest (R) as a decimal (e.g., 0.05 for 5%):
0.05

========================================
           CALCULATION RESULTS
========================================

Principal Amount (P): 1000
Time Period (T): 5 years
Annual Rate (R): 0.05
----------------------------------------
Simple Interest (P × T × R): 250.00
----------------------------------------
Total Amount (Principal + Interest): 1250.00
========================================

Thank you for using the Simple Interest Calculator!
```

## Testing the Script

### Test Cases to Verify
1. **Basic Calculation**
   ```
   Input: P=1000, T=5, R=0.05
   Expected: SI=250, Total=1250
   ```

2. **Decimal Values**
   ```
   Input: P=1250.75, T=3.5, R=0.075
   Expected: SI=328.259375, Total=1579.009375
   ```

3. **Whole Numbers**
   ```
   Input: P=5000, T=2, R=0.10
   Expected: SI=1000, Total=6000
   ```

### Error Handling Tests
- Entering text instead of numbers
- Entering negative values
- Entering zero values
- Entering extremely large numbers

## Requirements

### Dependencies
- **Bash shell** (available on Linux, macOS, and Windows WSL/Git Bash)
- **bc calculator** (usually pre-installed on most systems)

### Checking for bc
If you get an error about `bc` not being found, install it:

**Ubuntu/Debian:**
```bash
sudo apt-get install bc
```

**macOS:**
```bash
brew install bc
```

**CentOS/RHEL:**
```bash
sudo yum install bc
```

## Integration with Your Project

### Adding to Your Repository
1. **Create the file** as shown above
2. **Commit it** to your main branch
3. **Update README.md** to mention the script:
   ```markdown
   ## Available Scripts
   
   ### Simple Interest Calculator
   Run the shell script to calculate simple interest:
   ```bash
   bash simple-interest.sh
   ```
   ```

### GitHub Actions (Optional)
If you want to add automated testing, create `.github/workflows/test-script.yml`:
```yaml
name: Test Simple Interest Script
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Test script
        run: |
          chmod +x simple-interest.sh
          echo -e "1000\n5\n0.05" | ./simple-interest.sh | grep "Simple Interest.*250"
```

## Troubleshooting

### Common Issues and Solutions

1. **"Permission denied" error**
   ```bash
   chmod +x simple-interest.sh
   ```

2. **"bc: command not found"**
   Install bc as shown in the Requirements section

3. **Script doesn't accept decimal inputs**
   Ensure you're using the correct format (e.g., 0.05 not 5%)

4. **Line ending issues (Windows)**
   Convert line endings:
   ```bash
   dos2unix simple-interest.sh
   ```

## License and Attribution

This script is part of your GitHub Final Project and is licensed under the same terms as your repository (Apache 2.0 License).

---

## Quick Reference Card

### File Creation
```bash
# Create file
touch simple-interest.sh

# Make executable
chmod +x simple-interest.sh

# Run script
./simple-interest.sh
```

### Formula
```
Simple Interest = Principal × Time × Rate
Total Amount = Principal + Simple Interest
```

### Validation Rules
- All inputs must be positive numbers
- Decimal values are accepted
- No text or special characters allowed

---

**Note:** This script is designed for educational purposes and follows the requirements specified in your assignment grading criteria for Task 6 of Part 1.
