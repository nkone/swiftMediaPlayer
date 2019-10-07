//
//  Movie.swift
//  MediaPlayer
//
//  Created by Phat Truong on 10/6/19.
//  Copyright © 2019 Phat Truong. All rights reserved.
//

import UIKit

class Movie {
    
    var name : String
    var image : UIImage?
    var rating : Float
    var url : String
    public static var movieStats = MovieStats(page: 1, totalResults: 500, totalPages: 1000, results: nil)
    
    init?(name: String, image: UIImage?, rating: Float, _ url: String) {
        
        guard !name.isEmpty else {
            return nil
        }
        
       // guard (rating >= 0) && (rating <= 10) else {
       //     return nil
      //  }
        self.name = name
        self.image = image
        self.rating = rating
        self.url = url
    }
}
