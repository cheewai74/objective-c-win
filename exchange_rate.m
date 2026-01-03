/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      exchange_rate.m \
      -o exchange_rate \
      `gnustep-config --base-libs`

./exchange_rate

*/

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]){

    float exchangeRate = 1.2500;
    double budget = 1000.00;
    double euroTransaction;

    budget -= 100;
    NSLog(@"Converting 100 US dollars into uros leaves $%0.2F", budget);
    euroTransaction = 100 * exchangeRate;
    budget -= euroTransaction;
    NSLog(@"Charging 100 euros leaves $%.2f", budget);

    return 0;
}
