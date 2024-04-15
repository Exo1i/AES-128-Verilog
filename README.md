# AES-128 Verilog Implementation

This repository contains a Verilog implementation of the AES-128 (Advanced Encryption Standard) algorithm. AES is a widely used symmetric encryption algorithm that provides strong security for data confidentiality.

## Features

- Implements AES-128 encryption and decryption.
- Supports key sizes of 128 bits.
- Provides all necessary functions and modules for AES operations.
- Includes testbenches for verification and validation of the implementation.

## Getting Started

To get started with this implementation, follow these steps:

1. Clone the repository: `git clone https://github.com/exo1i/aes-128-verilog.git`
2. Open the project in your preferred Verilog development environment.
3. Modify the input data and key values in the testbench file to suit your requirements.
4. Run the simulation or synthesis process to generate the output.
5. Verify the results and analyze the performance of the implementation.

## File Structure

The repository is organized as follows:

- `src/`: Contains the Verilog source files for the AES-128 implementation.
- `testbench/`: Contains the Verilog testbench files for functional verification.
- `sim/`: Contains simulation scripts and test vectors.
- `docs/`: Contains additional documentation and resources related to the AES-128 algorithm.

## Usage

To use the AES-128 Verilog implementation, follow these steps:

1. Instantiate the AES module in your Verilog design.
2. Connect the necessary inputs and outputs to the AES module.
3. Provide the input plaintext and key values to the AES module.
4. Clock the AES module and observe the output ciphertext or decrypted plaintext.

## Contributing

Contributions to this repository are welcome. If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. Feel free to use and modify the code for your own purposes.

## Acknowledgements

This implementation is based on the AES-128 algorithm specified in the NIST FIPS Publication 197.

## References

- NIST FIPS Publication 197: The official specification of the AES algorithm by the National Institute of Standards and Technology (NIST).
- Verilog HDL: Learn more about the Verilog Hardware Description Language.

Please refer to the above references for more information on AES and Verilog.
