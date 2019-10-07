//
//  MovieTableViewController.swift
//  MediaPlayer
//
//  Created by Phat Truong on 10/6/19.
//  Copyright © 2019 Phat Truong. All rights reserved.
//

import UIKit

var movieStrings = [String]()
class MovieTableViewController: UITableViewController {
    
    @IBAction func homeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: Private methods
    private func loadMovies() {
       // var index = 1
        movieDataAPI.fetchMovie(){
            object in
            movieStats = object!
            for eachMovie in movieStats.results! {
                movies.append(Movie(name: eachMovie.title, image: nil, rating: eachMovie.voteAverage, eachMovie.posterPath, eachMovie.releaseDate)!)
                print(eachMovie.title)
            }
            for movie in movieStats.results! {
                var movieVideos = MovieVideos(id: 5, results: [])
                movieDataAPI.fetchVideos(movieID: movie.id){
                    object in
                    movieVideos = object
                    movieStrings.append(movieVideos.results![0].key)
                    print(movieVideos.results![0].key)
                }
            }
            DispatchQueue.main.async{
                self.tableView.reloadData()
            }
        }
    }

    
    
    override func viewDidLoad() {
        

        super.viewDidLoad()
        loadMovies()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print (movies.count)
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MovieTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MovieTableViewCell else {
            fatalError("The dequeued cell is not an instance of MovieTableViewCell.")
        }
        
        let movie = movies[indexPath.row]
        
        cell.movieTitleLabel.text = movie.name
        cell.movieRatingLabel.text = String(movie.rating)
        cell.movieImageView.downloaded(from: "https://image.tmdb.org/t/p/w500\(movie.url)")
        cell.movieReleaseDateLabel.text = movie.release
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        movieIndex = indexPath.row
        performSegue(withIdentifier: "watchSegue", sender: self)
    }
  
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
