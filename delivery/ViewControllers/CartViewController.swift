//
//  CartViewController.swift
//  delivery
//
//  Created by Bober on 12/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet var viewResult: UIView!
    
    let dishes = Cart.shared.dishes
    var dishesArray: [(Dish, Int)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewResult.customViewDesing()
        confirmButton.customViewDesing()
        
        navigationItem.title = "Ваш заказ"
        for (dish, count) in dishes {
            dishesArray.append((dish, count))
        }
        sumLabel.text = String(format: "%.2f", Cart.shared.getSum()) + "руб"
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("yoyyo")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        let dish = dishesArray[indexPath.row].0
        cell.nameLabel.text = dish.name
        cell.priceLabel.text = String(format: "%.2f", dish.price)
        cell.countLabel.text = "x " + String(dishesArray[indexPath.row].1) + " шт."
        cell.photoImageView.image = UIImage(named: dish.photo)
        
        cell.contentViewPhoto.customViewDesing()
        cell.photoView.customViewDesing()
        cell.photoImageView.customViewDesing()
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
