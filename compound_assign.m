/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      compound_assign.m \
      -o compound_assign \
      `gnustep-config --base-libs`

./compound_assign

a *= b + 2  is equivalent to a = a * (b + 2)

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

    int a, b;
    a = 2;
    b = 3;

    NSLog(@" a += b = %i", a += b);
    NSLog(@" a now = %i", a);

    a = 2;
    NSLog(@" a -= b = %i", a -= b);
    a = 2;
    NSLog(@" a *= b = %i", a *= b);
    a = 2;
    NSLog(@" a /= b = %i", a /= b);

    b = 3;
    a = 2;
    NSLog(@" b %%= a = %i", b %= a);

    b = 3;
    a = 2;
    NSLog(@" a *= b + 2 = %i", a *= b + 2);

}