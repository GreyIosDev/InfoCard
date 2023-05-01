//
//  ContentView.swift
//  GreyCard
//
//  Created by Grey  on 08.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {// It can be gotten from the OBJECT library As the depth stack.This stack gives us the ability to stack things one ontop each other.
            Color(red: 0.09, green: 0.63, blue: 0.52)// Also note that in SwiftUI the alpha is changed to opacity. and most times it is not needed maybe in a case of transperncy.
            // Gotten from the OBJECT library "Colours" for the background color of the app
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)// Gotten from the MODIFIER library makes the background color spread and touch all the areas of the device.
            VStack {// This go from top to bottom
                Image("grey")// image object then name from assests that we dragged and dropped and used the assests name.
                    .resizable()// Then also modifiy it with image resizable.
                    .aspectRatio(contentMode: .fill) // The this helps to make it fit properly
                    .frame(width: 150, height: 150)// Note the frame modifier which changes the size of the structure
                    .clipShape(Circle())// This modifier helps us put the image into the circle.
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
            
                         Text("Grey")
                    .font(Font.custom("Pacifico-Regular", size: 40))// Always click enter on the title font to activate it.
                .bold()
            .foregroundColor(.white)
                Text("IOS DEVELOPER")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider() // This separates fields in the code
                InfoView(text: "+380636754750", imageName: "phone.fill")
                   InfoView(text: "greyios845", imageName: "envelope.fill")
                    
                    


               
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



