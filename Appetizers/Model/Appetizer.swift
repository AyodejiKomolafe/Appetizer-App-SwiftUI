//
//  Appetizer.swift
//  Appetizers
//
//  Created by Kvng Eko on 2/8/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001, name: "Test Appetizer", description: "This is the description for my appetizer", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let orderItemOne = Appetizer(id: 0002, name: "Test Appetizer one", description: "This is the description for my appetizer", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 0003, name: "Test Appetizer two", description: "This is the description for my appetizer", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let orderItemThree = Appetizer(id: 0004, name: "Test Appetizer three", description: "This is the description for my appetizer", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer]
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
