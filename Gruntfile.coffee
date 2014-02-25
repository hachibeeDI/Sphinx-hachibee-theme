module.exports = (grunt)->
  'use strict'
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    watch:
      files: [
        'src/hachibee_sphinx_theme/hachibee/stylus/*.styl'
      ]
      tasks: ['stylus']

    stylus:
      compile:
        options:
          paths: ['/usr/local/lib/node_modules/nib/lib/']
        files:
          'src/hachibee_sphinx_theme/hachibee/static/main.css': 'src/hachibee_sphinx_theme/hachibee/stylus/main.styl'
          'src/hachibee_sphinx_theme/hachibee/static/genericons.css': 'src/hachibee_sphinx_theme/hachibee/stylus/genericons.styl'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.registerTask 'default', ['watch']
