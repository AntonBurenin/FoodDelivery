//
//  DishModel.swift
//  delivery
//
//  Created by Кирилл Крамар on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

struct Dish: Hashable {
    let typeDish : DishCategoryName
    let name  : String
    let price : Double
    let photo : String
    let description : String?
}

