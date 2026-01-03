/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      exchange_rate_class.m \
      -o exchange_rate_class \
      `gnustep-config --base-libs`

./exchange_rate_class

Declaring class interface

@interface ClassName: ItsSuperclass{
    instance variable declarations
}
method declarations   
@end

@implementation ClassName // You are about to present the code  that implements a class.
@end

*/
#import <Foundation/Foundation.h>

@interface Budget : NSObject {
    float exchangeRate;
    double budget;
    double exchangeTransaction;
}

- (void) createBudget: (double) aBudget withExchangeRate:(double)anExchangeRate;
- (void) spendDollars: (double)dollars;
- (void) chargeForeignCurrenc: (double)foreignCurrency;

@end

@implementation Budget

- (void)createBudget:(double)aBudget withExchangeRate:(double)anExchangeRate
{
    exchangeRate = anExchangeRate;
    budget = aBudget;
}

- (void) spendDollars:(double)dollars
{
    budget -= dollars;
    NSLog( @"Converting %.2f US dollars into foreign currency leaves $%.2f", dollars, budget );
}

- (void) chargeForeignCurrenc:(double)foreignCurrency
{
    exchangeTransaction = foreignCurrency * exchangeRate;
    budget -= exchangeTransaction;
    NSLog( @"Charging %.2f in foreign currency leaves $%.2f", foreignCurrency, budget );
}

@end

int main(int argc, const char * argv[])
{
    double numberDollarsInEuroland = 100;
    double numberEuros = 100;
    double numberDollarsInPoundland = 100;
    double numberPounds = 100;
    
    Budget *europeBudget = [Budget new];
    [europeBudget createBudget:1000.00 withExchangeRate:1.2500];
    [europeBudget spendDollars:numberDollarsInEuroland];
    [europeBudget chargeForeignCurrenc:numberEuros];
    
    Budget *englandBudget = [Budget new];
    [englandBudget createBudget:2000.00 withExchangeRate:1.5000];
    [englandBudget spendDollars:numberDollarsInPoundland];
    [englandBudget chargeForeignCurrenc:numberPounds];
    
    return 0;
}