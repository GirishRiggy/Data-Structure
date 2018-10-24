//
//  CustomDE.swift
//  ICAlgorithm
//
//  Created by iCode on 24/10/18.
//  Copyright © 2018 iCode. All rights reserved.
//

import Foundation

enum Operation {
    case OperationTypeRemoveDuplicateElements
    
    func description() -> String {
        switch self {
        case .OperationTypeRemoveDuplicateElements:
            return "Remove Duplicate Elements"
        }
    }
}

class ArrayOperation {
    
    var array : [Int];
    var description : String
    
    init(desc : String, array : [Int]) {
        self.description = desc
        self.array = array
    }
    
    func performOperation(type: Operation) -> () -> [Int] {
        
        switch type {
        case  .OperationTypeRemoveDuplicateElements:
            return removeDuplicate
        }
    }
    
    func removeDuplicate() -> [Int] {
        
        var sortedArray = sortArray(array: array)
        var resultArray  = [Int]()
        var newIndex = 0
        
        for var index in 0..<array.count-1 {
            if sortedArray[index] != sortedArray[index+1] {
                resultArray.append(sortedArray[index])
                newIndex += 1
            }
            index += 1
        }
        
        resultArray.append(sortedArray[sortedArray.count - 1])
        
        return resultArray
    }
    
    func sortArray(array: [Int]) -> [Int] {
        var tempArray = array
        tempArray.sort()
        return tempArray
    }
    
}
