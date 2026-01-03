/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      exchange_rate_funct.m \
      -o exchange_rate_funct \
      `gnustep-config --base-libs`

./exchange_rate_funct

struct{
    type member1Name;
    type member2Name;
};

*/

#import <Foundation/Foundation.h>

typedef struct {
    float exchangeRate;
    double budget;
    double euroTransaction;
} budget;

budget vacationBudget;

void spendDollars (double dollars){
    vacationBudget.budget -= dollars;
}

void chargeEuros(double euros){
    vacationBudget.euroTransaction = euros * vacationBudget.exchangeRate;
    vacationBudget.budget -= vacationBudget.euroTransaction;
}

int main(int argc, const char *argv[]){

    vacationBudget.exchangeRate = 1.2500;
    vacationBudget.budget = 1000.00;
    double numberDollars = 100;
    double numberEuros = 100;

    spendDollars(numberDollars);
    NSLog(@"Converting %.2f US dollars into euros leaves $%0.2F", numberDollars, vacationBudget.budget);

    chargeEuros(numberEuros);
    NSLog(@"Charging %.2f euros leaves $%.2f", numberEuros, vacationBudget.budget);
    return 0;

}