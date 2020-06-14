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
        //не забыть удалить, если не изменится
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    } 

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return listCategory.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "category", for: indexPath) as! CustomTableViewCell

        cell.catigoriesLabel.text = listCategory[indexPath.row].name.rawValue.capitalized
        
        cell.customImageView.image =  UIImage(named: listCategory[indexPath.row].name.rawValue)
        cell.customImageView.layer.cornerRadius = cell.customImageView.frame.height / 4
        cell.customImageView.clipsToBounds = true
        
        cell.customView.customViewDesing()
        cell.contentCustomView.customViewDesing()
        
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

// MARK:- DesingSettings for Elements

extension UIView {
    func customViewDesing() {
        self.layer.cornerRadius = self.frame.height / 4
        self.layer.shadowOpacity = 7
        self.layer.shadowRadius = 3
        //self.layer.shadowOffset = .zero
        self.layer.shadowOffset = CGSize(width: 0.8, height: 1.1)
    }
}


