//
//  ContentView.swift
//  Fadil Card
//
//  Created by Fadil Kurniawan on 25/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "#16a085")
                .ignoresSafeArea()
            VStack {
                Image("fadil").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150,height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Fadil K")
                    .font(Font.custom("DancingScript-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Mobile Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                ContactView(text: "+62 821 98592939", imageName: "phone.fill")
                ContactView(text: "fadil30.fk@gmail.com", imageName: "envelope.fill")
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct ContactView: View {
    let text : String
    let imageName : String
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                        .font(.system(size: 18))
                        .foregroundColor(.black)
                        .bold()
                }
            ).padding(.all)
    }
}
