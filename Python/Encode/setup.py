from setuptools import setup

setup(
    name='Encode.Arabic',
    version='1.3.9',
    description='Encode Arabic',
    long_description='https://github.com/otakar-smrz/encode-arabic',
    url='https://github.com/otakar-smrz/encode-arabic',
    author='Otakar Smrz',
    author_email='otakar-smrz users.sf.net',
    license='GPL',
    namespace_packages=['Encode'],
    packages=['Encode', 'Encode.Arabic'],
    )

# http://stackoverflow.com/questions/5064951/packaging-common-python-namespaces#answer-5065350
# https://pythonhosted.org/setuptools/setuptools.html#namespace-packages
# http://chimera.labs.oreilly.com/books/1230000000393/ch10.html#namespacepackage
