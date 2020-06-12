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
    
    var dishes: [Dish: Int] = [
        Dish(typeDish: .soup,
             name: "Борщ",
             price: 250,
             photo: "Борщ",
             description: "Приготовлен по традиционному рецепту с добавлением отборной говядины. Подается с рогаликом и домашней сметаной.") : 1,
        Dish(typeDish: .pizza,
             name: "Пицца Сырная",
             price: 430, photo: "Пицца Сырная",
             description: "Состав: Сыр рикотта, сыр Пармезан, сыр дор-блю, сыр моцарелла") : 2,
        Dish(typeDish: .burgers,
             name: "Бургер Два сыра",
             price: 400,
             photo: "Бургер Два сыра",
             description: "Ароматная котлета из мраморной говядины с сыром чеддер и моцарелла, хрустящим луком, маринованными корнишонами, свежими томатами, соусом коктейль и барбекю в мягкой пшеничной булочке. Картофель и соус приобретается отдельно.") : 1,
        Dish(typeDish: .drinks,
             name: "Морс Облепиха",
             price: 150,
             photo: "Морс Облепиха",
             description: "Домашний облепиховый морс собственного приготовления") : 2,
        Dish(typeDish: .soup,
             name: "Крем-суп из тыквы",
             price: 185,
             photo: "Крем-суп из тыквы",
             description: "Приготовлен из спелой тыквы с добавлением сливок, моркови, чеснока и лука") : 1,
        Dish(typeDish: .salads,
             name: "Салат с морепродуктами",
             price: 230,
             photo: "Салат с морепродуктами",
             description: "Филе норвежского лосося и кальмара, обжаренные на сковороде, в сочетании со свежими томатами, листьями салата, сладкого перца. Заправлен пикантным горчичным соусом с добавлением жареного кунжута") : 1
    ]//[:]
    
    
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
    
}
