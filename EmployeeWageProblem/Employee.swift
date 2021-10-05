//
//  Employee.swift
//  EmployeeWageProblem
//
//  Created by Madan AR on 05/10/21.
//

import Foundation

class Employee{
    
    let WAGE_PER_HOUR: Int
    let FULL_DAY_HOURS: Int
    
    init(wagePerHour: Int,fullDayHours: Int) {
        self.WAGE_PER_HOUR = wagePerHour
        self.FULL_DAY_HOURS = fullDayHours
    }
    
    func isPresent() -> Bool {
        return Bool.random()
    }
    func checkAttendence() {
        if isPresent() {
            print("employee is present")
        }
        else{
            print("employee is absent")
        }
    }
    
    func calculateDailyWage() {
        print("daily wage of employee : ", WAGE_PER_HOUR * FULL_DAY_HOURS)
    }
}
