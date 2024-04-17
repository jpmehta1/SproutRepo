//
//  SwiftUIView.swift
//  Sprout
//
//  Created by Jeet P Mehta on 02/04/24.
//

import SwiftUI

struct HomePageChild1: View {
    var body: some View {
                
                HStack(spacing:20){
                    
                    Button(action: {
                        print("Button was tapped")
                    }) {
                        Image(systemName: "bell.badge.circle.fill")
                            .resizable()
                            .frame(width: 35,height:35)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
                        print("Button was tapped")
                    }) {
                        Image(systemName: "graduationcap.circle.fill")
                            .resizable()
                            .frame(width: 35,height:35)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
                        print("Button was tapped")
                    }) {
                        Image(systemName: "house.circle.fill")
                            .resizable()
                            .frame(width: 55,height:55)
                            .foregroundColor(.black)
                    }
                    
                    
                    Button(action: {
                        print("Button was tapped")
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 35,height:35)
                                .foregroundColor(.black)
                            
                            Image(systemName: "suitcase.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 18 ,height: 18)
                                .foregroundColor(.white)
                            
                        }
                        
                    }
                    
                    Button(action: {
                        print("Button was tapped")
                    }) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 35,height:35)
                            .foregroundColor(.black)
                    }
                }
                .frame(maxWidth: .infinity) // Ensures the HStack takes up full width
                           .padding(.vertical, 10) // Adjust padding as needed
                           .background(Color.white.opacity(0.6)) // Semi-transparent background
                           .clipShape(RoundedRectangle(cornerRadius: 30)) // Rounded corners
                           .shadow(radius: 10) // Shadow beneath the dock
                           .padding(.horizontal, 20) // Ensures some padding from screen edges
           
        
              
    
        
    }
}

struct HomePageChild1_Previews: PreviewProvider {
    static var previews: some View {
        HomePageChild1()
    }
}
