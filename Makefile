install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval ./pandas/ObesityExploration.ipynb
	python -m pytest --nbval ./pandas/learning_pandas.ipynb
	python -m pytest --nbval ./pandas/portfolio_projects/prob_1_analyze_sales_data.ipynb

format:
	black *.py

lint:
	pylint

all: install lint test