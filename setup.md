pacman -Q | grep gnustep</br>

pacman -S mingw-w64-x86_64-gnustep-base</br> mingw-w64-x86_64-gnustep-make</br>

find /mingw64 -name Foundation.h</br>

/mingw64/include/GNUstep/Foundation/Foundation.h</br>

source /mingw64/share/GNUstep/Makefiles/GNUstep.sh</br>

gnustep-config --objc-flags</br>

For UI</BR>
pacman -S mingw-w64-x86_64-gnustep-gui</BR>
pacman -S mingw-w64-x86_64-gnustep-back</BR>
pacman -S \</BR>
  mingw-w64-x86_64-libobjc2 \</BR>
  mingw-w64-x86_64-gnustep-make \</BR>
  mingw-w64-x86_64-gnustep-base \</BR>
  mingw-w64-x86_64-gnustep-gui \</BR>
  mingw-w64-x86_64-gnustep-back</BR>

pacman -S --needed \
  mingw-w64-x86_64-clang \
  mingw-w64-x86_64-make \
  mingw-w64-x86_64-gcc

cd ~
git clone https://github.com/gnustep/apps-gorm.git
cd apps-gorm
make
make install

which gorm
gorm





source /mingw64/share/GNUstep/Makefiles/GNUstep.sh</BR>

gnustep-config --gui-libs</BR>

./app</BR>
