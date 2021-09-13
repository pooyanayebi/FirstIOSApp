//
//  ViewController.swift
//  Cats
//
//  Created by Pooya Nayebi on 9/13/21.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    @IBOutlet weak var curr: UILabel!
    
    @IBOutlet weak var field: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ref = Database.database().reference()
        
        ref.child("id").setValue("Mike")
        ref.child("id").observeSingleEvent(of: .value) {
            (snapshot )in
            let name = snapshot.value as? String
            self.curr.text = name
        }
    }
    

    
    
    @IBAction func Butt(_ sender: Any) {
        
        let x = field.text
        
        
        let ref = Database.database().reference()
        
        ref.child("id").setValue(x)
        
        ref.child("id").observeSingleEvent(of: .value) {
            (snapshot )in
            let name = snapshot.value as? String
            self.curr.text = name
        }
    }

}

