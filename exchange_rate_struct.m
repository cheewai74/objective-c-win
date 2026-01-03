/*

clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      exchange_rate_struct.m \
      -o exchange_rate_struct \
      `gnustep-config --base-libs`

./exchange_rate_struct

struct{
    type member1Name;
    type member2Name;
};

*/

#import <Foundation/Foundation.h>

// struct budget {
//     float exchangeRate;
//     double budget;
//     double euroTransaction;
// };

typedef struct {
    float exchangeRate;
    double budget;
    double euroTransaction;
} budget;

int main(int argc, const char *argv[]){

    // struct budget vacationBudget;
    budget vacationBudget;
    
    vacationBudget.exchangeRate = 1.2500;
    vacationBudget.budget = 1000.00;

    vacationBudget.budget -= 100;
    NSLog(@"Converting 100 US dollars into uros leaves $%0.2F", vacationBudget.budget);
    vacationBudget.euroTransaction = 100 * vacationBudget.exchangeRate;
    vacationBudget.budget -= vacationBudget.euroTransaction;
    NSLog(@"Charging 100 euros leaves $%.2f", vacationBudget.budget);

    return 0;
}
