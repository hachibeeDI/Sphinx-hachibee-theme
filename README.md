# my simple sphinx theme

It has Japanese friendly font declaration and responsive stylings.


## Sample Page

http://hachibeedi.github.io/Sphinx-hachibee-theme/index.html

### ScreenShot

![shot](https://raw.github.com/hachibeeDI/Sphinx-hachibee-theme/master/example/screenshot.png)


## How to use

```bash
pip install hachibee-sphinx-theme
```

change `conf.py` in your sphinx source directory

```python
# conf.py

extensions = [
    'sphinx.ext.intersphinx',
    'sphinx.ext.pngmath',
    'sphinx.ext.viewcode',
    'hachibee_sphinx_theme',
]

html_theme = 'hachibee'
# Add any paths that contain custom themes here, relative to this directory.
import hachibee_sphinx_theme
html_theme_path = [hachibee_sphinx_theme.get_html_themes_path()]
```


## How to tweak the style

If you don't like some styles(eg: font-size, font-family), You can add your own stylesheets.

First, you should add function `setup` is in your local `conf.py`.

```python
# conf.py

def setup(app):
    app.add_stylesheet('custom.css')
```


Second, create your stylesheet in `_static`.
Directory named `_static` is created on the root directory in your sources.

```bash
echo "body {font-size: 1.5em}" > source/_static/custom.css
```


Lastly, you apply the alteration to your project.

```bash
make clean && make html
```

