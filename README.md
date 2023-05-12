# LEACH-Based Routing Protocols for Wireless Sensor Networks Simulation

This MATLAB program simulates the performance of LEACH-based routing protocols for wireless sensor networks. The simulation includes random network generation and allows for a comparison of different protocols.

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Results](#results)
- [Contributing](#contributing)
- [License](#license)

## Introduction
Wireless sensor networks (WSNs) play a crucial role in various applications, such as environmental monitoring, surveillance, and healthcare. LEACH (Low Energy Adaptive Clustering Hierarchy) is a popular routing protocol designed for WSNs. This simulation program aims to compare different LEACH-based routing protocols and evaluate their performance using a random network generation approach.

## Installation
1. Ensure that MATLAB is installed on your system. The program has been developed and tested using MATLAB version X.X.
2. Clone this repository to your local machine or download the source code as a ZIP file.

## Usage
1. Open MATLAB and navigate to the cloned/downloaded repository directory.
2. The following files are available in the repository:
   - `CalcDistance.m`: Calculates the distance between nodes.
   - `CreateModel.m`: Creates the network model.
   - `CreateNetwork.m`: Generates a random network.
   - `DeadCounter.m`: Keeps track of dead nodes in the network.
   - `Direct_Protocol.m`: Implements the direct communication protocol.
   - `Direct_UsedEnergy.m`: Calculates the energy consumption for the direct communication protocol.
   - `Leach.m`: Executes the LEACH-based routing protocol.
   - `Leach_Protocol.m`: Implements the LEACH protocol.
   - `Leach_SelectCluster.m`: Selects cluster heads in the LEACH protocol.
   - `Leach_UsedEnergy.m`: Calculates the energy consumption for the LEACH protocol.
   - `Main.m`: Main script that orchestrates the simulation.
   - `Show.m`: Displays the simulation results.
   - `ShowNetworks.m`: Visualizes the generated network.
   - `Test.m`: Runs the simulation and compares the protocols.
3. Run the `Main.m` file to start the simulation.
4. Follow the on-screen instructions to configure the simulation parameters.
5. After the simulation completes, the results will be displayed or saved to a file.

## Results
Upon completion of the simulation, the results will be displayed or saved to a file, depending on the configuration. The results may include metrics such as network lifetime, energy consumption, packet delivery ratio, and network coverage. These metrics can be used to compare the performance of different LEACH-based routing protocols.

## Contributing
Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on GitHub.

## License
This project is licensed under the [MIT License](LICENSE). Feel free to use and modify the code according to your needs.
