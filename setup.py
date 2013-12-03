from setuptools import setup

setup(
    name='sphinx-hachibee-theme',
    version='0.0.1',
    author='OGURA_Daiki',
    author_email='8hachibee125@gmail.com',
    py_modules=['hachibee'],
    entry_points={
        'sphinx_themes': [
            'path = hachibee:get_path',
        ],
    },
)
