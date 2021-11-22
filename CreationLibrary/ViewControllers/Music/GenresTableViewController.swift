//
//  GenresTableViewController.swift
//  CreationLibrary
//
//  Created by Никита Шинов on 17.11.2021.
//

import UIKit

class GenresTableViewController: UITableViewController {
    
    var genreList: [MusicGenre] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        genreList = Artist.getListOfGenres()

    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genreList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        let musicGenre = genreList[indexPath.row]
        cell.textLabel?.text = musicGenre.rawValue

        return cell
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let artistsVC = segue.destination as? ArtistsTableViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let musicGenre = genreList[indexPath.row]
        artistsVC.genre = musicGenre
    }

}
