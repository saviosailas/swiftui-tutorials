//
//  CircleImage.swift
//  SwiftUI essentials
//
//  Created by savio sailas on 12/04/25.
//

import SwiftUI
	
struct CircleImage: View {
    var body: some View {
        Image(.butterfly)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4.0)
                    .padding(CGFloat.zero)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
