//
//  ViewController.swift
//  PizzaPizzaPizza - v2
//
//  Created by Wesley Morlock on 9/21/17.
//  Copyright © 2017 WM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, HomeModelDelegate, UITableViewDataSource, UITableViewDelegate { // needs to assign itself to follow the protocol
    
    @IBOutlet weak var tableView: UITableView!
    
    var homeModel = HomeModel()
    var locations = [Location]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set self as the table view source and delegate
        tableView.delegate = self
        tableView.dataSource = self
        
        // initiate calling of items download
        homeModel.getItems()
        homeModel.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func itemsDownloaded(locations: [Location]) {
        
        self.locations = locations
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // set the orderToDisplay property of the OrderViewController
        let orderVC = segue.destination as! OrderViewController
        orderVC.orderToDisplay = tableView.selected
    }
    
    // MARK: - UITableView Delegate Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return locations.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        
        cell.textLabel?.text = locations[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "GoToOrder", sender: self)
        
    }
    
}

