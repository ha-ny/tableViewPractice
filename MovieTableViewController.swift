//
//  MovieTableViewController.swift
//  tableViewPractice
//
//  Created by 김하은 on 2023/07/31.
//

import UIKit

class MovieTableViewController: UITableViewController {

    let movieData = MovieInfo().movie
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 150
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        
        if let image = UIImage(named: movieData[indexPath.row].title){
            cell.movieImage.image = image
        }
        
        cell.titleLabel.text = movieData[indexPath.row].title
        cell.overviewLabel.text = movieData[indexPath.row].overview
        
        return cell
    }
}
