
// Homework: Advanced Dart - 2
// State: A BankAccount class with a balance.
// Event: Create methods to deposit and withdraw money. Prevent withdrawal if funds are insufficient.
// Execution: Create an account, deposit some money, try to withdraw more than the balance, and then withdraw a valid amount. Print the balance after each operation.

class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
    print('Deposited: $amount, New Balance: $_balance');
  }

  void withdraw(double amount) {
    if (amount > _balance) {
      print('Insufficient funds for withdrawal of $amount');
    } else {
      _balance -= amount;
      print('Withdrew: $amount, New Balance: $_balance');
    }
  }
}

void runBankAccountExample() {
  var account = BankAccount(100);
  account.deposit(50);
  account.withdraw(200);
  account.withdraw(75);
}
