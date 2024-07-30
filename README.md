# Strava-nb

Strava-nb is a Jupyter Notebook project designed to access and analyze workout data from a locally hosted PostgreSQL database. The database contains detailed information about various workouts, similar to what is available on Strava. This project allows you to query, visualize, and analyze your workout data directly from your local server.

By the time being, this notebook performs a data collection, cleansing and preparation for analysis of the available data before comming into the model preparation. By performing a cross-validation, it is decided which model is most efficiente and precise and this is saved to a file for later processing. In this Notebook, the workout data is located in a PostgreSQL database in the local network.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Strava-nb is a tool for athletes and fitness enthusiasts who want to have a local and customizable way of accessing their workout data. With this project, you can leverage the power of PostgreSQL and Jupyter Notebooks to perform in-depth analysis and visualization of your workout routines. Dataset is extended with additional features from the existing dataset and running KPIs as well as weather information for each point.


## Features

- Connect to a local PostgreSQL database containing workout data.
- Query and analyze workout metrics such as distance, duration, elevation gain, and more.
- Generate visualizations to track progress and performance over time.
- Customize queries and visualizations to fit your specific needs.


## Installation

To set up Strava-nb, follow these steps:

### Prerequisites

- Python 3.x
- Jupyter Notebook
- PostgreSQL database installed and running on your local server
- Required Python packages (listed in `requirements.txt`)

### Steps

1. Clone the repository:
    ```bash
    git clone https://github.com/TheBlackmad/strava-nb.git
    cd strava-nb
    ```

2. Install the required Python packages (not needed using Jupyter Notebook, installation instructions are included in the notebook itself):
    ```bash
    pip install -r requirements.txt
    ```

3. Set up your PostgreSQL database with the necessary schema and data.

4. Create a `config.ini` file in the project directory with the following content:

    ```ini
    [database]
    host=DB_HOST
    database=DATABASE
    user=USERNAME
    password=PASSWORD

    [meteosat]
    host=meteostat.p.rapidapi.com
    key=YOUR_KEY
    ```

5. Configure the database connection settings in the notebook to read from the `config.ini` file (see [Configuration](#configuration)).

## Usage

1. Start the Jupyter Notebook:
    ```bash
    jupyter notebook
    ```

2. Open `TrailRun.ipynb` in your browser.

3. Run the cells in the notebook to connect to your database, query data, and generate visualizations.

## Configuration

Update the database connection settings in the notebook to read from the `config.ini` file. Ensure that your PostgreSQL server is running and accessible from your local machine. An script to create a PostreSQL Database is included in the project (file). Population of this database with actual data is up to the user as this is very personal data included (heartrate, speeds, etc). In my case, this data is been updated on a regular basis to include the most updated data about the workouts.


## Contributing

Contributions are welcome! If you have suggestions for improvements or new features, feel free to open an issue or submit a pull request. Please follow the guidelines outlined in CONTRIBUTING.md.

## License

This project is licensed under the Apache License. See the LICENSE file for more details.

