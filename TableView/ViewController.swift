//
//  ViewController.swift
//  TableView
//
//  Created by iFlame on 25/02/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var MyTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyTableView.delegate = self
        MyTableView.dataSource = self
        
        MyTableView.estimatedRowHeight = 40
        MyTableView.rowHeight = UITableViewAutomaticDimension
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50
    }
    /*
     Hello 1
     
     Hello 1
     Hello 2
     
     Hello 1
     Hello 2
     Hello 3
     
     Hello 1
     Hello 2
     Hello 3
     Hello 4
     
     Hello 1
     Hello 2
     Hello 3
     Hello 4
     Hello 5
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CutomCell
        
        var  name = ""
        
        
        for i in 0..<indexPath.row
        {
            name  += "Hello - \(i+1)\n"
        }
        
        cell.labelDescription.numberOfLines = 0
        cell.labelDescription.lineBreakMode = .byWordWrapping

            cell.labelDescription.text = name
               return cell
    }
    
    


}

