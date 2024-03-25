const { src, dest } = require('gulp')

function copyTask() {
  return src('index.js').pipe(dest('dist/'))
}

exports.copy = copyTask
