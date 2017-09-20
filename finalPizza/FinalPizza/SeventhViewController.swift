//
//  SeventhViewController.swift
//  FinalPizza
//
//  Created by Wesley Morlock on 9/11/17.
//  Copyright © 2017 WM. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController {

    var cost = String()
    
    @IBOutlet weak var exitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        exitLabel.text = "Your total was: $" + cost
        self.view.backgroundColor = UIColor(colorLiteralRed: 0/255, green: 100/255, blue: 0/255, alpha: 1)
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
