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
        
        tableView.register(
            MainTableViewCell.self,
            forCellReuseIdentifier: MainTableViewCell.idMainTableViewCell
        )
    }

    private func setupViews() {
        title = "Просмотр"
        view.backgroundColor = .white
    }
}

// MARK: UITableViewDataSource
extension MainViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Resourse.NameField.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: MainTableViewCell.idMainTableViewCell,
            for: indexPath
        ) as? MainTableViewCell else {
            return UITableViewCell()
        }
        
        let nameField = Resourse.NameField.allCases[indexPath.row].rawValue
        cell.configure(name: nameField)
       
        return cell
    }
}

// MARK: - UITableViewDelegate
extension MainViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        indexPath.row == 2 ? UITableView.automaticDimension : 44
    }
}
