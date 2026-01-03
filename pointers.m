/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      pointers.m \
      -o pointers \
      `gnustep-config --base-libs`

./pointers

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

    int anInteger = 42;
    int *anIntPointer= &anInteger;

    NSLog(@"anInteger = %i", anInteger);
    NSLog(@"*anIntPointer = %i", *anIntPointer);
    return 0;

}