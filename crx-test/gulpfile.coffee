gulp = require("gulp")

gulp.task "manifest.json", ->
  gulp.src ["manifest.json"]
    .pipe gulp.dest("dist/")

gulp.task "html", ->
  gulp.src ["html/**/*.html"]
    .pipe gulp.dest("dist/html/")

gulp.task "coffee", ->
  coffee = require("gulp-coffee")
  gulp.src ["coffee/**/*.coffee"]
    .pipe coffee()
    .pipe gulp.dest("dist/js/")

gulp.task "build", [
  "manifest.json"
  "html"
  "coffee"
]

gulp.task "build/watch", ->
  gulp.watch ["manifest.json", "coffee/**/*.coffee", "html/**/*.html"], ["build"]

gulp.task "watch", [
  "build/watch"
]


