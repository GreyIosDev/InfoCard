//
//  InfoView.swift
//  GreyCard
//
//  Created by Grey  on 08.03.2023.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)// This is from the object library it gives us the rectangular rounded shape we see 
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(.white)// This help you change the color and not just text but also objects and symbols
            .overlay(HStack {// This go from left to right
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text).foregroundColor(.black)
            })
            .padding(.all)//This makes it not to touch the edges and it centeralized properly
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
