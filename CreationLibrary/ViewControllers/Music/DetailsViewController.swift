//
//  DetailsViewController.swift
//  CreationLibrary
//
//  Created by Никита Шинов on 17.11.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var artistCover: UIImageView!
    
    @IBOutlet var textDescription: UILabel!
    
    
    
    var artist: Artist!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = artist.name
        artistCover.image = UIImage(named: artist.photo)
        textDescription.text = artist.description
        
    }
}

