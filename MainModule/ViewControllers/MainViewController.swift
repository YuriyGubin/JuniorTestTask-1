//
//  MainViewController.swift
//  JuniorTestTask#1
//
//  Created by Yuriy on 27.02.2023.
//

import UIKit

final class MainViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    private func setupViews() {
        title = "Просмотр"
        view.backgroundColor = .white
    }
}

// MARK: UITableViewDataSource
extension MainViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Test"
        return cell
    }
}

