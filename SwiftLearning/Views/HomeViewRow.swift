//
//  HomeViewRow.swift
//  SwiftLearning
//
//  Created by Justin Young on 5/11/21.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var title: String
    var decription: String
    var count: String
    var time: String
    
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack {
                
                // Image
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                // Text
                VStack (alignment: .leading, spacing: 10) {
                    
                    Text(title)
                        .bold()
                    
                    // Description
                    Text(decription)
                        .padding(.bottom, 20)
                        .font(Font.system(size: 12))
                        .font(.caption)
                    
                    
                    //Icons
                    HStack {
                        
                        // Number of lessons/questions
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(count)
                            .font(.caption)
                        
                        Spacer()
                        
                        // Time
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(time)
                            .font(.caption)
                    }
                    
                }
                .padding(.leading, 20)
            }
            .padding(.horizontal, 20)
        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", title: "Learn Swift", decription: "some description", count: "10 Lessons", time: "2 Hours")
    }
}
