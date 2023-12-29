md build
cd build
conan install .. -of . --build=missing > 1
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake  -DWITH_TEST=ON > 2
cmake --build . --config Release  > 3
::Release\test_package.exe
::start atom_image.jpg
