//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Aninda Halder on 10/2/20.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]!
    
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backdropview: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var synopsisView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(movie["title"])
        
        titleView.text = movie["title"] as? String
        synopsisView.text = movie["overview"] as? String
        synopsisView.sizeToFit()
        
        
        let baseUrl = "https://image.tmdb.org/t/p/w300"
        
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af_setImage(withURL: posterUrl!)
        
        self.view.bringSubviewToFront(posterView)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w1280"+backdropPath)
        backdropview.af_setImage(withURL: backdropURL!)
        
        
        
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
