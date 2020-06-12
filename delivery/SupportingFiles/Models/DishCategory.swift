//
//  DishCategory.swift
//  delivery
//
//  Created by Кирилл Крамар on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

struct DishCategory {
    
    let  name : DishCategoryName
    let  dish : [Dish]
    let photo : String
    
    static func getDishCategoryes() -> [DishCategory] {
        var dishCategoryes = [DishCategory]()
        var dishes = DataManager.dataManager.dishes
        while !dishes.isEmpty {
            let category = dishes.first!.typeDish
            let dishesForCategory = dishes.filter{$0.typeDish == category}
            if !dishesForCategory.isEmpty {
                let  name = dishesForCategory.first!.typeDish
                let category = DishCategory(name: name ,
                                            dish: dishesForCategory,
                                            photo:  dishesForCategory.first!.typeDish.rawValue)
                dishCategoryes.append(category)
            }
            dishes = dishes.filter{$0.typeDish != category}
        }
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




