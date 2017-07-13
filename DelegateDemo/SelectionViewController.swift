//
//  SelectionViewController.swift
//  DelegateDemo
//
//  Created by l on 7/8/17.
//  Copyright © 2017 wenova. All rights reserved.
//

import UIKit

protocol SelectionDelegate {
    func selectionButtonPressed(name:String, color:UIColor)
}

class SelectionViewController: UIViewController {
  
    var delegate:SelectionDelegate!
    
    override func viewDidLoad() {
        //whatever changes you rwant
    }
    
    
    @IBAction func PinkPressed(_ sender: Any) {
        
        delegate.selectionButtonPressed(name: "PINK", color: .red)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func greyPressed(_ sender: Any) {
        
        delegate.selectionButtonPressed(name: "GRAY", color: .gray)
        
        dismiss(animated: true, completion: nil)
    }
    
}


