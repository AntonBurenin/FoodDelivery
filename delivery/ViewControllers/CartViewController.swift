//
//  CartViewController.swift
//  delivery
//
//  Created by Bober on 12/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, CartTableViewCellDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var sumLabel: UILabel!
    
    var dishes = Cart.shared.getDishes()

    @IBOutlet var viewResult: UIView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewResult.customViewDesing()
        confirmButton.customViewDesing()
        
        navigationItem.title = "Ваш заказ"
        sumLabel.text = constructTextForSumLabel()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        
        let dish = dishes[indexPath.row].0
        
        cell.nameLabel.text = dish.name
        cell.priceLabel.text = String(format: "%.2f", dish.price)
        
        cell.countStepper.minimumValue = 0
        cell.countStepper.maximumValue = 9
        cell.countStepper.value = Double(dishes[indexPath.row].1)
        cell.countStepper.tag =  indexPath.row
        
        cell.countLabel.text = cell.constructTextForCountLabel()
        cell.photoImageView.image = UIImage(named: dish.photo)

        cell.delegate = self
        
        cell.contentViewPhoto.customViewDesing()
        cell.photoView.customViewDesing()
        cell.photoImageView.customViewDesing()

        return cell
    }
    
    func didTappedStepper(cell: CartTableViewCell) {
        if let indexPath = tableView.indexPath(for: cell) {
            cell.countLabel.text = cell.constructTextForCountLabel()
            Cart.shared.dishes[dishes[indexPath.row].0] = Int(cell.countStepper.value) != 0 ? Int(cell.countStepper.value) : nil
            sumLabel.text = constructTextForSumLabel()
            if cell.countStepper.value == 0 {
                dishes = Cart.shared.getDishes()
                tableView.deleteRows(at: [indexPath], with: .fade)
            } else {
                dishes = Cart.shared.getDishes()
                tableView.reloadData()
                print(sumLabel.text)
            }
        }
    }
    
    private func constructTextForSumLabel() -> String {
        return String(format: "%.2f", Cart.shared.getSum()) + "руб"
    }

}
