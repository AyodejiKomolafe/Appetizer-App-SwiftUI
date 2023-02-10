//
//  User.swift
//  Appetizers
//
//  Created by Kvng Eko on 2/10/23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
