//
//  ViewController.swift
//  ICAlgorithm
//
//  Created by iCode on 12/10/18.
//  Copyright © 2018 iCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Input for Array with duplicate elements
        let arrayElements = [4,33,53,134,1,2,433,4,2,4,1,600,132,42,667,4]
        print("Input elements  : \(arrayElements)")
        
        //Remove Duplicate elements. Init Array
        let arrayOperationObj = ArrayOperation(desc: "Array Operation", array: arrayElements)
        
        //Retrieve remove operation
        let removeDuplicateOperation = arrayOperationObj.performOperation(type: .OperationTypeRemoveDuplicateElements)
        print(removeDuplicateOperation())
    }
}

