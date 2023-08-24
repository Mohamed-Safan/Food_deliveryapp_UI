//
//  Card.swift

//
//  Created by Safan on 2023-08-24.
//
//
//  Card.swift
//  Food
//
//  Created by BqNqNNN on 7/13/20.
//

import Foundation


struct Card : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price = "$25.00"
    var expand : Bool
}


var TrendingCard = [
    Card(id: 0, image: "img1", title: "Cheese Burger", descrip: "Lorem",stars: 3, expand: false),
    Card(id: 1, image: "img2", title: "Chicken Rice", descrip: "Lorem",stars: 3, expand: false),
    Card(id: 2, image: "img3", title: "Fried Chicken", descrip: "Lorem",stars: 4, expand: false),

]

var type = ["Pizza","Rice","Burger","pasta","Noodles","Buns"]
