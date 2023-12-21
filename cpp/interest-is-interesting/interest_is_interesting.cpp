// interest_rate returns the interest rate for the provided balance.
double interest_rate(double balance) {
    double interest = 0.0;

    if(balance < 0) interest = 3.213;
    else if(balance >= 0 and balance < 1000) interest = 0.5;
    else if(balance >= 1000 and balance < 5000) interest = 1.621;
    else interest = 2.475;

    return interest;
}

// yearly_interest calculates the yearly interest for the provided balance.
double yearly_interest(double balance) {
    double i_rate = interest_rate(balance);
    return balance * (i_rate / 100);
}

// annual_balance_update calculates the annual balance update, taking into
// account the interest rate.
double annual_balance_update(double balance) {
    double y_interest = yearly_interest(balance);
    return balance + y_interest;
}

// years_until_desired_balance calculates the minimum number of years required
// to reach the desired balance.
int years_until_desired_balance(double balance, double target_balance) {
    int years = 0;
    double current_balance = balance;

    while(current_balance < target_balance) {
        current_balance = annual_balance_update(current_balance);
        years++;
    }

    return years;
}
