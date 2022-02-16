mkdir cmake-build-debug
cd cmake-build-debug

cmake -Wno-dev -G "Visual Studio 14 2015" -DCMAKE_BUILD_TYPE=Debug -DBUILD_CLAR=OFF -DBUILD_SHARED_LIBS=OFF -DSTATIC_CRT=OFF ../ 
cd ../

