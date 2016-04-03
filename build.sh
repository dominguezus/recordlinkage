# Run in terminal with: sh build.sh

cd docs/
ipython nbconvert --to rst ../examples/*.ipynb

make html

cd ..

python setup.py sdist
python setup.py build
python setup.py install