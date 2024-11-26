import sys
import os

# Check if an operation argument is passed
if len(sys.argv) != 2:
    print("Usage: python generate_config.py <operation>")
    sys.exit(1)

# Get the operation from the command line argument
operation = sys.argv[1]

# Define the header file name
config_file = "config.h"

# List of available operations (you can expand this as needed)
operations = {
    "add": "Add_Function.h",
    "subtract": "sub.h",
    "multiply": "mul.h",
    "divide": "divide.h",
    "modulus": "modulus.h"
}

# Check if the operation is valid
if operation not in operations:
    print(f"Error: Invalid operation '{operation}'. Supported operations are: {', '.join(operations.keys())}")
    sys.exit(1)

# Create the config.h file with the appropriate #include directive
with open(config_file, 'w') as f:
    f.write(f"#include \"{operations[operation]}\"\n")

print(f"Generated {config_file} for operation: {operation}")
