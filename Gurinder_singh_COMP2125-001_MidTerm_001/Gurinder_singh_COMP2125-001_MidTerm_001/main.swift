//
//  main.swift
//  Gurinder_singh_COMP2125-001_MidTerm_001
//
//  Created by Gurinder Singh on 2020-06-23.
//  Copyright © 2020 Gurinder Singh. All rights reserved.
//

import Foundation
func formatAccountString(student: StudentLoan) -> String {
    return student.name + "'s loan number: " + Int(student.loanNumber)+"and Loan amount:"+Double(student.loanAmount)+"Duration is: "+Int(student.duration)+"yearly Interest:"
    Float(student.yearlyInterest);
}
let Std1 = StudentLoan();
let Std2 = StudentLoanExtension(loanNumber: 1, loanAmount: 1000000.00,name: "Gurinder" );
let Std3 = StudentLoan(name: "Manjot",loanNumber:  121,loanAmount: 100000.32,duration:  3,yearlyInterest: 3);


print(formatAccountString(student: Std1))
print(formatAccountString(student: Std3))

Std3.CalculateMonthlyInstallments(amount: <#T##Double#>)

