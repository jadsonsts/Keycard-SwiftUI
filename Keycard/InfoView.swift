//
//  InfoView.swift
//  Keycard
//
//  Created by Jadson on 13/11/22.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .frame(height: 45)
            .foregroundColor(Color(red: 0.16, green: 0.50, blue: 0.73))
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text).bold()
                    .foregroundColor(.white)
            })
            .padding(.leading)
            .padding(.horizontal)
    }
}

struct TextFont: View {
    let text: String
    var body: some View {
        Text(verbatim: text)
            .font(Font.custom("Tahoma", size: 20))
            .bold()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
