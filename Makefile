install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval ./pandas/ObesityExploration.ipynb
	python -m pytest --nbval ./pandas/learning_pandas.ipynb
	python -m pytest --nbval ./pandas/portfolio-projects/prob_1_analyze_sales_data.ipynb
	python -m pytest --nbval ./pandas/portfolio-projects/prob_2_explore_movie_data.ipynb
	python -m pytest --nbval ./pandas/portfolio-projects/prob_5_explore_ecommerce_data.ipynb
	python -m pytest --nbval ./pandas/portfolio-projects/prob_6_happiness_data.ipynb

format:
	black *.py

lint:
	pylint

all: install lint test