//
//  HomePageChild3.swift
//  Sprout
//
//  Created by Jeet P Mehta on 03/04/24.
//

import SwiftUI

struct HomePageChild3: View {
    var body: some View {
        VStack{
           
            
            HStack {
                Text("By 2043 you'll have: ")
                    .bold()
                    .font(.custom("Inter-Medium", size: 18))
                
                Text("$ 451.18")
                    .foregroundColor(Color(hex: "13FABF"))
                    .bold()
                    .font(.custom("Inter-Black", size: 25))
            }
            .padding(.top,40)
            
            Image("GraphOne")
                .resizable()
                .scaledToFit()
            
                
            
            Spacer()
        }
    }
}

struct HomePageChild3_Previews: PreviewProvider {
    static var previews: some View {
        HomePageChild3()
    }
}
