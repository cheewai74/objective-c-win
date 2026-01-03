/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      condition.m \
      -o condition \
      `gnustep-config --base-libs`

./condition

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

    int a = 5;
    int b = 6;

    if(a == b) NSLog(@"a is equal to b");
    if(a != b) NSLog(@"a is not equal to b");
    if(a > b) NSLog(@"a is more than b");
    if(a < b) NSLog(@"a is less than b");
    if(a >= b) NSLog(@"a is greater than or equal to  b");
    if(a <= b) NSLog(@"a is lesser than or equal to b");

    if(!(a == b)) NSLog(@"a is NOT (equal to b)");

    if((a == b) || (a = --b )) NSLog(@"a is equal to b or a is equal to --b");

    if((a <= b) && (a < ++b )) NSLog(@"a is less than or equal to b, and a is less than ++b");

    if(a == b) NSLog(@"a is equal to b");
    
    if(a == b) { 
        NSLog(@"a is equal to b");
     }
     else{
        NSLog(@"a is not equal to b");
     }

    BOOL z = (a == b);
    if (!z) NSLog(@"a is NOT( equal to b )");
    BOOL  y = (a > b);
    if (y != YES) NSLog(@"a is NOT (greater than b)");
}