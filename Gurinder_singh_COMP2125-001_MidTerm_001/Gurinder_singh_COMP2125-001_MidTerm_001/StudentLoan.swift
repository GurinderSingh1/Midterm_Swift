//
//  StudentLoan.swift
//  Gurinder_singh_COMP2125-001_MidTerm_001
//
//  Created by Gurinder Singh on 2020-06-23.
//  Copyright © 2020 Gurinder Singh. All rights reserved.
//

import Foundation
private var StudentLoanCount: Int = 0
public class StudentLoan{
    public private(set) var name : String = ""
    public private(set) var loanNumber: Int = 0
    public var loanAmount : Double = 1.0{
        didSet {
     if loanAmount < 0.0 {
            print(" loan amount should not be negative\(oldValue)")
            loanAmount = oldValue
        }
        }
    }
    
    public var duration : Int = 3{
        didSet{
            if duration < 3 || duration > 5 {
                print("duration should be 3 to 5 years\(oldValue)")
                duration = oldValue
            }
            
        }
    }
    
    public var yearlyInterest: Float = 2.0{
        didSet {
            if yearlyInterest < 2.0 || yearlyInterest > 5.0 {
                print("value should be between 2 to 5\(oldValue)")
                yearlyInterest = oldValue
                
            }
        }
    }
    
// defalut Init
    
    public init(){
    }
    
    //initializer
    public init(name: String, loanNumber: Int, loanAmount : Double, duration: Int, yearlyInterest: Float) {
        self.name = name
        self.loanNumber = loanNumber

    if yearlyInterest >= 2.0 && yearlyInterest <= 5.0{
    self.yearlyInterest = yearlyInterest;
    }
        if loanAmount > 0 {
            self.loanAmount = loanAmount;
        }
        if duration >= 3 && duration <= 5{
            self.duration = duration
        }
    }
    public func taxExemption(tax: Double) {
      var tax = loanAmount * (0.01)
}
    public func CalculateMonthlyInstallments(amount : Double ) -> Double{
        var amount = ((loanAmount - (loanAmount * (0.01))) * Double(yearlyInterest)) / Double(duration  * 12)
    }
    
    public var description: String {
        return String(format:"%@: %@\n%@: %@\n%@: %@\n%@: %@\n%@: %@",
        "Student Name: ", name,
        "Student Loan Number: ", loanNumber,
        "Yearly Interest Rate: ", yearlyInterest,
        "Student Loan Amount: ", loanAmount,
        "Duration: ", duration, "yrs"
        )
    } // end property
}

