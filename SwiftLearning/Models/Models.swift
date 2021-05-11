//
//  Models.swift
//  SwiftLearning
//
//  Created by Justin Young on 5/10/21.
//

import Foundation


struct Module: Decodable, Identifiable {
    
    var id: Int
    var category: String
    var content: Content
    var test: Test
}

struct Content: Decodable, Identifiable {
    var id: Int
    var image: String
    var time: String
    var description: String
    var lessons: [Lesson]
}

struct Lesson: Decodable, Identifiable {
    
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
    
    
}

struct Test: Decodable, Identifiable {
    
    var id: Int
    var image: String
    var time: String
    var description: String
    var question: [Question]
    
    
}

struct Question: Decodable, Identifiable {
    
    var id: Int
    var content: String
    var correctindex: Int
    var answers: [String]
    
    
}
