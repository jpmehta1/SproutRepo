//
//  ThirdView.swift
//  Sprout
//
//  Created by Jeet P Mehta on 30/03/24.
//

import SwiftUI

struct ThirdView: View {
    @State private var navigate = false
    @State private var navigate2 = false
    var body: some View {
        NavigationView{
            VStack(spacing: 20) { // Adds consistent spacing between elements
                NavigationLink(destination: GettingStartedView1(), isActive: $navigate) {
                    EmptyView()
                }
                
                NavigationLink(destination: SignInView1(), isActive: $navigate2) {
                    EmptyView()
                }
                
                Image("View3Symbol")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 320, height: 300)
                    .offset(y:60)
                
                Text("Get Started with Sprout")
                    .font(.system(size: 20, weight: .bold))
                    .offset(y:80)
                
                Text("A place where the power of a cent goes a long way")
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color(hex: "0CB89A"))
                
                    .offset(y:80)
                
                Image("SymbolInWhite")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 130)
                    .offset(y:60)
                
                VStack(spacing:20){
                    Button(action: {
                        navigate = true
                    }) {
                        Text("Get Started")
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: .infinity) // Makes the button width adaptive to its container
                            .padding()
                            .foregroundColor(.white) // Text color
                            .background(Color(hex: " 13FABF")) // Background color of the button
                            .cornerRadius(20) // Adjust this value to change the corner radius
                    }
                    
                    Button(action: {
                        navigate2 = true
                    }) {
                        Text("Sign In")
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: .infinity) // Makes the button width adaptive to its container
                            .padding()
                            .background(.black) // Text color
                            .foregroundColor(Color(hex: "13FABF")) // Background color of the button
                            .cornerRadius(20)
                            .overlay(
                                                RoundedRectangle(cornerRadius: 20) // Same corner radius as the button
                                                    .stroke(Color(hex: " 0CB89A"), lineWidth: 2) // Blue border with 2 points width
                                            )
                        // Adjust this value to change the corner radius
                            
                    }
                   
                }
            
            }
            .offset(y:-70)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            
    }
}
