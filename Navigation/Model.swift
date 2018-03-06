//
//  Model.swift
//  Navigation
//
//  Created by Student on 3/5/18.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation

struct FoodData {
    var name:String
    var calories:Double
    var tally:Int
}

class FoodRecorder {
    
    private var foods:[FoodData]
    
    init() {
        foods = []
    }
    
    func loadData() {
        foods.append(FoodData(name: "Popcorn", calories: 106.0, tally: 0))
        foods.append(FoodData(name: "Coke", calories: 140.0, tally: 0))
        foods.append(FoodData(name: "Potato Chips", calories: 152.0, tally: 0))
    }
    
    func increaseTally(forItem i:Int) {
        foods[i].tally += 1
    }
    
    func getCalories(forItem i:Int) -> Double {
        return foods[i].calories * Double(foods[i].tally)
    }
    
    func report(forItem i:Int) -> String {
        return "The calories consumed for \(foods[i].name) is \(getCalories(forItem: i))"
    }
    
    func totalCalories() -> Double {
        var total:Double = 0.0
        for n in 0 ... foods.count-1 {
            total += getCalories(forItem: n)
        }
        return total
    }
    
    func combinedReport() -> String {
        var rep:String = ""
        for n in 0 ... foods.count-1 {
            rep += report(forItem: n) + ", "
        }
        rep += "Total calories consumed: \(totalCalories())"
        return rep
    }
    
    func reset() {
        for n in 0 ... foods.count-1 {
            foods[n].tally = 0
        }
    }
    
}
