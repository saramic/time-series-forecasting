
usage:
	echo "make fetch-data"

data:
	mkdir data

data/johnson-and-johnson.csv: data
	curl \
		https://raw.githubusercontent.com/marcopeix/AppliedTimeSeriesAnalysisWithPython/main/data/jj.csv \
		> data/johnson-and-johnson.csv

data/GOOGL.csv: data
	curl \
		'https://query1.finance.yahoo.com/v7/finance/download/GOOGL?period1=1588032000&period2=1619481600&interval=1d&events=history&includeAdjustedClose=true' \
		> data/GOOGL.csv

fetch-data: data/johnson-and-johnson.csv data/GOOGL.csv

setup:
	conda create -n .venv python=3.9.5

activate:
	conda activate

install:
	conda install \
		jupyter \
		pandas \
		matplotlib \
		numpy \
		statsmodels \
		scikit-learn

all: install
	jupyter notebook
