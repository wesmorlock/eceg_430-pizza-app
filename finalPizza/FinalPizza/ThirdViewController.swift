//
//  ThirdViewController.swift
//  FinalPizza
//
//  Created by Wesley Morlock on 9/11/17.
//  Copyright © 2017 WM. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var total = 12.00
    
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var pepperoniLabel: UILabel!
    @IBOutlet weak var meatballLabel: UILabel!
    @IBOutlet weak var sausageLabel: UILabel!
    @IBOutlet weak var chickenLabel: UILabel!
    @IBOutlet weak var onionsLabel: UILabel!
    @IBOutlet weak var peppersLabel: UILabel!
    @IBOutlet weak var spinachLabel: UILabel!
    @IBOutlet weak var olivesLabel: UILabel!
    
    
    @IBAction func pepperoniSwitch(_ sender: UISwitch) {
        if sender.isOn {
            total = (total + 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
        else {
            total = (total - 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
    }
    @IBAction func meatballSwitch(_ sender: UISwitch) {
        if sender.isOn {
            total = (total + 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
        else {
            total = (total - 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
    }
    @IBAction func sausageSwitch(_ sender: UISwitch) {
        if sender.isOn {
            total = (total + 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
        else {
            total = (total - 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
    }
    @IBAction func chickenSwitch(_ sender: UISwitch) {
        if sender.isOn {
            total = (total + 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
        else {
            total = (total - 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
    }
    @IBAction func onionsSwitch(_ sender: UISwitch) {
        if sender.isOn {
            total = (total + 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
        else {
            total = (total - 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
    }
    @IBAction func peppersSwitch(_ sender: UISwitch) {
        if sender.isOn {
            total = (total + 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
        else {
            total = (total - 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
    }
    @IBAction func spinachSwitch(_ sender: UISwitch) {
        if sender.isOn {
            total = (total + 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
        else {
            total = (total - 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
    }
    @IBAction func olivesSwitch(_ sender: UISwitch) {
        if sender.isOn {
            total = (total + 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
        else {
            total = (total - 1.00)
            costLabel.text = "Cost: $" + String(total * 1.06)
        }
    }
    
    @IBAction func checkout(_ sender: Any) {
        performSegue(withIdentifier: "checkoutSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let seventhController = segue.destination as! SeventhViewController
        var totalString = String(total * 1.06)
        seventhController.cost = totalString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red
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
