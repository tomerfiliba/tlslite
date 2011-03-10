#!/bin/sh

rm -r build dist &> /dev/null
python setup.py sdist --formats=zip,gztar
cp dist/* installers/

rm -r build dist &> /dev/null
python setup.py bdist_wininst 
cp dist/* installers/

rm -r build dist &> /dev/null
/c/Python26/python setup.py bdist_wininst 
cp dist/* installers/

# requires Visual Studio 2003!
# rm -r build dist &> /dev/null
# /c/Python25/python setup.py bdist_wininst 
# cp dist/* installers/

rm -r build dist &> /dev/null

echo "uploading to sourceforge, press CTRL+C to abort"
sleep 10
scp installers/* gangesmaster,rpyc@frs.sourceforge.net:/home/frs/project/r/rp/rpyc/tlslite/
