//
//  CartView.swift
//  Food
//
//  Created by Safan on 2023-08-22.
//


import SwiftUI

struct CartView: View {
    var body: some View {
        ScrollView{
            
            ZStack {
                
               
                HStack {
                    Text("My Cart")
                        .bold()
                        .font(.title)
                   
                }
            }
           
            Text("....")
                .bold()
                .font(.title)

            Spacer()
        }
        
        .edgesIgnoringSafeArea(.all)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
