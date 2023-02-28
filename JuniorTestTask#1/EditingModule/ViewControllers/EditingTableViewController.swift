//
//  EditingTableViewController.swift
//  JuniorTestTask#1
//
//  Created by Yuriy on 28.02.2023.
//

import UIKit

class EditingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
        tableView.register(
            MainTableViewCell.self,
            forCellReuseIdentifier: MainTableViewCell.idMainTableViewCell
        )
    }

    private func setupViews() {
        title = "Редактирование"
        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Сохранить",
            style: .plain,
            target: self,
            action: #selector(editingTapped)
        )
    }
    
    @objc private func editingTapped() {
        
    }
}

// MARK: UITableViewDataSource
extension EditingTableViewController {
    
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
extension EditingTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        indexPath.row == 2 ? UITableView.automaticDimension : 44
    }
}

