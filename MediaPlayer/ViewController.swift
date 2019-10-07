//
//  ViewController.swift
//  MediaPlayer
//
//  Created by Phat Truong on 10/4/19.
//  Copyright © 2019 Phat Truong. All rights reserved.
//

import UIKit
import YoutubePlayerView

let playerVars: [String: Any] = [
    "controls": 1,
    "modestbranding": 1,
    "playsinline": 0,
    "rel": 0,
    "showinfo": 1,
    "autoplay": 1
]
class ViewController: UIViewController {
    
    @IBOutlet weak var trailerView: YoutubePlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trailerView.loadWithVideoId(movieStrings[movieIndex], with: playerVars)
      //  print(movies[movieIndex].name)
    }
    //var movieDataAPI = MovieDataAPI()
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
