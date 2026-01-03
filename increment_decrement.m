/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      increment_decrement.m \
      -o increment_decrement \
      `gnustep-config --base-libs`

./increment_decrement

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

    int a, b;

    a = 2;
    b = 3;

    NSLog(@" a++ = %i", a++);
    NSLog(@" a now = %i", a);

    a = 2;
    NSLog(@" ++a = %i", ++a);
    NSLog(@" a now = %i", a);

    a = 2;
    NSLog(@" a-- = %i", a--);
    NSLog(@" a now = %i", a);

    a = 2;
    NSLog(@" --a = %i", --a);
    NSLog(@" a now = %i", a);
}