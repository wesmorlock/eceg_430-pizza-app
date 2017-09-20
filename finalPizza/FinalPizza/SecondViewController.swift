//
//  SecondViewController.swift
//  FinalPizza
//
//  Created by Wesley Morlock on 9/11/17.
//  Copyright © 2017 WM. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var myString = String()
    
    @IBAction func thinCrust(_ sender: Any) {
        performSegue(withIdentifier: "segue2", sender: self)
    }
    @IBAction func medCrust(_ sender: Any) {
        performSegue(withIdentifier: "segue3", sender: self)
    }
    
    @IBAction func thickCrust(_ sender: Any) {
        performSegue(withIdentifier: "segue4", sender: self)
    }
    
    @IBAction func deepDishCrust(_ sender: Any) {
        performSegue(withIdentifier: "segue5", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Welcome, " + myString + "!"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
