//
//  MainTableViewCell.swift
//  JuniorTestTask#1
//
//  Created by Yuriy on 27.02.2023.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    private let nameLabel = UILabel()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.numberOfLines = 0
        label.text = "Test"
        return label
    }()
    
    static var idMainTableViewCell = "idMainTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addView(nameLabel)
        addView(valueLabel)
    }
    
    public func configure(name: String) {
        nameLabel.text = name
    }
}

extension MainTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            nameLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.35),
            
            valueLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            valueLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            valueLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 10)
        ])
    }
}