//
//  ViewController.swift
//  Day-19-UIViewController-LifeCircle
//
//  Created by Евгения Зорич on 19.12.2022.
//

import UIKit

class ViewController: UITableViewController {
    var stages = ["init()", "loadView()", "viewDdLoad()", "viewWillAppear()", "viewDidAppear()"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Life stages"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stages.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = stages[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? ViewViewController {
            vc.selectedText = stages[indexPath.row]
            vc.selectedNumber = indexPath.row + 1
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
