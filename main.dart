import 'BankAccount.dart';

void main() {
  // Requirement 2: Using both constructors
  BankAccount account1 = BankAccount('A12345', 1000);
  BankAccount account2 = BankAccount.namedConstructor('B67890');

  // Perform deposit and withdrawal operations
  print('\nAccount 1 Info:');
  account1.displayAccountInfo();
  account1.deposit(500); // Valid deposit
  account1.withdraw(200); // Valid withdrawal
  account1.withdraw(1500); // Insufficient balance
  account1.deposit(-50); // Invalid deposit
  account1.displayAccountInfo();

  print('\nAccount 2 Info:');
  account2.displayAccountInfo();
  account2.deposit(300); // Valid deposit
  account2.withdraw(100); // Valid withdrawal
  account2.withdraw(500); // Insufficient balance
  account2.displayAccountInfo();
}