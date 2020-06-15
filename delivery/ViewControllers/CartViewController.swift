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
    
    @IBOutlet weak var emptyCartLabel: UILabel!
    var dishes = Cart.shared.getDishes()

    @IBOutlet var viewResult: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customDesign()
        navigationItem.title = "Ваш заказ"
        sumLabel.text = constructTextForSumLabel()
        startSettingsTableOrLabel()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    private func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
    tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        
        let dish = dishes[indexPath.row].0
        
        cell.nameLabel.text = dish.name
        cell.priceLabel.text = String(format: "%.2f", dish.price)
        
        cell.dishStepper.minimumValue = 0
        cell.dishStepper.maximumValue = 9
        cell.dishStepper.value = Double(dishes[indexPath.row].1)
        cell.dishStepper.tag =  indexPath.row
        
        cell.countLabel.text = cell.constructTextForCountLabel()
        cell.photoImageView.image = UIImage(named: dish.photo)

        cell.delegate = self
        
        cell.contentViewPhoto.customViewDesing()
        cell.photoView.customViewDesing()
        cell.photoImageView.customViewDesing()

        return cell
    }
    
    @IBAction func confirmTapped() {
        showAlert(with: "Связь прервалась", and: "Попробуйте повторить позже")
    }
    
    func didTappedStepper(cell: CartTableViewCell) {
        if let indexPath = tableView.indexPath(for: cell) {
            cell.countLabel.text = cell.constructTextForCountLabel()
            Cart.shared.dishes[dishes[indexPath.row].0] = Int(cell.dishStepper.value) != 0 ? Int(cell.dishStepper.value) : nil
            sumLabel.text = constructTextForSumLabel()
            if cell.dishStepper.value == 0 {
                dishes = Cart.shared.getDishes()
                tableView.deleteRows(at: [indexPath], with: .fade)
                if dishes.count == 0 {
                     tableViewHidden()
                }
            } else {
                dishes = Cart.shared.getDishes()
            }
            tableView.reloadData()
        }
    }
    
    private func constructTextForSumLabel() -> String {
        return String(format: "%.2f", Cart.shared.getSum()) + "руб"
    }
    
    private func customDesign() {
        viewResult.customViewDesing()
        confirmButton.customViewDesing()
    }
    
    private func startSettingsTableOrLabel() {
        if dishes.count == 0 {
            tableViewHidden()
        } else {
            emptyCartLabel.isHidden = true
        }
    }
    
    private func tableViewHidden() {
        confirmButton.isEnabled = false
        confirmButton.backgroundColor = .gray
        tableView.isHidden = true
        emptyCartLabel.isHidden = false
    }
}

// MARK: - UIAlertController
extension CartViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
