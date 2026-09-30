//
//  ViewController.swift
//  DatabaseTest
//
//  Created by Felix KHNEN on 30/9/2026.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var size: UISegmentedControl!
    
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var name: UITextField!
    let db = DatabaseManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func save(_ sender: Any) {
        let pizzaName = name.text ?? ""
        let pizzaSize = size.titleForSegment(at: size.selectedSegmentIndex) ?? ""
        let pizzaPrice = Double(price.text ?? "") ?? 0
        db.addRow(name: pizzaName, pr: pizzaPrice, sz: pizzaSize)
    }
    

}

