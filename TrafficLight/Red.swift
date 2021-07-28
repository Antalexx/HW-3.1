//
//  Red.swift
//  TrafficLight
//
//  Created by Alexander Antonenko on 28.07.2021.
//

import SwiftUI

struct Red: View {
    var light: Double
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            .opacity(light)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct Red_Previews: PreviewProvider {
    static var previews: some View {
        Red(light: 0.1)
    }
}
