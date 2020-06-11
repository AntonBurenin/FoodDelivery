//
//  DishModel.swift
//  delivery
//
//  Created by Кирилл Крамар on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import Foundation

struct Dish {
    let typeDish : DishCategoryName
    let name  : String
    let price : Double
    let photo : String
    let description : String?
    
    static func getDishes() -> [Dish] {
        var dishes = [Dish]()
        let dataForDishes = DataManager.dataManager.dishes
        for (typeDish , name , price , description) in dataForDishes {
            let dish = Dish(typeDish: typeDish, name: name, price: price, photo: name, description: description)
            dishes.append(dish)
        }
        return dishes
        
    }
    
}

