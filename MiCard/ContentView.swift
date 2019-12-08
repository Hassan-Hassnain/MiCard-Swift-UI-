//
//  ContentView.swift
//  MiCard
//
//  Created by Usama Sadiq on 11/22/19.
//  Copyright © 2019 Usama Sadiq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red:0.21, green:0.47, blue:0.49)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 9.0) {
                Image("Aarifah")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                
                
                MyView(text: "Aarifah Israr" , textSize: 35)
                MyView(text: "iOS Developer", textSize: 25)
                
                Divider()
                
                ContactInfo(text: "+92 300 12345678", imageName: "phone.fill")
                ContactInfo(text: "abc@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyView: View {
    
    let text: String
    let textSize: Int
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack(spacing: 20.0){
                Text(text)
                    .font(.system(size: CGFloat(textSize)))
            })
            .padding(.all)
    }
}

struct ContactInfo: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(red:0.03, green:0.16, blue:0.68))
            .frame(height: 50)
            .overlay(HStack{
                Image(systemName: imageName).foregroundColor(Color.green)
                Text(text)
                    .foregroundColor(Color.white).bold()
                
            }).padding()
    }
}
//rgb(52, 73, 94)
