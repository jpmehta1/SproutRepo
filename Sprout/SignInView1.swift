//
//  SignInView1.swift
//  Sprout
//
//  Created by Jeet P Mehta on 01/04/24.
//

import SwiftUI

struct SignInView1: View {
    @State private var textOne: String = ""
    @State private var textTwo: String = ""
    @State private var navigate2: Bool = false
   
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink(destination: HomePageChild2(), isActive: $navigate2) {
                    EmptyView()
                }
                
                VStack(spacing: 20) {
                    Image("StartSymbol2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    
                    Text("Let's Sign You In")
                        .font(.system(size: 20))
                        .bold()
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color(hex: "0CB89A"))
                    
                    Text("Welcome back, you've been missed!")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                    
                    VStack(spacing: 30) { // Increased spacing between text fields
                        TextField("Email Address", text: $textOne)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal) // Added horizontal padding to separate from the edge
                        
                        TextField("Password", text: $textTwo)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal) // Added horizontal padding to separate from the edge
                        
                    }
                    .padding(.horizontal, 30) // Added horizontal padding to separate text fields from the surrounding content
                    
                    Button(action: {
                        // Action for the button
                        navigate2 = true
                    }) {
                        Text("Sign In")
                            .fontWeight(.semibold)
                            .frame(width: 100) // Set a fixed width for the button text
                            .padding()
                            .foregroundColor(.black) // Text color
                            .background(Color(hex: "13FABF")) // Background color of the button
                            .cornerRadius(40) // Adjust this value to change the corner radius
                    }
                    .padding()
                    Text("or sign In with")
                    Image("SignInWith2")
                        .resizable(capInsets: EdgeInsets(top: -5.0, leading: -5.0, bottom: -6.0, trailing: -6.0))
                        .aspectRatio(contentMode: .fit)
                    
                    
                        .padding()
                    
                }
            }
           
                        .navigationBarBackButtonHidden(true) // Hide the default back button
        }
    }
}


struct SignInView1_Previews: PreviewProvider {
    static var previews: some View {
        SignInView1()
        
    }
}
