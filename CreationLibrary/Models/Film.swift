//
//  Film.swift
//  SwiftBookTeamApp
//
//  Created by Дмитрий Бизюков on 14.11.2021.
//

import Foundation

struct Film {
    let name: String
    let duration: String
    let year: Int
    let image: String
    let description: String
    let category: FilmCategory
}

enum FilmCategory: String, CaseIterable {
    case action = "Боевик"
    case comedy = "Комедии"
    case horror = "Ужасы"
}

extension Film {
    
    static func getCategoryList() -> [FilmCategory] {
        var categoryList: [FilmCategory] = []
        
        for value in FilmCategory.allCases {
            categoryList.append(value)
        }
        
        return categoryList
    }
    
    static func getFilms(with category: FilmCategory) -> [Film] {
        var filmsListInChoosenCategory: [Film] = []
        let data = FilmDataManager().films
        
        data.forEach { film in
            if film.category == category {
                filmsListInChoosenCategory.append(film)
            }
        }
        
        return filmsListInChoosenCategory
    }
}
