#!/bin/sh

cat \
	src/jsmpeg.js \
	src/player.js \
	src/buffer.js \
	src/ajax-progressive.js \
	src/ts.js \
	src/decoder.js \
	src/mpeg1.js \
	src/canvas2d.js \
	> index.js

echo "\ntypeof module !== 'undefined' && (module.exports = JSMpeg);\n" >> index.js

uglifyjs index.js -o jsmpeg.min.js
