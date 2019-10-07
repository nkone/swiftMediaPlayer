//
//  ViewController.swift
//  MediaPlayer
//
//  Created by Phat Truong on 10/4/19.
//  Copyright © 2019 Phat Truong. All rights reserved.
//

import UIKit
import YoutubePlayerView


class ViewController: UIViewController {

    @IBOutlet weak var trailerView: YoutubePlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        trailerView.loadWithVideoId("quj8sK3Phh8")
        print(movies[movieIndex].name)
    }
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
