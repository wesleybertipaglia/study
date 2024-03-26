module.exports = function (grunt) {
  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    uglify: {
      options: {
        banner:
          '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n',
      },
      build: {
        src: 'src/scripts/*.js',
        dest: 'dist/script.min.js',
      },
    },
    sass: {
      options: {
        sourceMap: true,
      },
      dist: {
        files: {
          'dist/styles.css': 'src/styles/styles.scss',
        },
      },
    },
    imagemin: {
      dynamic: {
        files: [
          {
            expand: true,
            cwd: 'src/images/',
            src: ['**/*.{png,jpg,gif}'],
            dest: 'dist/images/',
          },
        ],
      },
    },
  })

  grunt.loadNpmTasks('grunt-contrib-uglify')
  grunt.loadNpmTasks('grunt-contrib-sass')
  grunt.loadNpmTasks('grunt-contrib-imagemin')

  grunt.registerTask('default', ['uglify', 'sass', 'imagemin'])
}
