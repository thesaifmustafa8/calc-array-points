//
//  main.swift
//  CalcArrayPoints
//
//  Created by Saif Mustafa on 4/6/17.
//  Copyright © 2017 saifm. All rights reserved.
//

import Foundation

// adds two incoming parameters
func add(left:Int, right:Int) -> Int {
    
    return left + right;
    
}

// subtracts two incoming parameters
func subtract(left:Int, right:Int) -> Int {
    
    return left - right;
    
}

// multiplies two incoming parameters
func multiply(left:Int, right:Int) -> Int {
    
    return left * right;
    
}

// divides two incoming parameters
func divide(left:Int, right:Int) -> Int {
    
    return left / right;
    
}

// generic math function to perform 4 possible operations
func mathOperation(left:Int, right:Int, operation: (Int, Int) -> Int) -> Int{
    
    return operation(left, right);
    
}

// gives sum of all elements of incoming array
func add(array: [Int]) -> Int {
    
    var sum = 0;
    
    for i in array {
        
        sum += i;
        
    }
    
    return sum;
    
}

// gives product of all elements of incoming array
func multiply(array: [Int]) -> Int {
    
    var product = 1;
    
    for i in array {
        
        product *= i;
        
    }
    
    return product;
    
}

// gives number of elements of the incoming array
func count(array: [Int]) -> Int {
    
    return array.count;
    
}

// gives average of all elements of the incoming array
func average(array: [Int]) -> Int {
    
    return add(array: array) / count(array: array);
    
}

// generic math function to perform 4 possible operations for arrays
func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    
    return operation(array);
    
}

// Takes in two points and returns their sum as another point
func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    
    return (p1.0 + p2.0, p1.1 + p2.1)
    
}

// Takes in two points and returns their difference as another point
func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    
    return (p1.0 - p2.0, p1.1 - p2.1)
    
}

// non-two-arity handle for addition
func add(coordinates: (Int, Int)...) -> (Int, Int) {
    
    var sumX = 0;
    var sumY = 0;
    
    for coordinate in coordinates {
        
        sumX += coordinate.0;
        sumY += coordinate.1;
        
    }
    
    return (sumX, sumY);
    
}

// non-two-arity handle for subtraction
func subtract(coordinates: (Int, Int)...) -> (Int, Int) {
    
    var diffX = 0;
    var diffY = 0;
    
    for coordinate in coordinates {
        
        diffX -= coordinate.0;
        diffY -= coordinate.1;
        
    }
    
    return (diffX, diffY);
    
}

// returns addtion of two integer type points as another point
func add(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    
    var sumInt : [String : Int] = [:];
    
    if(p1?["x"] != nil && p1?["y"] != nil &&
        p2?["x"] != nil && p2?["y"] != nil) {
        
        sumInt["x"] = (p1?["x"])! + (p2?["x"])!;
        sumInt["y"] = (p1?["y"])! + (p2?["y"])!;
        
    }
    
    return sumInt;
    
}

// returns difference of two integer type points as another point
func subtract(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    
    var diffInt : [String : Int] = [:];
    
    if(p1?["x"] != nil && p1?["y"] != nil &&
        p2?["x"] != nil && p2?["y"] != nil) {
        
        diffInt["x"] = (p1?["x"])! - (p2?["x"])!;
        diffInt["y"] = (p1?["y"])! - (p2?["y"])!;
        
    }
    
    return diffInt;
    
}

// returns addtion of two double type points as another point
func add(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    
    var sumDouble : [String : Double] = [:];
    
    if(p1?["x"] != nil && p1?["y"] != nil &&
        p2?["x"] != nil && p2?["y"] != nil) {
        
        sumDouble["x"] = (p1?["x"])! + (p2?["x"])!;
        sumDouble["y"] = (p1?["y"])! + (p2?["y"])!;
        
    }
    
    return sumDouble;
    
}

// returns addtion of two double type points as another point
func subtract(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    
    var diffDouble : [String : Double] = [:];
    
    if(p1?["x"] != nil && p1?["y"] != nil &&
        p2?["x"] != nil && p2?["y"] != nil) {
        
        diffDouble["x"] = (p1?["x"])! - (p2?["x"])!;
        diffDouble["y"] = (p1?["y"])! - (p2?["y"])!;
        
    }
    
    return diffDouble;
    
}
