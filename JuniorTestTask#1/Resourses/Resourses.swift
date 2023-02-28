//
//  Resourses.swift
//  JuniorTestTask#1
//
//  Created by Yuriy on 27.02.2023.
//

import Foundation

enum Resourse {
    
    enum NameField: String, CaseIterable {
        case firstName = "Имя"
        case patronymic = "Отчество"
        case surname = "Фамилия"
        case birthdate = "Дата рождения"
        case gender = "Пол"
    }
}
