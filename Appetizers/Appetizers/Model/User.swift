//
//  User.swift
//  Appetizers
//
//  Created by Asad Sayeed on 15/11/24.
//

import Foundation

struct User: Codable {
    var firstName           = ""
    var lastName            = ""
    var email               = ""
    var birthdate           = Date()
    var extraNapkins        = false
    var frequentRefills     = false
}
