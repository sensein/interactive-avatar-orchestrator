# interactive-avatar-orchestrator

This repository is for managing and running multiple child repositories that collectively contribute to generating avatar animations and interactive talking avatars. This repository contains scripts to set up the environment, clone child repositories, and install necessary packages. It also provides scripts to start the processes responsible for generating avatar animations and interactive talking avatars.


## Setup

1. **Run the Setup Script:** Execute the `setup.sh` script to set up the environment, clone child repositories, and install required packages:

    ```bash
    #chmod +x setup.sh
    ./setup.sh
    ```

    This script will:
    - Create a virtual environment using `conda` (assuming it's installed).
    - Clone child repositories (replace URLs with actual repository URLs).
    - Install required packages from the child repositories.

### Important Notes

- **Environment Configuration**: Ensure you have the required versions of `npm`, `conda`, and `Docker` installed to avoid configuration issues.


## Usage

1. **Navigate to Project Directory:** Ensure you're in the `interactive-avatar-orchestrator` directory:

    ```bash
    cd interactive-avatar-orchestrator
    ```

2. **Start the Processes:** Launch avatar animation and interactive talking avatar processes using the `start.sh` script:

    ```bash
    #chmod +x start.sh
    ./start.sh
    ```

    This script will:
    - Initiate the process for generating avatar animations.
    - Start the process for the interactive talking avatar.


## License

This project is licensed under the [MIT License](LICENSE).
