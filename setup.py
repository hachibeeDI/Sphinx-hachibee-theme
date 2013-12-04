from setuptools import setup, find_packages


setup(
    name='hachibee-sphinx-theme',
    version='0.1.0',
    author='OGURA_Daiki',
    author_email='8hachibee125@gmail.com',
    url='https://github.com/hachibeeDI/Sphinx-hachibee-theme',
    description='a simple sphinx theme',
    packages=find_packages('src'),
    package_dir={'': 'src'},
    license="MIT",
    include_package_data=True,
    entry_points='',
)
