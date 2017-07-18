//
//  DetailViewController.swift
//  Colors with Navigation
//
//  Created by Bruce Thomson on 7/17/17.
//  Copyright © 2017 Bruce Thomson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var colorLabel: UILabel!
    var color: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = color
        
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