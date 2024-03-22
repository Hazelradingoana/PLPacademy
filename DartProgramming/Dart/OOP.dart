import 'dart:io';

// Interface definition
abstract class Account {

  void deposit(double amount);
  void withdraw(double amount);

}


// Base class
class AccountBase implements Account {

  double balance = 0.0;

  @override
  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");

  }

  @override
  void withdraw(double amount) {

    if (balance < amount) {
      print("Insufficient balance");
      return;
    }else{

      print("Withdrawn: $amount");
      balance -= amount;
    }
  }

  void showBalance() {
    print("Balance: $balance");
  }

}

// Inherited class

class SavingsAccount extends AccountBase {

  double interest;
  
  SavingsAccount(this.interest);

  void addInterest() {
    balance += balance * interest;
    print("Interest added: ${balance * interest}");
  }

}

// Class that reads data from a file and initializes an instance

class CurrentAccount extends AccountBase {

  String AccountHolder;

  CurrentAccount(this.AccountHolder);


  void displayHolder() {
    print("Account Holder: $AccountHolder");
  }


}

// Method demonstrating the use of a loop


void simulateAccount(Account account) {

  for (var i = 1; i <= 2; i++) {
    account.deposit(1000);
  }

  for (var i = 1; i <= 1; i++) {
    account.withdraw(500);
  }

}


void main(){

    // Create instances of classes

  var savings = SavingsAccount(0.8);
  var current = CurrentAccount("Hazel Radi");

    // Demonstrate inheritance and method overriding

  savings.deposit(5000);
  savings.addInterest();
  savings.showBalance();

  current.deposit(1000);
  current.withdraw(400);
  current.showBalance();
  current.displayHolder();

    // Demonstrate the use of a loop

  simulateAccount(savings);
  savings.showBalance();

}