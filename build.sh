#!/bin/sh

cat \
	src/jsmpeg.js \
	src/video-element.js \
	src/player.js \
	src/buffer.js \
	src/ajax.js \
	src/ajax-progressive.js \
	src/websocket.js \
	src/ts.js \
	src/decoder.js \
	src/mpeg1.js \
	src/mp2.js \
	src/webgl.js \
	src/canvas2d.js \
	src/webaudio.js \
	> index.js

echo "\ntypeof module !== 'undefined' && (module.exports = JSMpeg);\n" >> index.js

uglifyjs index.js -o jsmpeg.min.js
