taskkill /IM managemultipleopenwindows.exe /F
windres resource.rc -o resource.o
g++ -std=c++17 ManageMultipleOpenWindows.cpp resource.o -o ManageMultipleOpenWindows -lgdi32 -luser32 -lpsapi -lcomctl32 -static-libgcc -static-libstdc++ -static -mwindows -lpthread -O3 -s -DNDEBUG
start "" "ManageMultipleOpenWindows.exe"