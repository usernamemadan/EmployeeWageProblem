//
//  Employee.swift
//  EmployeeWageProblem
//
//  Created by Madan AR on 05/10/21.
//

import Foundation

class Employee{
    var isPresent: Int = 0;
    
    func checkAttendence(){
        isPresent = Int.random(in: 0...1)
        if isPresent == 1 {
            print("employee is present")
        }
        else{
            print("employee is absent")
        }
    }
}
