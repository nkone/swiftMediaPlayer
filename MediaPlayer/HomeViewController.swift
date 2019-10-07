//
//  HomeViewController.swift
//  MediaPlayer
//
//  Created by Phat Truong on 10/6/19.
//  Copyright © 2019 Phat Truong. All rights reserved.
//

import UIKit
var movieIndex = 0
var movies = [Movie]()
var movieDataAPI = MovieDataAPI()
var movieStats = MovieStats(page: 5, totalResults: 6, totalPages: 5, results: nil)
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let moviePhoto = UIImage(named: "noGameNoLife")
        movieDataAPI.fetchMovie(){
            object in
            movieStats = object!
            for eachMovie in movieStats.results! {
                movies.append(Movie(name: eachMovie.title, image: nil, rating: eachMovie.voteAverage, eachMovie.posterPath)!)
                print(eachMovie.title)
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIViewContentMode = .scaleAspectFit) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
            }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIViewContentMode = .scaleAspectFit) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
