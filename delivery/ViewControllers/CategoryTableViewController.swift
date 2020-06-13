//
//  CategoryTableViewController.swift
//  delivery
//
//  Created by Александр Бехтер on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {

    var listCategory = DishCategory.getDishCategoryes() // лучше сделать let
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return listCategory.count // можно не писать return 
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "category", for: indexPath)

        cell.textLabel?.text = listCategory[indexPath.row].name.rawValue
        

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let indexPath = tableView.indexPathForSelectedRow  else { return }
        let dishCollectionVC = segue.destination as! MenuListCollectionViewController
        dishCollectionVC.dishes = listCategory[indexPath.row].dish
        dishCollectionVC.category = listCategory[indexPath.row].name
    }

}
