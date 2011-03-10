#!/bin/sh

rm -r installers &> /dev/null
mkdir installers

rm -r build dist &> /dev/null
python setup.py sdist --formats=zip,gztar
cp dist/* installers/

rm -r build dist &> /dev/null
python setup.py bdist_wininst 
cp dist/* installers/

rm -r build dist &> /dev/null
/c/Python26/python setup.py bdist_wininst 
cp dist/* installers/

# rm -r build dist &> /dev/null
# /c/Python25/python setup.py bdist_wininst 
# cp dist/* installers/

rm -r build dist &> /dev/null
