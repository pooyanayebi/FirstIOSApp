//
//  ViewController.swift
//  Cats
//
//  Created by Pooya Nayebi on 9/13/21.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    
    @IBOutlet weak var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ref = Database.database().reference()
        
        ref.child("id").setValue("Mike")
    }
    

    
    
    @IBAction func Butt(_ sender: Any) {
        
        let x = field.text
        
        
        let ref = Database.database().reference()
        
        ref.child("id").setValue(x)
    }
    

}

