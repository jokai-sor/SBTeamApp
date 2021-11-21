//
//  FilmViewController.swift
//  SwiftBookTeamApp
//
//  Created by Дмитрий Бизюков on 15.11.2021.
//

import UIKit

class FilmViewController: UIViewController {
    
    @IBOutlet var filmPosterImage: UIImageView!
    @IBOutlet var filmDurationLabel: UILabel!
    @IBOutlet var filmYearLabel: UILabel!
    @IBOutlet var filmDescriptionLabel: UILabel!
    
    
    
    
    var film: Film!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = film.name
        filmPosterImage.image = UIImage(named: film.image)
        filmDurationLabel.text = "Длительность фильма: \(film.duration)"
        filmYearLabel.text = "Год выхода: \(film.year)"
        filmDescriptionLabel.text = "Описание:\n\(film.description)"
    }
}
