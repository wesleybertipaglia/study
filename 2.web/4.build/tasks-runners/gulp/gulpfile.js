import gulp from 'gulp'
import gulpSass from 'gulp-sass'
import dartSass from 'sass'
import autoprefixer from 'gulp-autoprefixer'
import cleancss from 'gulp-clean-css'
import terser from 'gulp-terser'
import imagemin, { mozjpeg, optipng } from 'gulp-imagemin'
import webp from 'gulp-webp'

const { src, dest, watch, series } = gulp
const sass = gulpSass(dartSass)

// sass
function compileSass() {
  return src('src/styles/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(autoprefixer())
    .pipe(cleancss())
    .pipe(dest('dist/styles/'))
}

// js
function jsMinify() {
  return src('src/scripts/*.js').pipe(terser()).pipe(dest('dist/scripts/'))
}

// images
function optimizeImgs() {
  return src('src/images/*.{jpg,png}')
    .pipe(
      imagemin([
        mozjpeg({ quality: 80, progressive: true }),
        optipng({ optimizationLevel: 2 }),
      ])
    )
    .pipe(dest('dist/images'))
}

function convertToWebp() {
  return src('dist/images/*.{jpg,png}').pipe(webp()).pipe(dest('dist/images'))
}

// create watchtask
function watchTask() {
  watch('src/styles/*.scss', compileSass)
  watch('src/scripts/*.js', jsMinify)
  watch('src/images/*.{jpg,png}', optimizeImgs)
  watch('src/images/*.{jpg,png}', convertToWebp)
}

// default
export default series(
  compileSass,
  jsMinify,
  optimizeImgs,
  convertToWebp,
  watchTask
)
