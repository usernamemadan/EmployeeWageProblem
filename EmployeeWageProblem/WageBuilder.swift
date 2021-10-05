//
//  WageBuilder.swift
//  EmployeeWageProblem
//
//  Created by Madan AR on 05/10/21.
//

import Foundation

class WageBuilder: Employee {

    func calculateDailyWage() -> Int {
        let DailyWage: Int

        if !isPresent() {
            DailyWage = 0
            return DailyWage
        }
        
        switch isFullTime() {
        case true:
            DailyWage = FULL_DAY_HOURS * WAGE_PER_HOUR
        case false:
            DailyWage = PART_TIME_HOURS * WAGE_PER_HOUR
        }
        print("daily wage of employee : ", DailyWage)
        
        return DailyWage
    }
    
    func calculateMonthlyWage(){
        var monthlyWage: Int = 0
        for _ in 1...WORDING_DAYS_PER_MONTH{
            monthlyWage += calculateDailyWage()
        }
        print("Monthly wage of employee : ", monthlyWage)
    }
}
