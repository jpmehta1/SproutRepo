//
//  SwiftUIView.swift
//  Sprout
//
//  Created by Jeet P Mehta on 30/03/24.
//

import SwiftUI

struct FirstView: View {
    @State private var navigateToSecondView = false

    var body: some View {
        NavigationView {
            ZStack {
                // Background tap gesture
                Color("BackgroundColor") // Ensure this is the same as your intended background color
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        self.navigateToSecondView = true
                    }

                // Your image centered
                Image("StartSymbol2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                    .frame(width: 150, height: 150)

                // Navigation link (invisible)
                NavigationLink(destination: SecondView(), isActive: $navigateToSecondView) {
                    EmptyView()
                }
            }
            
            .navigationBarHidden(false) // Optionally hide the navigation bar
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
        
        
        
    }
}
