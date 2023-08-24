//
//  onBoardingPage.swift
//  Food
//
//  Created by Safan on 2023-08-24.
//


import Foundation

struct Page : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
}

var Data = [
    Page(id: 0, image: "img", title: "Find the best foods!", descrip: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    Page(id: 1, image: "deliv", title: "Deliver to your door step", descrip: "Lorem ipsum dolor sit amet, consectetur adipiscing."),
]
