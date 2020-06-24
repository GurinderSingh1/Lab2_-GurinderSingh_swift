//References: IOS How to Develop by Deitel and Deitel
// Access modifiers can be public, internal or private
import Foundation
public class BankAccount {
    // declaring varialbles
    public var accountNumber: Int = 0
    public var customerName: String = ""
    
    public var yearlyInterestRate:Double = 0.0 {
        // writting the didSet method
        didSet {
            if yearlyInterestRate <= 0.1 && yearlyInterestRate >= 2.0 {
                print ("Interest Rate is invalid, resetting to \(oldValue)")
            }
        }
    }
    
    public private(set) var accountBalance:Double = 10.00 {
        didSet {
            if accountBalance < 0.00 {
                print ("Account Balance is invalid, resetting to \(oldValue)")
            }
        }
    }
    // default constructor
    public init() {
        
    }
    // declaring the constructor with parameters
    public init (accountNumber: Int, customerName: String, yearlyInterestRate: Double, accountBalance: Double) {
        self.accountNumber = accountNumber
        self.customerName = customerName
        
        if yearlyInterestRate >= 0.1 && yearlyInterestRate <= 2.00 {
            self.yearlyInterestRate = yearlyInterestRate
        }
        
        if accountBalance > 0.00 {
            self.accountBalance = accountBalance
        }
    }
    
    public func credit(amount: Double) {
        if accountBalance > 0.0 {
            accountBalance = accountBalance + amount
        }
    } // end method
    
    // withdraw (subtract) a valid amount from the Account
    public func debit(amount: Double) {
        if amount > 0.0 {
            if  accountBalance - amount >= 0.0 {
                accountBalance = accountBalance - amount
            }
        }
    }
    // description format to display info
    public var Description: String {
     return String("Customer Name: \(customerName) \nAccount Number: \(accountNumber) \nAccount Balance: \(accountBalance) \nYearly Interest Rate: \(yearlyInterestRate)\n")
     
    }
}
