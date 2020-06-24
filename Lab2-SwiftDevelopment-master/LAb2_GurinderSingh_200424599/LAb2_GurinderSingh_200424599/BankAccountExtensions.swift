//
//  BankAccountExtensions.swift
//  LAb2_GurinderSingh_200424599
//
//  Created by Gurinder Singh on 2020-06-23.
//  Copyright © 2020 Gurinder Singh. All rights reserved.

import Foundation
// declaring the count to run the deinitialze
public var count : Int = 0;

public class Bankaccountextension: BankAccount{
    // declaring the init custructor
    public convenience init(customerName: String, accountNumber: String) {
    self.init(customerName: customerName , accountNumber: accountNumber)
    }
    // interest function to calculate the interest amount
    public func Interest (amount : Double){
        var amount = accountBalance - accountBalance * Double(yearlyInterestRate)
        
    }
}

