/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      operator.m \
      -o operator \
      `gnustep-config --base-libs`

./operator

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

int a, b, c;
a = 2;
b = 3;

c = a % b;
NSLog(@" a %% b = %i", c);

c = b % a;
NSLog(@" b %% a = %i", c);

c = a % a;
NSLog(@" a %% a = %i", c);

c = a + b;
NSLog(@" a + b = %i", c);

c = b + a;
NSLog(@" b + a = %i", c);

c = a - b;
NSLog(@" a - b = %i", c);

c = b - a;
NSLog(@" b - a = %i", c);

c = a * b;
NSLog(@" a * b = %i", c);

c = a * b + 5;
NSLog(@" a * b + 5 = %i", c);

c = a * (b + 5);
NSLog(@" a * (b + 5) = %i", c);

c = (a * b) + 5;
NSLog(@" (a * b) + 5) = %i", c);

c = b * a;
NSLog(@" b * a = %i", c);

c = a / b;
NSLog(@" a / b = %i", c);

c = b / a;
NSLog(@" b / a = %i", c);

}