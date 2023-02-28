//
//  MainTableViewController.swift
//  JuniorTestTask#1
//
//  Created by Yuriy on 27.02.2023.
//

import UIKit

final class MainTableViewController: UITableViewController {

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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Редактировать",
            style: .plain,
            target: self,
            action: #selector(editingTapped)
        )
    }
    
    @objc private func editingTapped() {
        let editingTableViewController = EditingTableViewController()
        navigationItem.backButtonTitle = "Назад"
        navigationController?.pushViewController(editingTableViewController, animated: true)
    }
}

// MARK: UITableViewDataSource
extension MainTableViewController {
    
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
extension MainTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        indexPath.row == 2 ? UITableView.automaticDimension : 44
    }
}
