#!/bin/bash

# emcmake python /opencv/platforms/js/build_js.py build_js --disable_wasm --build_test
emcmake python /opencv/platforms/js/build_js.py build_wasm --build_wasm --build_test
