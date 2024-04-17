//
//  HomePageChild2.swift
//  Sprout
//
//  Created by Jeet P Mehta on 02/04/24.
//

import SwiftUI

struct HomePageChild2: View {
    @State private var textOne: String = ""
    @State private var navigate:Bool = false
    var body: some View {
       
                VStack {
                    ScrollView{
                    Image("StartSymbol2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75)
                    
                        Group{
                            HStack {
                                Text("Hello")
                                    .bold()
                                    .font(.custom("Inter-Black", size: 35))
                                
                                Text("Little Timmy!")
                                    .foregroundColor(Color(hex: "13FABF"))
                                    .bold()
                                    .font(.custom("Inter-Black", size: 35))
                            }
                            
                            
                            HStack {
                                Text("$80.26")
                                    .bold()
                                    .font(.custom("Inter-Black", size: 26))
                                
                                Text("Portfolio Value")
                                    .font(.custom("Inter-Medium", size: 20))
                            }
                            
                            Text("Add amount to portfolio")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top, 45)
                                .padding(.leading, 25)
                            
                            TextField("Amount to Add", text: $textOne)
                                .frame(width: 350, height: 40)
                                .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 5))
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color(hex: "13FABF"), lineWidth: 3)
                                )
                            
                            Button(action: {
                                navigate = true
                            }) {
                                Text("Add Money")
                                    .fontWeight(.semibold)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding()
                                    .background(Color(hex: "13FABF"))
                                    .foregroundColor(.black)
                                    .cornerRadius(20)
                                    .overlay(RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color(hex:"0CB89A"), lineWidth: 2))
                                
                            }
                            .padding()
                            
                            HStack{
                                Text("Initial Investment")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.custom("Inter-Medium", size: 14))
                                    .padding(.leading,30)
                                    .padding(.top, 25)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.021, brightness: 0.39))
                                
                                Text("Monthly Investment")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.custom("Inter-Medium", size: 14))
                                    .padding(.top, 25)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.021, brightness: 0.39))
                                    .padding(.leading,5)
                                
                            }
                            
                            
                            
                            HStack{
                                TextField("80.26", text: $textOne)
                                    .frame(width: 150, height: 40,alignment: .leading)
                                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 5))
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color(hex: "13FABF"), lineWidth: 3)
                                    )
                                    .padding(2)
                                
                                TextField("0.25", text: $textOne)
                                    .frame(width: 150, height: 40,alignment: .leading)
                                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 5))
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color(hex: "13FABF"), lineWidth: 3)
                                    )
                            }
                            
                            HStack{
                                Text("Expected Annual Return")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.custom("Inter-Medium", size: 14))
                                    .padding(.leading,30)
                                    .padding(.top, 25)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.024, brightness: 0.39))
                                
                                Text("Duration")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.custom("Inter-Medium", size: 14))
                                    .padding(.top, 25)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.021, brightness: 0.39))
                                    .padding(.leading,5)
                                
                            }
                            
                            
                            
                            HStack{
                                TextField("6.96", text: $textOne)
                                    .frame(width: 150, height: 40,alignment: .leading)
                                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 5))
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color(hex: "13FABF"), lineWidth: 3)
                                    )
                                    .padding(2)
                                
                                TextField("20", text: $textOne)
                                    .frame(width: 150, height: 40,alignment: .leading)
                                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 5))
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color(hex: "13FABF"), lineWidth: 3)
                                    )
                            }
                            
                            Button(action: {
                                navigate = true
                            }) {
                                Text("Calculate!")
                                    .fontWeight(.semibold)
                                    .frame(width: 100, height: 20)
                                    .padding()
                                    .background(Color(hex: "13FABF"))
                                    .foregroundColor(.black)
                                    .cornerRadius(20)
                                    .overlay(RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color(hex:"0CB89A"), lineWidth: 2))
                                
                            }
                            .padding()
                            
                        }
                       HomePageChild3()
                    
                }
                    HomePageChild1()
                        .navigationBarBackButtonHidden(true) // Hide the default back button
            
        }
        
        
    }
}



struct HomePageChild2_Previews: PreviewProvider {
    static var previews: some View {
        HomePageChild2()
    }
}
