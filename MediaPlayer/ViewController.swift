//
//  ViewController.swift
//  MediaPlayer
//
//  Created by Phat Truong on 10/4/19.
//  Copyright © 2019 Phat Truong. All rights reserved.
//

import UIKit
import YoutubePlayerView

var linkTest = ""

class ViewController: UIViewController {

    @IBOutlet weak var linkField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func submitButton(_ sender: Any) {
        if linkField.text != "" {
            linkTest = linkField.text!
           // performSegue(withIdentifier: "submitSegue", sender: self)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
