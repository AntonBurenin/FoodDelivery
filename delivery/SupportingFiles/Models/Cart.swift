//
//  Cart.swift
//  delivery
//
//  Created by Bober on 12/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

class Cart {
    static let shared = Cart()
    
    private init() {}
    
    var dishes: [Dish: Int] = [:]
    
    
    func getSum() -> Double {
        var sum = 0.0
        for dish in dishes {
            sum += dish.key.price * Double(dish.value)
        }
        return sum
    }
    
    func addDish(_ dish: Dish) {
        dishes[dish] = (dishes[dish] ?? 0) + 1
    }
    
    func getDishes() -> [(Dish, Int)]{
        var dishesArray: [(Dish, Int)] = []
        for (dish, count) in dishes {
            dishesArray.append((dish, count))
        }
        return dishesArray
    }
    
    func updateCart(arrayDishes: [(Dish, Int)]) {
        dishes = [:]
        for (dish, count) in arrayDishes {
            dishes[dish] = count != 0 ? count : nil
        }
    }
}
