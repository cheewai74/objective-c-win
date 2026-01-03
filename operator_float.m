/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      operator_float.m \
      -o operator_float \
      `gnustep-config --base-libs`

./operator_float

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

float a, b, c;
a = 2;
b = 3;

c = a + b;
NSLog(@" a + b = %f", c);

c = b + a;
NSLog(@" b + a = %f", c);

c = a - b;
NSLog(@" a - b = %f", c);

c = b - a;
NSLog(@" b - a = %f", c);

c = a * b;
NSLog(@" a * b = %f", c);

c = a * b + 5;
NSLog(@" a * b + 5 = %f", c);

c = a * (b + 5);
NSLog(@" a * (b + 5) = %f", c);

c = (a * b) + 5;
NSLog(@" (a * b) + 5) = %f", c);

c = b * a;
NSLog(@" b * a = %f", c);

c = a / b;
NSLog(@" a / b = %f", c);

c = b / a;
NSLog(@" b / a = %f", c);

}