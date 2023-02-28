//
//  UIView + Extensions.swift
//  JuniorTestTask#1
//
//  Created by Yuriy on 27.02.2023.
//

import UIKit

extension UIView {
    
    func addView(_ view: UIView) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
