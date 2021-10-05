//
//  WageBuilder.swift
//  EmployeeWageProblem
//
//  Created by Madan AR on 05/10/21.
//

import Foundation

class WageBuilder: Employee {

    func calculateDailyWage() {
        let DailyWage: Int
        
        if !isPresent() {
            DailyWage = 0
            return
        }
        if isFullTime() {
            DailyWage = FULL_DAY_HOURS * WAGE_PER_HOUR
        }
        else{
            DailyWage = PART_TIME_HOURS * WAGE_PER_HOUR
        }
        print("daily wage of employee : ", DailyWage)
    }
}
