//
//  TextVeiwTableViewCell.swift
//  JuniorTestTask#1
//
//  Created by Yuriy on 28.02.2023.
//

import UIKit

final class TextVeiwTableViewCell: UITableViewCell {

    private let nameLabel = UILabel()
    
    static var idTextViewCell = "idTextViewCell"
    
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
        
    }
    
    public func configure(name: String) {
        nameLabel.text = name
    }
}

extension TextVeiwTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 44),
            
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            nameLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.35)
        ])
    }
}
