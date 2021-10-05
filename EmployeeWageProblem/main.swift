//
//  main.swift
//  EmployeeWageProblem
//
//  Created by Madan AR on 05/10/21.
//

import Foundation

print("welcome to employee wage problem")
let wageBuilder = WageBuilder(wagePerHour: 20, totalWorkingDays: 20, totalWorkingHours: 100)

wageBuilder.checkAttendence()
wageBuilder.calculateDailyWage()
wageBuilder.calculateMonthlyWage()
wageBuilder.calculateWage()

