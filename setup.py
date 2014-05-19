import os
from setuptools import setup, find_packages

DESCRIPTION = open(
    os.path.join(os.path.dirname(__file__), 'README.md')).read().strip()

classifiers = [
    "Development Status :: 4 - Beta",
    "Environment :: Web Environment",
    "License :: OSI Approved :: MIT License",
    "Programming Language :: Python",
    "Topic :: Software Development :: Documentation",
]

setup(
    name='hachibee-sphinx-theme',
    version='0.2.1',
    author='OGURA_Daiki',
    author_email='8hachibee125@gmail.com',
    url='https://github.com/hachibeeDI/Sphinx-hachibee-theme',
    description='a simple sphinx theme',
    long_description=DESCRIPTION,
    packages=find_packages('src'),
    package_dir={'': 'src'},
    license="MIT",
    include_package_data=True,
    entry_points='',
    keywords=['sphinx', 'sphinx.theme', ],
    classifiers=classifiers,
)
