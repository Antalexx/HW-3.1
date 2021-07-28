//
//  Color.swift
//  TrafficLight
//
//  Created by Alexander Antonenko on 28.07.2021.
//

import SwiftUI

struct ColorTraf: View {
    
    let on: Double
    let off: Double
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.red)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                .opacity(on)
                .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                .shadow(radius: 10)
            Circle()
                .foregroundColor(.yellow)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                .opacity(on)
                .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                .shadow(radius: 10)
            Circle()
                .foregroundColor(.green)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                .opacity(on)
                .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                .shadow(radius: 10)
                
        }
    }
}

struct ColorTraf_Previews: PreviewProvider {
    static var previews: some View {
        ColorTraf(on: 1.0, off: 0.1)
    }
}
