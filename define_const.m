/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      define_const.m \
      -o define_const \
      `gnustep-config --base-libs`

./define_const

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

    #define aDefineInt 42
    #define aDefineFloat 42.00
    #define aDefineFloat2 .4200e2
    #define aDefineFloat3 4200.00e-2

    const int aConstInt = 42;
    const float aConstFloat = 42.00;
    const float aConstFloat2 = .4200e2;
    const float aConstFloat3 = 4200.00e-2;

    NSLog(@" aDefineInt = %i", aDefineInt);
    NSLog(@" aDefineFloat = %.2f", aDefineFloat);
    NSLog(@" aDefineFloat2 = %.2f", aDefineFloat2);
    NSLog(@" aDefineFloat3 = %.2f", aDefineFloat3);

    NSLog(@" aConstInt = %i", aConstInt);
    NSLog(@" aConstFloat = %.2f", aConstFloat);
    NSLog(@" aConstFloat2 = %.2f", aConstFloat2);
    NSLog(@" aConstFloat3 = %.2f", aConstFloat3);

    NSLog(@" A \"\\backlash with double quotes\" on two lines");
}