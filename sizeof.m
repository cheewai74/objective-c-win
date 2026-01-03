/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      sizeof.m \
      -o sizeof \
      `gnustep-config --base-libs`

./sizeof

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){
    int i;
    float f = 42.9;

    NSLog(@" Cast (int)f = %i  ", (int)f);
    NSLog(@" A char = %i bytes", sizeof(char));
    NSLog(@" A unsigned char = %i bytes", sizeof(unsigned char));
    NSLog(@" A short = %i bytes", sizeof(short));
    NSLog(@" An unsigned short = %i bytes", sizeof(unsigned short));
    NSLog(@" An int = %i bytes", sizeof(int));
    NSLog(@" An unsigned int = %i bytes", sizeof(unsigned int));
    NSLog(@" A float = %i bytes", sizeof(float));
    NSLog(@" A double = %i bytes", sizeof(double));
    NSLog(@" A long = %i bytes", sizeof(long));
    NSLog(@" A long long = %i bytes", sizeof(long long));
}