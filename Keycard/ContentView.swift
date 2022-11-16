//
//  ContentView.swift
//  Keycard
//
//  Created by Jadson on 7/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        frontCard()
        backCard()
    }
}

struct frontCard: View {
    var body: some View {
        ZStack(){
            Color(red: 0.16, green: 0.50, blue: 0.73)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Company Name SA")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .offset(y: -80)
                Image("jadson")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 400, alignment: .top)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    .foregroundColor(.accentColor)
                    .offset(y: -50)
                Text("Jadson Santos Carneiro")
                    .font(Font.custom("Bradley Hand", size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer 👨🏾‍💻")
                    .font(Font.custom("Arial", size: 25))
                    .foregroundColor(.white)
            }
        }
    }
}

struct backCard: View {
    var body: some View {
            VStack {
                Image("barcode")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: -40)
                InfoView(text: "NID: 000022234", imageName: "person.circle.fill")
                InfoView(text: "O+ (O Positive)", imageName: "heart.circle.fill")
                InfoView(text: "+11 23456789", imageName: "phone.fill")
                InfoView(text: "youremail@gmail.com", imageName: "envelope.fill")
                Text("* IF THIS CARD IS FOUND, PLEASE CONTACT*")
                    .foregroundColor(.red).bold()
                    .padding(.top)
                    .offset(y: 10)
                
                VStack (alignment: .leading) {
                    TextFont(text: "Road 33, House 7")
                    TextFont(text: "Dominion Road, Mount Everest")
                    TextFont(text: "Bogota, Brazil")
                }
                .offset(y: 10)
                .padding()
                .frame(width: 400, height: 100, alignment: .leading)
                
                
                Text("Company Name SA")
                    .font(.body).bold()
                    .offset(y: 80)
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
