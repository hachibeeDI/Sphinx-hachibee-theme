from setuptools import setup, find_packages


setup(
    name='hachibee-sphinx-theme',
    version='0.0.1',
    author='OGURA_Daiki',
    author_email='8hachibee125@gmail.com',
    packages=find_packages('src'),
    package_dir={'': 'src'},
    include_package_data=True,
    entry_points='',
)
