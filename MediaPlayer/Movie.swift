//
//  Movie.swift
//  MediaPlayer
//
//  Created by Phat Truong on 10/5/19.
//  Copyright © 2019 Phat Truong. All rights reserved.
//

import UIKit

class Movie {
    
    var name : String
    var image : UIImage?
    var rating : Int
    
    init?(name: String, image: UIImage?, rating: Int) {
        
        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 10) else {
            return nil
        }
        self.name = name
        self.image = image
        self.rating = rating
    }
}
