//
//  ViewController.swift
//  DelegateDemo
//
//  Created by l on 7/8/17.
//  Copyright © 2017 wenova. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let selectionVC = storyboard?.instantiateViewController(withIdentifier:"SelectionScreen") as! SelectionViewController
        selectionVC.delegate = self
        present(selectionVC, animated: true, completion:nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ViewController: SelectionDelegate{
    
    func selectionButtonPressed(name:String, color:UIColor){
        self.nameLabel.text = name
        self.view.backgroundColor = color
    }
}


