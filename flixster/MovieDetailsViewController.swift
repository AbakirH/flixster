//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Abakir Hanna on 10/2/20.
//  Copyright © 2020 abakirhanna@gmail.com. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabal: UILabel!
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabal.text = movie["overview"] as? String
        synopsisLabal.sizeToFit()
        // Do any additional setup after loading the view.
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = (movie["poster_path"] as? String)!
        let posterUrl = URL(string: baseUrl + posterPath)
              
        posterView.af.setImage(withURL: posterUrl!)
        
        let backdropPath = (movie["backdrop_path"] as? String)!
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
              
        backdropView.af.setImage(withURL: backdropUrl!)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
