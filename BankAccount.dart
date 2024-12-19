class BankAccount {
  String accountID;
  double balance;

  // Constructor for accountID and initial balance
  BankAccount(this.accountID, this.balance);

  // Named constructor to initialize with accountID and balance = 0
  BankAccount.namedConstructor(this.accountID) : balance = 0;

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Error: Withdrawal amount must be positive.');
    } else if (amount > balance) {
      print('Error: Insufficient balance for withdrawal.');
    } else {
      balance -= amount;
      print('Withdrawal successful. Amount: \$${amount.toStringAsFixed(2)}');
    }
  }

  // Method to deposit money
  void deposit(double amount) {
    if (amount <= 0) {
      print('Error: Deposit amount must be positive.');
    } else {
      balance += amount;
      print('Deposit successful. Amount: \$${amount.toStringAsFixed(2)}');
    }
  }

  // Method to display account information
  void displayAccountInfo() {
    print('Account ID: $accountID');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
  }
}