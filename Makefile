
usage:
	echo "make fetch-data"

data:
	mkdir data

data/johnson-and-johnson.csv: data
	curl \
		https://raw.githubusercontent.com/marcopeix/AppliedTimeSeriesAnalysisWithPython/main/data/jj.csv \
		> data/johnson-and-johnson.csv

fetch-data: data/johnson-and-johnson.csv

install:
	python -m pip install pipenv

build: install
	python -m pipenv install

all: build
	python -m pipenv run jupyter notebook
