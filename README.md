# Strava-nb

Strava-nb is a Jupyter Notebook project designed to access and analyze workout data from a locally hosted PostgreSQL database. The database contains detailed information about various workouts, similar to what is available on Strava. This project allows you to query, visualize, and analyze your workout data directly from your local server.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Strava-nb is a tool for athletes and fitness enthusiasts who want to have a local and customizable way of accessing their workout data. With this project, you can leverage the power of PostgreSQL and Jupyter Notebooks to perform in-depth analysis and visualization of your workout routines.

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
    cd Strava-nb
    ```

2. Install the required Python packages:
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

Update the database connection settings in the notebook to read from the `config.ini` file. Look for the following section in the notebook and modify it accordingly:

```python
import psycopg2
import configparser

# Read database configuration from config.ini
config = configparser.ConfigParser()
config.read('config.ini')

db_params = {
    'dbname': config['database']['database'],
    'user': config['database']['user'],
    'password': config['database']['password'],
    'host': config['database']['host'],
    'port': '5432'  # Modify if your PostgreSQL server uses a different port
}

conn = psycopg2.connect(**db_params)
```

Ensure that your PostgreSQL server is running and accessible from your local machine.

## Contributing

Contributions are welcome! If you have suggestions for improvements or new features, feel free to open an issue or submit a pull request. Please follow the guidelines outlined in CONTRIBUTING.md.

## License

This project is licensed under the Apache License. See the LICENSE file for more details.

