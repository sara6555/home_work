import 'dart:math';

void main() {
  LoanProcessingSystem system = LoanProcessingSystem();

  system.applyLoan(PersonalLoan(borrowerName: "Ali", loanAmount: 30000));
  system.applyLoan(HomeLoan(borrowerName: "Omar", loanAmount: 600000));
  system.applyLoan(CarLoan(borrowerName: "Sara", loanAmount: 60000));

  system.calculateInstallments(12);
}

abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan({
    required this.borrowerName,
    required this.loanAmount,
    required this.interestRate,
  });

  double calculateMonthlyInstallment(int months) {
    double monthlyInterestRate = interestRate / 12;
    return (loanAmount *
            monthlyInterestRate *
            pow(1 + monthlyInterestRate, months)) /
        (pow(1 + monthlyInterestRate, months) - 1);
  }
}

class PersonalLoan extends Loan {
  PersonalLoan({required String borrowerName, required double loanAmount})
      : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: 0.10);
}

class HomeLoan extends Loan {
  HomeLoan({required String borrowerName, required double loanAmount})
      : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: loanAmount > 500000 ? 0.095 : 0.08);
}

class CarLoan extends Loan {
  CarLoan({required String borrowerName, required double loanAmount})
      : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount > 50000 ? loanAmount * 1.02 : loanAmount,
            interestRate: 0.07);
}

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
    print("Loan applied successfully for ${loan.borrowerName}");
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
          "Borrower: ${loan.borrowerName}, Monthly Installment: ${installment.toStringAsFixed(2)}");
    }
  }
}
