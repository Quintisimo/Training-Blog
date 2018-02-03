axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
contentful   = require 'roots-contentful'
marked       = require 'marked'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.styl'),
    contentful(
      access_token: '6b8efe5567aabba6cda6af5fd76bda3fbf43707213ed96d6e0f757466f1925b4',
      space_id: '4ljlz98td630'
      content_types:
        blogPosts:
          id: 'blogPost',
          template: 'views/_post.pug'
    )
  ]

  locals:
    markdown: marked

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  pug:
    pretty: true
