//
//  NavigationForMenuController.swift
//  delivery
//
//  Created by Кирилл Крамар on 15.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class NavigationForMenuController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let image = UIImage(named: "cart") else { return }
        let cartButton = UIBarButtonItem(image: image, style: .done, target: self, action: #selector(goToCart))
        navigationItem.setRightBarButton(cartButton, animated: true)
        
    }
    @objc func goToCart() {
        print("sqs")
           performSegue(withIdentifier: "CartStoryboard", sender: nil)
       }

}
