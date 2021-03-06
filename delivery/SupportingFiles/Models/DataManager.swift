//
//  DataManager.swift
//  delivery
//
//  Created by Кирилл Крамар on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

class DataManager {
    static let dataManager = DataManager()
    
    private init() {}
    
    
    let dishes: [Dish] = [
        Dish(typeDish: .soup,
             name: "Борщ",
             price: 250,
             photo: "Борщ",
            description: "Приготовлен по традиционному рецепту с добавлением отборной говядины. Подается с рогаликом и домашней сметаной."),
        Dish(typeDish: .sauces,
             name: "Соус Барбекю",
             price: 60,
             photo: "Соус Барбекю",
             description: nil),
        Dish(typeDish: .sauces,
             name: "Кетчуп",
             price: 60,
             photo: "Кетчуп",
             description: nil),
        Dish(typeDish: .sushi,
             name: "Суши Магуро",
             price: 170,
             photo: "Суши Магуро",
             description: "Состав: Тунец."),
        Dish(typeDish: .sushi,
             name: "Суши Сяке",
             price: 170,
             photo: "Суши Сяке",
             description: "Состав: Лосось."),
        Dish(typeDish: .sushi,
             name: "Суши Унаги",
             price: 170,
             photo: "Суши Унаги",
             description: "Состав: Угорь."),
        Dish(typeDish: .sushi,
             name: "Суши Эби",
             price: 170,
             photo: "Суши Эби",
             description: "Состав: Креветка."),
        Dish(typeDish: .sauces,
             name: "Соус бальзамик",
             price: 60,
             photo: "Соус бальзамик",
             description: nil),
        Dish(typeDish: .sauces,
             name: "Соус дор-блю",
             price: 60,
             photo: "Соус дор-блю",
             description: nil),
        Dish(typeDish: .sauces,
             name: "Соус карри",
             price: 60,
             photo: "Соус карри",
             description: nil),
        Dish(typeDish: .sauces,
             name: "Соус цезарь",
             price: 60,
             photo: "Соус цезарь",
             description: nil),
        Dish(typeDish: .pizza,
             name: "Пицца Мясная",
             price: 450, photo: "Пицца Мясная",
             description: "Состав: Соус томатный, сыр моцарелла, колбаса пепперони, лук, свинина, говядина, ветчина"),
        Dish(typeDish: .pizza,
             name: "Пицца Сырная",
             price: 430, photo: "Пицца Сырная",
             description: "Состав: Сыр рикотта, сыр Пармезан, сыр дор-блю, сыр моцарелла"),
        Dish(typeDish: .pizza,
             name: "Пицца Маргарита",
             price: 350,
             photo: "Пицца Маргарита",
             description: "Состав: Соус томатный, экстра сыр моцарелла"),
        Dish(typeDish: .pizza,
             name: "Пицца Пепперони",
             price: 390,
             photo: "Пицца Пепперони",
             description: "Состав: Соус томатный, сыр моцарелла, колбаса пепперони, грибной микс"),
        Dish(typeDish: .burgers,
             name: "Бургер Два сыра",
             price: 400,
             photo: "Бургер Два сыра",
             description: "Ароматная котлета из мраморной говядины с сыром чеддер и моцарелла, хрустящим луком, маринованными корнишонами, свежими томатами, соусом коктейль и барбекю в мягкой пшеничной булочке. Картофель и соус приобретается отдельно."),
        Dish(typeDish: .burgers,
             name: "Бургер с ягненком",
             price: 430,
             photo: "Бургер с ягненком",
             description: "Состав: Ароматная котлета из отборной баранины с луком, медово-ткемалевым соусом, сыром моцарелла, салатом коул слоу, красным сладким луком и пряной кинзой. Картофель и соус приобретается отдельно."),
        Dish(typeDish: .burgers,
             name: "Бургер с вишневым соусом",
             price: 440,
             photo: "Бургер с вишневым соусом",
             description: "Оригинальное сочетание сочной котлеты из мраморной говядины и соуса из вишни с добавлением обжаренного бекона, сыра чеддер и пряного перечного соуса. Картофель и соус приобретается отдельно."),
        Dish(typeDish: .drinks,
             name: "Цитрус-карамель",
             price: 150,
             photo: "Цитрус-карамель",
             description: "Состав: Свежевыжатый лимонный сок, апельсин, яблоко, карамельный сироп, ванильный сироп, минеральная вода с газом."),
        Dish(typeDish: .soup,
             name: "Крем-суп из грибов",
             price: 180, photo: "Крем-суп из грибов",
             description: "Оригинальный суп из шампиньонов с добавлением сельдерея, тимьяна и свежей петрушки"),
        Dish(typeDish: .soup,
             name: "Крем-суп из тыквы",
             price: 185,
             photo: "Крем-суп из тыквы",
             description: "Приготовлен из спелой тыквы с добавлением сливок, моркови, чеснока и лука"),
        Dish(typeDish: .drinks,
             name: "Морс Облепиха",
             price: 150,
             photo: "Морс Облепиха",
             description: "Домашний облепиховый морс собственного приготовления"),
        Dish(typeDish: .drinks,
             name: "Морс Смородина",
             price: 150,
             photo: "Морс Смородина",
             description: "Домашний морс из ягод черной смородины собственного приготовления"),
        Dish(typeDish: .salads,
             name: "Салат с креветками и авокадо",
             price: 200,
             photo: "Салат с креветками и авокадо",
             description: "Состав: Летний салат с добавлением обжаренных креветок, авокадо, сочных томатов, тимьяна и специй. Заправлен цитрусовым соусом на основе растительного масла"),
        Dish(typeDish: .salads,
             name: "Салат с морепродуктами",
             price: 230,
             photo: "Салат с морепродуктами",
             description: "Филе норвежского лосося и кальмара, обжаренные на сковороде, в сочетании со свежими томатами, листьями салата, сладкого перца. Заправлен пикантным горчичным соусом с добавлением жареного кунжута"),
        Dish(typeDish: .salads,
             name: "Салат Цезарь",
             price: 250,
             photo: "Салат Цезарь",
             description: "Традиционно приготовленный салат с добавлением ароматных пшеничных крутонов и сыра пармезан"),
        Dish(typeDish: .drinks,
             name: "Дюшес",
             price: 160,
             photo: "Дюшес",
             description: "Состав: Груша, грушевый сироп, минеральная вода с газом"),
        Dish(typeDish: .soup, name: "Суп Куриная лапша", price: 190, photo: "Суп Куриная лапша", description: nil)
        
    ]
    
}
