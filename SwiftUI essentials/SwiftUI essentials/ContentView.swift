//
//  ContentView.swift
//  SwiftUI essentials
//
//  Created by savio sailas on 12/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color.red
            .opacity(0.1)
        Color.green
            .opacity(0.2)
        Color.yellow
            .opacity(0.2)
            .frame(maxHeight: .infinity)
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(FirstDayStyle())
            Text("Turtle rock")
                .font(.title)
                .foregroundStyle(FirstDayStyle())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


struct FirstDayStyle: ShapeStyle {
    func resolve(in environment: EnvironmentValues) -> Color {
        switch environment.colorScheme {
        case .dark:
            return Color.red //.blendMode(.darken)
        case .light:
            return Color.green //.blendMode(.darken)
        @unknown default:
            return Color.green //.blendMode(.darken)
        }
    }
}
