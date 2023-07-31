//
//  AddListTableViewController.swift
//  tableViewPractice
//
//  Created by 김하은 on 2023/07/27.
//

import UIKit

class AddListTableViewController: UITableViewController {

    var list = [String]()
    
    @IBOutlet var listTextField: UITextField!
    
    override func viewDidLoad() {
        tableView.rowHeight = 60
    }

    @IBAction func addButtonClick(_ sender: UIButton) {
        
        if let text = listTextField.text{
            list.append(text)
        }
        tableView.reloadData()
    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell")!
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
}
