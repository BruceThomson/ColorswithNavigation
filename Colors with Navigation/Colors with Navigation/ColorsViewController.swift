//
//  ColorsViewController.swift
//  Colors with Navigation
//
//  Created by Bruce Thomson on 7/17/17.
//  Copyright © 2017 Bruce Thomson. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

 
    
    var colors: [String] = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    var orderUIColors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorcell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = orderUIColors[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let row = tableView.indexPathForSelectedRow?.row {
            let color = colors[row]
            print("Selected cell \(color)")
        }
        
    }

}
