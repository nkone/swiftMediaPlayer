//
//  MovieTableViewController.swift
//  MediaPlayer
//
//  Created by Phat Truong on 10/6/19.
//  Copyright © 2019 Phat Truong. All rights reserved.
//

import UIKit

var movieIndex = 0
var movies = [Movie]()
class MovieTableViewController: UITableViewController {
    
    

    //MARK: Private methods
    
    private func loadMovies() {
        let moviePhoto = UIImage(named: "noGameNoLife")
        
        guard let movie1 = Movie(name: "No Game No Life Zero", image: moviePhoto, rating:8) else {
            fatalError("Unable to instantiate movie 1")
        }
        guard let movie2 = Movie(name: "No Game No Life Zero", image: moviePhoto, rating:8) else {
            fatalError("Unable to instantiate movie 1")
        }
        
        movies += [movie1, movie2]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        loadMovies()
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
    
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MovieTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MovieTableViewCell else {
            fatalError("The dequeued cell is not an instance of MovieTableViewCell.")
        }
        
        let movie = movies[indexPath.row]
        
        cell.movieTitleLabel.text = movie.name
        cell.movieDescriptionLabel.text = "quj8sK3Phh8"
        cell.movieImageView.image = movie.image
        
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
