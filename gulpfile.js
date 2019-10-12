var gulp = require('gulp'),
sass = require('gulp-sass');
sass.compiler = require('node-sass');

gulp.task('default', ['copy', 'sass'], function () {
  gulp.watch('src/upload/**/*', ['copy']);
  gulp.watch('./scss/**/*.scss', ['sass']);
});

gulp.task('copy', function () {
  gulp.src('./src/upload/**/*')
    .pipe(gulp.dest('./www/'))
});

gulp.task('sass', function () {
  return gulp.src('./scss/style.scss')
    .pipe(sass({outputStyle: 'expanded'}).on('error', sass.logError))
    .pipe(gulp.dest('./src/upload/catalog/view/theme/default/stylesheet/'));
});
