//
//  ResultsViewController.swift
//  DatabaseTest
//
//  Created by Felix KHNEN on 1/10/2026.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.text = DatabaseManager().retrieveAllRows()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
