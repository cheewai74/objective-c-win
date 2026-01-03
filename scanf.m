/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      scanf.m \
      -o scanf \
      `gnustep-config --base-libs`

./scanf

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

    int anInteger;
    NSLog(@"Enter an integer: ");
    scanf("%d", &anInteger); // Use %d format specifier and the address-of operator (&)
    NSLog(@"You entered: %d", anInteger);
    return 0;
}