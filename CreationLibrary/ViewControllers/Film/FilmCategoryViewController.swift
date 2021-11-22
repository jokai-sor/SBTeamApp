//
//  FilmCategoryViewController.swift
//  SwiftBookTeamApp
//
//  Created by Дмитрий Бизюков on 15.11.2021.
//

import UIKit

class FilmCategoryViewController: UITableViewController {
    
    var filmCategoryList: [FilmCategory] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmCategoryList = Film.getCategoryList()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filmCategoryList.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "category", for: indexPath)
            let filmCategory = filmCategoryList[indexPath.row]
            var content = cell.defaultContentConfiguration()
            content.text = filmCategory.rawValue
            cell.contentConfiguration = content
            return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let filmListVC = segue.destination as? FilmListViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let filmCategory = filmCategoryList[indexPath.row]
        filmListVC.chosenCategory = filmCategory
    }
}

