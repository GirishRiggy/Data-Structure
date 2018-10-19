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
        
        let btObj = CustomBT()
        
        //Insert elements to the tree
        for index in (0..<treeElements.count) {
            btObj.insert(element: treeElements[index])
        }
        
        print("\nInorder :")
        btObj.inorder(btObj.root)
        
        print("\nPreorder :")
        btObj.preorder(btObj.root)
        
        print("\nPostorder :")
        btObj.postorder(btObj.root)
        
        print("\nSearch : 53")
        btObj.search(element: 53)
        
        print("\nSearch : 100")
        btObj.search(element: 100)
        
//      Binary Search Tree object initiaization
//      let bstObj = CustomBST()
        
//      Insert elements to the tree
//        for index in (0..<treeElements.count) {
//            bstObj.insert(element: treeElements[index])
//        }
//
//        print("\nInorder :")
//        bstObj.inorder(node: bstObj.root!)
//
//        print("\nPreorder :")
//        bstObj.preorder(node: bstObj.root!)
//
//        print("\nPostorder :")
//        bstObj.postorder(node: bstObj.root!)
//
//        print("\nSearch : 53")
//        bstObj.search(element: 53)
//
//        print("\nSearch : 667")
//        bstObj.search(element: 667)
//
//        print("\ndelete : 667")
//        bstObj.delete(element: 667)
//
//        print("\nSearch : 667")
//        bstObj.search(element: 667)
        
    }
}

