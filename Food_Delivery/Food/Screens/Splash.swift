//
//  Location.swift
//  Food
//
//  Created by BqNqNNN on 7/12/20.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        NavigationView {
            VStack {
                    Image("img9")
                        .resizable()
                        .scaledToFit()
                    Text("Welcome to ExpressEats")
                        .font(.title)
                        .bold()
                    
                    
                    NavigationLink(
                        destination: OnBoarding().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                        label: {
                            HStack {
                                
                                
                                Text("Start ")
                                    .bold()
                                    .foregroundColor(Color.yellow)
                                
                            }
                            .frame(width: 250, height: 60, alignment: .center)
                            .border(Color.yellow)
                            .cornerRadius(20)
                        })
                    
                    
                    
            }
        }

    }
    
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
