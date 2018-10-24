//
//  CustomBT.swift
//  ICAlgorithm
//
//  Created by iCode on 17/10/18.
//  Copyright © 2018 iCode. All rights reserved.
//

import Foundation

class CustomBT : AbstractDS {
    
    class BTNode {
        var left: BTNode?
        var right: BTNode?
        let data: NSInteger
        
        init(_ element: NSInteger) {
            data = element;
            left = nil
            right = nil
        }
    }
    
    var root: BTNode?
    init() {
        root = nil
    }
    
    //Access Operation
    func search(element: NSInteger) {
        if searchElement(root, element: element) != nil {
            print("Element \(element) found")
        }else {
            print("Element \(element) not found")
        }
    }
    
    //Insertion
    func insert(element: NSInteger) {
        root = insertNode(root, element)
    }
    
    //Deletion
    func delete(element: NSInteger) {
         
    }
    
    func searchElement(_ node: BTNode?, element: NSInteger) -> BTNode? {
        if node != nil && (node?.data)! == element{
            return node
        } else if node?.left != nil {
            return searchElement(node?.left, element: element)
        } else if node?.right != nil {
            return searchElement(node?.right, element: element)
        }
        return nil
    }
    
    func insertNode(_ node: BTNode?,_ element: NSInteger) -> BTNode? {
        var temp = node
        if node == nil {
            temp = BTNode(element)
            return temp
        }
        if node?.right == nil {
            node?.right = insertNode(node?.right, element)
        } else {
            node?.left = insertNode(node?.left, element)
        }
        return node
    }
    
    //Traversals
    func inorder(_ node: BTNode?){
        if node == nil {
            return
        }
        inorder(node?.left)
        print("  \((node?.data)!)")
        inorder(node?.right)
    }
    
    func preorder(_ node: BTNode?){
        if node == nil {
            return
        }
        print("  \((node?.data)!)")
        preorder(node?.left)
        preorder(node?.right)
    }
    
    func postorder(_ node: BTNode?){
        if node == nil {
            return
        }
        postorder(node?.left)
        postorder(node?.right)
        print("  \((node?.data)!)")
    }
}
