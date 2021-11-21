//
//  FilmListViewController.swift
//  SwiftBookTeamApp
//
//  Created by Дмитрий Бизюков on 15.11.2021.
//

import UIKit

class FilmListViewController: UITableViewController {

    var filmList: [Film]!
    var chosenCategory: FilmCategory!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = chosenCategory.rawValue
        filmList = Film.getFilms(with: chosenCategory)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filmList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "film", for: indexPath)
        let film = filmList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = film.name
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let filmVC = segue.destination as? FilmViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let film = filmList[indexPath.row]
        filmVC.film = film
    }
    

}
