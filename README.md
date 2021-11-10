# time-series-forecasting

exercises from [Time Series Forecasting in Python](https://www.manning.com/books/time-series-forecasting-in-python-book) book.

```
make fetch-data
make all
```

## Setup

```
python -m pipenv install \
  jupyter \
  pandas \
  matplotlib \
  numpy
```

### Issues with statsmodesl on Mac M1 silicon

```
python -m pipenv install statsmodels
```

errors with

```
customize UnixCCompiler
  libraries mkl_rt not found in [... '/usr/lib']
  NOT AVAILABLE

openblas_lapack_info:
  libraries openblas not found in [... '/usr/lib']
  NOT AVAILABLE

openblas_clapack_info:
  libraries openblas,lapack not found in [... '/usr/lib']
  NOT AVAILABLE

flame_info:
  libraries flame not found in [... '/usr/lib']
  NOT AVAILABLE

etc
```

opted to install Conda and miniforge instead in line with
  https://towardsdatascience.com/new-m1-who-dis-677e085baffd

```
brew install miniforge
conda create -n .venv python=3.9.5
conda deactivate  # in .zshrc
conda activate    # once you want to use it

conda activate base
conda install \
  jupyter \
  pandas \
  matplotlib \
  numpy \
  statsmodels
```

