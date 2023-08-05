install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval ObesityExploration.ipynb
	python -m pytest --nbval learning_pandas.ipynb

format:
	black *.py

lint:
	pylint

all: install lint test