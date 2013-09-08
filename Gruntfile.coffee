
module.exports = (grunt) ->

	grunt.initConfig
		pkg: grunt.file.readJSON('package.json')

		clean:
			src:
				['generated']

		concat:
			js:
				src:	['src/static/js/**/*.js', 'src/static/lib/*.js']
				dest:	'generated/app.js'

		ngmin:
			deploy:
				src:	['generated/app.js']
				dest:	'generated/app.ngmin.js'
			dev:
				src:	['generated/app.js']
				dest:	'src/static/jsmin/app.js'

		uglify:
			deploy:
				src:	'generated/app.ngmin.js'
				dest:	'src/static/jsmin/app.min.js'

		sass:
			deploy:
				src:	['src/static/styles/style.scss']
				dest:	'src/static/styles/style.min.css'

		watch:
			sass:
				files:
					['src/static/styles/**.scss']
				tasks:
					['sass']
				options:
					livereload: true

			scripts:
				files:
					['src/static/js/**/*.js']
				tasks:
					['default']
				options:
					livereload: true

	grunt.loadNpmTasks 'grunt-contrib-concat'
	grunt.loadNpmTasks 'grunt-ngmin'
	grunt.loadNpmTasks 'grunt-contrib-uglify'
	grunt.loadNpmTasks 'grunt-contrib-sass'
	grunt.loadNpmTasks 'grunt-contrib-clean'
	grunt.loadNpmTasks 'grunt-contrib-watch'

	grunt.registerTask 'style', ['sass']
	grunt.registerTask 'default', ['build', 'clean']
	grunt.registerTask 'build', ['concat', 'ngmin', 'uglify', 'sass']
	grunt.registerTask 'noSass', ['concat', 'ngmin', 'uglify']
