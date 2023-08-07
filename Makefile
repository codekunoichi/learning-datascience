install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval ./pandas/ObesityExploration.ipynb
	python -m pytest --nbval ./pandas/learning_pandas.ipynb

format:
	black *.py

lint:
	pylint

all: install lint test