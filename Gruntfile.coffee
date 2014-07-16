module.exports = (grunt)->
  'use strict'
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    watch:
      files: [
        'src/hachibee_sphinx_theme/hachibee/stylus/*.styl'
        'src/hachibee_sphinx_theme/hachibee/coffee/*.coffee'
      ]
      tasks: ['stylus', 'coffee']

    stylus:
      compile:
        options:
          paths: ['/usr/local/lib/node_modules/nib/lib/']
        files:
          'src/hachibee_sphinx_theme/hachibee/static/main.css': 'src/hachibee_sphinx_theme/hachibee/stylus/main.styl'
          'src/hachibee_sphinx_theme/hachibee/static/mobile.css': 'src/hachibee_sphinx_theme/hachibee/stylus/mobile.styl'
          'src/hachibee_sphinx_theme/hachibee/static/genericons.css': 'src/hachibee_sphinx_theme/hachibee/stylus/genericons.styl'

    coffee:
      compile:
        files:
          'src/hachibee_sphinx_theme/hachibee/static/main.js': [
            'src/hachibee_sphinx_theme/hachibee/coffee/menuselection.coffee'
            'src/hachibee_sphinx_theme/hachibee/coffee/phantom_header.coffee'
          ]

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.registerTask 'default', ['watch']
