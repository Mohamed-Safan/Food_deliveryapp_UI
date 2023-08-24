//
//  OnBoarding.swift
//  Food
//
//  Created by Safan on 2023-08-24.
//

import SwiftUI
import UIKit

struct OnBoarding: View {

    @State var showSheetView = false
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
        }
    var body: some View {
        NavigationView {
            pages()
        }.sheet(isPresented: $showSheetView) {
            Splash()
        }.animation(.none)
    }
    
}


struct pages: View {
    var body: some View {
        VStack {
            
                TabView {
                    ForEach(Data) { page in
                        GeometryReader { g in
                            VStack {
                                Image(page.image)
                                    .resizable()
                                    .scaledToFit()
                                Text(page.title)
                                    .font(.title).bold()
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20)
                                Text(page.descrip)
                                    .multilineTextAlignment(.center)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                            .opacity(Double(g.frame(in : . global).minX)/200+1)
                        }
                    }
                }
                .edgesIgnoringSafeArea(.top)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            NavigationLink(
                destination: NavBar().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                label: {
                    Text("Let's Start")
                        .font(.headline)
                        
                        .frame(width: 200, height: 40, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                })
            Spacer()
            
        }
        
        .navigationBarItems(trailing:
                                NavigationLink(
                                    destination: NavBar().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                                    label: {
                                        Image(systemName: "arrow.right")
                                            .font(Font.system(.title3))
                                            .foregroundColor(Color.yellow)
                                    })
        )
        .navigationBarBackButtonHidden(true)
    }
}


struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}

