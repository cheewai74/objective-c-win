/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      numerical.m \
      -o numerical \
      `gnustep-config --base-libs`

./numerical

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){
    int a, b, c;
    a = 5;
    b = 6;
    c = a + b;

    NSLog(@" a + b = %i", c);
    NSLog(@" a + b = %i", a + b);
    NSLog(@" a still = %i", a);
    NSLog(@" b still = %i", b);
}