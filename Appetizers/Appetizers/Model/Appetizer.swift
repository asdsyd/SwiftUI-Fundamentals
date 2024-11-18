//
//  Appetizer.swift
//  Appetizers
//
//  Created by Asad Sayeed on 13/11/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let carbs: Int
    let protein: Int
    
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0000,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's yummy.",
                                           price: 99.8,
                                           imageURL: "",
                                           calories: 69,
                                           carbs: 88,
                                           protein: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "Test Appetizer ONe",
                                           description: "This is the description for my appetizer. It's yummy.",
                                           price: 99.8,
                                           imageURL: "",
                                           calories: 69,
                                           carbs: 88,
                                           protein: 99)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                           name: "Test Appetizer Two",
                                           description: "This is the description for my appetizer. It's yummy.",
                                           price: 99.8,
                                           imageURL: "",
                                           calories: 69,
                                           carbs: 88,
                                           protein: 99)
    
    static let orderItemThree = Appetizer(id: 0003,
                                           name: "Test Appetizer Three",
                                           description: "This is the description for my appetizer. It's yummy.",
                                           price: 99.8,
                                           imageURL: "",
                                           calories: 69,
                                           carbs: 88,
                                           protein: 99)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
