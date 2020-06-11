//
//  DataManager.swift
//  delivery
//
//  Created by Кирилл Крамар on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import Foundation

class DataManager {
    static let dataManager = DataManager()
    
    private init() {}
    
    
    
    
    let dishes: [( DishCategoryName , String , Double , String? )] = [(category: DishCategoryName.pizza,
                                                                       name: "Margaritha" ,
                                                                       price: 234,
                                                                       description: nil ),
                                                                      (category: DishCategoryName.pizza,
                                                                       name: "Margaritha" ,
                                                                       price: 234,
                                                                       description: nil ),
                                                                      (category: DishCategoryName.soup,
                                                                       name: "Margaritha" ,
                                                                       price: 234,
                                                                       description: nil )]
    
    
    
}
