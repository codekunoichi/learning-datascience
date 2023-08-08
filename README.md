# learning-datascience
All things Data Science, learning journey, portfolio projects and all tips and tricks along the way.


# Explaining the Makefile included

This Makefile defines a set of commands to automate tasks related to installing dependencies, running tests, formatting code, and performing linting. Makefiles are used in Unix-based systems to define rules and dependencies for building projects or executing tasks.

Here's a breakdown of the Makefile targets:

1. `install`:
   - This target is used to install the required dependencies for the project.
   - It runs the following commands:
     - `pip install --upgrade pip`: This command upgrades the `pip` package manager to the latest version.
     - `pip install -r requirements.txt`: This command installs the Python dependencies listed in the `requirements.txt` file.

2. `test`:
   - This target is used to run tests on Jupyter notebooks using the `pytest-nbval` plugin, which allows testing Jupyter notebooks.
   - It runs the following commands:
     - `python -m pytest --nbval ./pandas/ObesityExploration.ipynb`: This command runs tests on the `ObesityExploration.ipynb` Jupyter notebook using `pytest`.
     - `python -m pytest --nbval ./pandas/learning_pandas.ipynb`: This command runs tests on the `learning_pandas.ipynb` Jupyter notebook using `pytest`.
     - `python -m pytest --nbval ./pandas/portfolio-projects/prob_1_analyze_sales_data.ipynb`: This command runs tests on the `prob_1_analyze_sales_data.ipynb` Jupyter notebook located in the `portfolio-projects` directory using `pytest`.

3. `format`:
   - This target is used to format the Python code using the `black` code formatter.
   - It runs the `black *.py` command, which formats all Python files in the current directory.

4. `lint`:
   - This target is used to perform code linting using `pylint`.
   - It runs the `pylint` command without specifying a file or directory, which typically means it will check all Python files in the current directory.

5. `all`:
   - This is a special target that specifies a group of tasks that should be executed together when running `make all` or simply `make`.
   - The `all` target includes the `install`, `lint`, and `test` targets. Therefore, running `make all` will execute all these tasks in sequence.

Each target in the Makefile specifies the commands to be executed when that target is called. You can run a specific target by using the `make` command followed by the target name, for example:
```
make install
make test
make format
make lint
make all
```

Makefiles are helpful for automating repetitive tasks in your project workflow, and they are commonly used in software development to streamline build processes, testing, and other routine tasks.
