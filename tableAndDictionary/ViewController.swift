//
//  ViewController.swift
//  tableAndDictionary
//
//  Created by mac on 31/05/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var array = [["name": "Yogendra", "address": "Indore", "image": "c1"], ["name": "Shubhanshu", "address" : "Indore", "image" : "c2"], ["name": "Ajay", "address": "Indore", "image": "c3"]]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        let dict = array[indexPath.row]
        
        cell.label1.text = dict["name"]
        cell.label2.text = dict["address"]
        //cell.image1.image = UIImage.init(named: dict["image"]!)
        return cell
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            array.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

