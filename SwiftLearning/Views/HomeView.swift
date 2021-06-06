//
//  ContentView.swift
//  SwiftLearning
//
//  Created by Justin Young on 5/9/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        NavigationView {
            
            VStack (alignment: .leading) {
                
                Text("What do you want to do today?")
                    .padding(.leading, 20)
                
                ScrollView {
                    
                    LazyVStack {
                        
                        ForEach(model.modules) { module in
                            
                            VStack (spacing: 20) {
                                
                                NavigationLink(
                                    destination: ContentView()
                                        .onAppear(perform: {
                                            model.beginModule(module.id)
                                        }),
                                    tag: module.id,
                                    selection: $model.currentContentSelected,
                                    label: {
                                        
                                        
                                        // Learning Card
                                        HomeViewRow(image: module.content.image, title: "Learn \(module.category)", decription: module.content.description, count: "\(module.content.lessons.count) Lesson", time: module.content.time)
                                    })
                                
                                    NavigationLink(
                                        destination: TestView()
                                                    .onAppear(perform: {
                                                        model.beginTest(module.id)
                                    }),
                                        tag: module.id,
                                                   selection: $model.currentTestSelected) {
                                        
                                        // Test Card
                                        HomeViewRow(image: module.test.image, title: "Learn \(module.category) Test", decription: module.test.description, count: "\(module.test.questions.count) Lesson", time: module.test.time)
                                    }
                                
                            
                         
                        }
                        }
                        
                    }
                    .accentColor(.black)
                    .padding()
                }
            }
            .navigationTitle("Get Started")
            .onChange(of: model.currentContentSelected) { changedValue in
                if changedValue == nil {
                    
                    model.currentModule = nil
                }
            }
            .onChange(of: model.currentTestSelected) { changedValue in
                if changedValue == nil {
                    model.currentModule = nil 
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
