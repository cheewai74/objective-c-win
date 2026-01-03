/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      operator_double.m \
      -o operator_double \
      `gnustep-config --base-libs`

./operator_double

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

double a, b, c, d;
a = 4.2;
b = 4.2e1;
d = 4.2e-1;

NSLog(@" a=%f, b=%f, d=%f",a, b, d);

// c = a + b;
// NSLog(@" a + b = %f", c);

// c = b + a;
// NSLog(@" b + a = %f", c);

// c = a - b;
// NSLog(@" a - b = %f", c);

// c = b - a;
// NSLog(@" b - a = %f", c);

// c = a * b;
// NSLog(@" a * b = %f", c);

// c = a * b + 5;
// NSLog(@" a * b + 5 = %f", c);

// c = a * (b + 5);
// NSLog(@" a * (b + 5) = %f", c);

// c = (a * b) + 5;
// NSLog(@" (a * b) + 5) = %f", c);

// c = b * a;
// NSLog(@" b * a = %f", c);

// c = a / b;
// NSLog(@" a / b = %f", c);

// c = b / a;
// NSLog(@" b / a = %f", c);

}