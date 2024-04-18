install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_*.py


format:
	black *.py

lint:
	pylint --disable=R,C,E1120 *.py
## both are disabled i only want to see errors and standard warnings
## R is recommedation warnings
## C is configuration warnings

all: install lint test