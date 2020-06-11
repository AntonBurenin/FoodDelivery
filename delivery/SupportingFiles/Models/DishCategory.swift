//
//  DishCategory.swift
//  delivery
//
//  Created by Кирилл Крамар on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import Foundation

struct DishCategory {
    
    let  name : DishCategoryName
    let  dish : [Dish]
    let photo : String
    
    static func getDishCategory() -> [DishCategory] {
        
         let dishCategoryes = [DishCategory]()
        return dishCategoryes
        
    }
}






enum DishCategoryName: String {
    case sushi
    case pizza
    case sashimi
    case burgers
    case soup
    case salads
    case sauces
    case drinks
}




