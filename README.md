# my simple sphinx theme

## Sample Page

http://hachibeedi.github.io/Sphinx-hachibee-theme/index.html


## how to use

```bash
pip install hachibee-sphinx-theme
```

change `conf.py` in your sphinx source directory

```python:conf.py
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
