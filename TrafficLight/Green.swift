//
//  Green.swift
//  TrafficLight
//
//  Created by Alexander Antonenko on 28.07.2021.
//

import SwiftUI

struct Green: View {
    var light: Double
    var body: some View {
        Circle()
            .foregroundColor(.green)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            .opacity(light)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct Green_Previews: PreviewProvider {
    static var previews: some View {
        Green(light: 0.1)
    }
}
