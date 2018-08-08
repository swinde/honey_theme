
'use strict';

var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('sass', function(){
    return gulp.src('out/honey/src/scss/main.scss')
        .pipe(sass()) // Converts Sass to CSS with gulp-sass
        .pipe(gulp.dest('out/honey/src/css'))
});

gulp.task('watch', function(){
    gulp.watch('out/honey/src/scss/.scss', ['sass']);
    // Other watchers
})