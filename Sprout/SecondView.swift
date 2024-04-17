//
//  SecondView.swift
//  Sprout
//
//  Created by Jeet P Mehta on 30/03/24.
//

import SwiftUI

struct SecondView: View {
    @State private var navigate = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: ThirdView(), isActive: $navigate) {
                    EmptyView()
                }
                
                Image("View2Symbol")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 320, height: 300)
                
                Text("The Future of Spare Change")
                    .font(.system(size: 20, weight: .bold))
                
                Text("A place that provides you the easiest way to invest spare change")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(Color(hex: "0CB89A"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Image("SymbolInWhite")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 130)
                
                Button(action: {
                    navigate = true
                }) {
                    Text("Next")
                        .fontWeight(.semibold)
                        .frame(minWidth: 0, maxWidth: .infinity) // Makes the button width adaptive to its container
                        .padding(EdgeInsets(top: 20, leading: 40, bottom: 15, trailing: 40)) // Increase padding to make the button larger
                        .foregroundColor(.black) // Text color
                        .background(Color(hex: " 13FABF")) // Background color of the button
                        .cornerRadius(20) // Adjust this value to change the corner radius
                }
            }
            .background(Color("BackgroundColor"))
        }
        .navigationBarHidden(true) // Hide the navigation bar
    }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
       
    }
}
