/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      exchange_rate_funct_proto2.m \
      -o exchange_rate_funct_proto2 \
      `gnustep-config --base-libs`

./exchange_rate_funct_proto2

struct{
    type member1Name;
    type member2Name;
};

*/

#import <Foundation/Foundation.h>

typedef struct {
    float exchangeRate;
    double budget;
    // double euroTransaction;
    double exchangeTransactions;
} budget;

budget vacationBudgetEurope;
budget vacationBudgetEngland;

void spendDollars (budget* theBudget, double dollars);
void chargeForeignCurrency(budget* theBudget, double foreignCurrency);

int main(int argc, const char *argv[]){

    vacationBudgetEurope.exchangeRate = 1.2500;
    vacationBudgetEurope.budget = 1000.00;
    double numberDollarsInEngland = 100;
    double numberEuros = 100;

    vacationBudgetEngland.exchangeRate = 1.5000;
    vacationBudgetEngland.budget = 2000.00;
    double numberDollarsInPoundland = 100;
    double numberPounds = 100;

    spendDollars(&vacationBudgetEurope, numberDollarsInEngland);
    NSLog(@"Converting %.2f US dollars into euros leaves $%0.2F", numberDollarsInEngland, vacationBudgetEurope.budget);

    chargeForeignCurrency(&vacationBudgetEurope, numberEuros);
    NSLog(@"Charging %.2f euros leaves $%.2f", numberEuros, vacationBudgetEurope.budget);
    
    spendDollars(&vacationBudgetEngland, numberDollarsInPoundland);
    NSLog(@"Converting %.2f US dollars into euros leaves $%0.2F", numberDollarsInPoundland, vacationBudgetEngland.budget);


    chargeForeignCurrency(&vacationBudgetEngland, numberPounds);
    NSLog(@"Charging %.2f pounds leaves $%.2f", numberPounds, vacationBudgetEngland.budget);
    
    return 0;


}

void spendDollars (budget* theBudget, double dollars){
    theBudget->budget -= dollars;
}

void chargeForeignCurrency(budget* theBudget, double foreignCurrency){
    theBudget->exchangeTransactions = foreignCurrency*theBudget->exchangeRate;
    theBudget->budget -= theBudget -> exchangeTransactions;
}