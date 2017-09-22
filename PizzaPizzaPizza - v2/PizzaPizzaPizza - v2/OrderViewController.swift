//
//  OrderViewController.swift
//  PizzaPizzaPizza - v2
//
//  Created by Wesley Morlock on 9/22/17.
//  Copyright © 2017 WM. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    
    var orderToDisplay:Location?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        
        // set the orderView to the details of the selected order
        if let order = orderToDisplay {
            // convert detail types
            // example: let __ = Double(order.___)
            
            // assign the order details
        }
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
