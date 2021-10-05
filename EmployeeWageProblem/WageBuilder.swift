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
            break
        case false:
            DailyWage = PART_TIME_HOURS * WAGE_PER_HOUR
            break
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
    
    func calculateWage(){
        var totalDaysCount = 0
        var totalHoursCount = 0
        
        while totalDaysCount < TOTAL_WORKING_DAYS && totalHoursCount < TOTAL_WORKING_HOURS {
            var dailyHoursCount: Int = 0
            
            if isPresent(){
                switch isFullTime(){
                case true:
                    dailyHoursCount = FULL_DAY_HOURS
                    break
                case false:
                    dailyHoursCount = PART_TIME_HOURS
                }
            }
            
            totalDaysCount += 1
            totalHoursCount += dailyHoursCount
            print("day : ", totalDaysCount, "  hours : ", dailyHoursCount)
        }
        let totalWage = totalHoursCount * WAGE_PER_HOUR
        print("total wage of employee", totalWage)
    }
}
