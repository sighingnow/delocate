# Make wheels and copy into main package
# This is to build the wheels we use for testing
# Need cython and wheel installed to run this script
# Use wheel==0.23 for compatibility with tests.
# Run on earliest supported version of OSX (currently 10.6)
cd fakepkg1
rm -rf build dist fakepkg1*info
# Uses python default compile flags
python setup.py bdist_wheel
cp dist/fakepkg1*.whl ../../delocate/tests/data
cp libs/libextfunc.dylib ../../delocate/tests/data
cd ..
cd fakepkg2
rm -rf build dist fakepkg2*info
python setup.py bdist_wheel
cp dist/fakepkg2*.whl ../../delocate/tests/data
