my simple sphinx theme

.. code-block:: python
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
