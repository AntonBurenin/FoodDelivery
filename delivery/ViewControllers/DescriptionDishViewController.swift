//
//  DescriptionDishViewController.swift
//  delivery
//
//  Created by Александр Бехтер on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class DescriptionDishViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
  
    @IBOutlet var descriptionTextView: UITextView!
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var dishImageView: UIImageView!
    @IBOutlet var viewCustom: UIView!
    @IBOutlet var cardButton: UIButton!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillingCell()
        customDesign()
        navigationItem.largeTitleDisplayMode = .never
    }
    
    @IBAction func cartButtonPressed() {
        Cart.shared.addDish(dish)
        dismiss(animated: true)
    }
    
    private func fillingCell() {
        nameLabel.text = dish.name
        priceLabel.text = "\(String(format: "%.2f", dish.price)) p"
        dishImageView.image = UIImage(named: dish.photo)
        descriptionTextView.text = dish.description ?? dish.name
    }
    
    private func customDesign() {
        contentView.desinView()
        dishImageView.desinView()
        viewCustom.desinView()
        cardButton.desinView()
        descriptionTextView.desinView()
    }
}


extension UIView {
    func desinView() {
        self.layer.cornerRadius = self.frame.width / 19
        self.layer.shadowOpacity = 1.5
        self.layer.shadowRadius = 4
        self.layer.shadowOffset = CGSize.zero
    }
}
