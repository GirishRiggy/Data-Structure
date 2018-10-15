//
//  CustomBST.swift
//  ICAlgorithm
//
//  Created by iCode on 12/10/18.
//  Copyright © 2018 iCode. All rights reserved.
//

import Foundation

//Binary Search Tree Data Structure
class CustomBST : AbstractDS {

    // Binary Search Tree Node
    class BSTNode {
        
        var left: BSTNode?
        var right: BSTNode?
        var data: NSInteger
        
        init(_ element: NSInteger) {
            data = element
            left = nil
            right = nil
        }
        
    }
    
    //Root Node
    var root: BSTNode?
    init() {
        root = nil
    }
    
    //Traversals
    func inorder(node: BSTNode?)  {
        
        if node == nil {
            return
        }
        
        inorder(node: node?.left)
        print("  \((node?.data)!)")
        inorder(node: node?.right)
    }
    
    func preorder(node: BSTNode?) {
        
        if node == nil {
            return
        }
        
        print("  \((node?.data)!)")
        preorder(node: node?.left)
        preorder(node: node?.right)
    }
    
    func postorder(node: BSTNode?) {
        
        if node == nil {
            return
        }
        
        postorder(node: node?.left)
        postorder(node: node?.right)
        print("  \((node?.data)!)")
    }
    
    //Access Operation
    func search(element: NSInteger) {
        
        let val = searchElement(node: root ,element: element)
        if let value = val {
            print("Element \(value.data) found")
        }else {
            print("Element \(element) not found")
        }
    }
    
    func searchElement(node: BSTNode?,element: NSInteger) -> BSTNode? {
        
        let temp = node
        
        if temp != nil && (temp?.data)! == element {
            return temp
        } else if temp != nil && (temp?.data)! > element {
            return searchElement(node: temp?.left, element: element)
        } else if temp != nil && (temp?.data)! < element {
            return searchElement(node: temp?.right, element: element)
        }
        
        return nil
    }
    
    //Insertion
    func insert(element: NSInteger) {
        root = insertElement(rootElement: root, element: element)
    }
    
    func insertElement(rootElement : BSTNode?,element: NSInteger) -> BSTNode {
        
        if let rootNode = rootElement {
            let value = rootNode.data
            if  element < value {
                let elm = rootNode.left;
                rootNode.left = insertElement(rootElement: elm,element: element)
            } else if element > value{
                let elm = rootNode.right;
                rootNode.right = insertElement(rootElement: elm, element: element)
            }
            
            return rootNode
            
        } else {
            let rootEle = BSTNode(element)
            rootEle.left =  nil
            rootEle.right = nil
            
            return rootEle
        }
    }
    
    //Deletion
    func delete(element: NSInteger) {
        
    }
    
}
