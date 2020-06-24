// main.swift
// Using class Account's init method to initialize an Account's
// name property when the Account object is created
import Foundation // for NSNumberFormatter class

//
func formatAccountString(account: BankAccount) -> String {
    return account.customerName + "'s balance: " + String(account.accountBalance);
}

// create two account objects
let account1 = BankAccount(accountNumber: 983, customerName: "Jon Snow", yearlyInterestRate: 0.5, accountBalance: 50.00)
let account2 = BankAccount(accountNumber: 913, customerName: "Danaerys", yearlyInterestRate: 1.4, accountBalance: -7.53)
// printing using the description format
print(account1.Description)
print(account2.Description)

// getting the result using the formaAccountString Defined above
print(formatAccountString(account: account1))
print(formatAccountString(account: account2))
// get the yearly interest rate
print(account1.yearlyInterestRate)

// depositing of 10 dollars
var depositAmount = 10.00
print("\nDepositing " + String(depositAmount) + " into account1\n")
// crediting the 25 dollars to the account balance
account1.credit(amount: depositAmount)
//printing data using accountstring format
print(formatAccountString(account: account1))
print(formatAccountString(account: account2))




depositAmount = 30
print("\ndepositing " + String(depositAmount)  + " into account2\n")
account2.credit(amount: depositAmount)

print(formatAccountString(account: account1))
print(formatAccountString(account: account2))


// withdrawing from the account balance
var withdrawalAmount = 20.21
print("\nWithdrawing " + String(withdrawalAmount) + " from account1\n")
account1.debit(amount: withdrawalAmount)

print(formatAccountString(account: account1))
print(formatAccountString(account: account2))

withdrawalAmount = -100.00
print("\nWithdrawing " + String(withdrawalAmount) + " from account2\n")
account2.debit(amount: withdrawalAmount)

print(formatAccountString(account: account1))
print(formatAccountString(account: account2))
