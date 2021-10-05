//
//  Employee.swift
//  EmployeeWageProblem
//
//  Created by Madan AR on 05/10/21.
//

import Foundation

class Employee{
    
    let WAGE_PER_HOUR: Int
    let FULL_DAY_HOURS: Int = 8
    let PART_TIME_HOURS: Int = 4
    let WORDING_DAYS_PER_MONTH = 20
    let TOTAL_WORKING_DAYS: Int
    let TOTAL_WORKING_HOURS: Int
    
    init(wagePerHour: Int, totalWorkingDays: Int, totalWorkingHours : Int) {
        self.WAGE_PER_HOUR = wagePerHour
        self.TOTAL_WORKING_DAYS = totalWorkingDays
        self.TOTAL_WORKING_HOURS = totalWorkingHours
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
    
    func isFullTime() -> Bool {
        return Bool.random()
    }
  
}
