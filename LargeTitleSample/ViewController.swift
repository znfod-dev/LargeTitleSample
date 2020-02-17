//
//  ViewController.swift
//  LargeTitleSample
//
//  Created by JongHyun Park on 2020/02/17.
//  Copyright © 2020 Znfod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .automatic
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let second = storyboard.instantiateViewController(withIdentifier: "Second")
        self.navigationItem.searchController = UISearchController(searchResultsController: second)
        self.navigationItem.hidesSearchBarWhenScrolling = true
    
        // self.navigationItem.titleView = self.searchBar
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init()
        cell.textLabel?.text = String("[\(indexPath.section) / \(indexPath.row)]")
        return cell
    }
}



