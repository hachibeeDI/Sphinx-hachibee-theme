=========================================================
Sphinx hachibee theme
=========================================================

Sample Page of HEAD revision
=============================================

http://hachibeedi.github.io/Sphinx-hachibee-theme/index.html


Characteristic
=================================================================

- Simple and clean color combinations.
- Japanese friendly font declaration.
- Responsive stylings.

ScreenShot
------------------------------------------------------------

.. image :: https://raw.github.com/hachibeeDI/Sphinx-hachibee-theme/master/example/screenshot.png


Installation
=================================================================

.. code-block:: bash

   pip install hachibee-sphinx-theme


How to use
=============================================


change `conf.py` in your sphinx source directory

.. code-block:: python
   # conf.py

   extensions = [
      # ... ...
      'hachibee_sphinx_theme',
   ]

   html_theme = 'hachibee'
   # Add any paths that contain custom themes here, relative to this directory.
   import hachibee_sphinx_theme
   html_theme_path = [hachibee_sphinx_theme.get_html_themes_path()]



How to tweak the style
=============================================

If you don't like some styles(eg: font-size, font-family), You can add your own stylesheets.

First, you should add function `setup` is in your local `conf.py`.

.. code-block:: python

   # conf.py

   def setup(app):
       app.add_stylesheet('custom.css')


Second, create your stylesheet in `_static`.
Directory named `_static` is created on the root directory in your sources.


This is sample to remove button to back top is as below.

.. code-block:: bash

   echo "#raise-top {display: none; }" > source/_static/custom.css


Lastly, you apply the alteration to your project.

.. code-block:: bash

   make clean && make html


LICENCE
=================================================================

MIT
