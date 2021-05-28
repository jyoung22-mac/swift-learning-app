//
//  TestView.swift
//  SwiftLearning
//
//  Created by Justin Young on 5/24/21.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
        if model.currentQuestion != nil {
            
            VStack {
                // Qustion number
                Text("Question \(model.currentQuestionIndex + 1) of \(model.currentModule?.test.questions.count ?? 0)")
                
                // question
                CodeTextView()
                
                // Answer
                
                
                // Button
                
                
                
                
                
            }
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")
            
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
