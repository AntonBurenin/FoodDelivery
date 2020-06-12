//
//  CategoryTableViewController.swift
//  delivery
//
//  Created by Александр Бехтер on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {

    var listCategory = DishCategory.getDishCategoryes()
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        
        cell.customView.layer.cornerRadius = cell.customView.frame.height / 4
        cell.customView.layer.shadowOpacity = 1
        cell.customView.layer.shadowRadius = 5
        cell.customView.layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        
        cell.contentCustomView.layer.cornerRadius = cell.customView.frame.height / 4
        cell.contentCustomView.layer.shadowOpacity = 1
        cell.contentCustomView.layer.shadowRadius = 5
        cell.contentCustomView.layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let indexPath = tableView.indexPathForSelectedRow  else { return }
        let dishCollection = segue.destination as! MenuListCollectionViewController
        dishCollection.cellImage = listCategory[indexPath.row]
    }

}
