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

        //Input for Binary search tree
        let treeElements = [4,33,53,134,1,2,433,600,132,42,667]
        print("Input elements  : \(treeElements)")
        
        //Binary Search Tree object initiaization
        let bstObj : CustomBST = CustomBST()
        
        //Insert elements to the tree
        for index in (0..<treeElements.count) {
            bstObj.insert(element: treeElements[index])
        }
        
        print("\nInorder :")
        bstObj.inorder(node: bstObj.root!)
        
        print("\nPreorder :")
        bstObj.preorder(node: bstObj.root!)
        
        print("\nPostorder :")
        bstObj.postorder(node: bstObj.root!)
        
        print("\nSearch : 53")
        bstObj.search(element: 53)
        
        print("\nSearch : 667")
        bstObj.search(element: 667)
        
    }
}

