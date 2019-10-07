//
//  MovieTableViewCell.swift
//  MediaPlayer
//
//  Created by Phat Truong on 10/6/19.
//  Copyright © 2019 Phat Truong. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {


    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieReleaseDateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
