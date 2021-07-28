//
//  ContentView.swift
//  TrafficLight
//
//  Created by Alexander Antonenko on 28.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redOn = 0.1
    @State private var yellowOn = 0.1
    @State private var greenOn = 0.1
    @State private var off = 1.0
    @State private var on = 0.1
    @State private var firstTapp = false
        

    
    var body: some View {
        
        VStack() {
            VStack {
                Red(light: redOn)
                Yellow(light: yellowOn)
                Green(light: greenOn)
            }
            .padding(.vertical, 40)
            
            Button(action: {
                switch off {
                case greenOn:
                    redOn = off
                    greenOn = 0.1
                case redOn:
                    yellowOn = off
                    redOn = 0.1
                case yellowOn:
                    greenOn = off
                    yellowOn = 0.1
                default:
                    redOn = off
                    firstTapp = true
                }
            }){
                if firstTapp {
                    Text("NEXT")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 6))
                        .background(Color.gray.opacity(0.4))
                } else {
                    Text("START")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 6))
                        .background(Color.gray.opacity(0.4))
                }
            }.padding()
        }.background(Color.gray.opacity(0.7).cornerRadius(15))
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
