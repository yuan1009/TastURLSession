//
//  MovieViewController.swift
//  TastURLSession
//
//  Created by mac on 2021/2/25.
//

import UIKit
import WebKit

class MovieViewController: UIViewController {
    
    @IBOutlet weak var movieWebView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlstr = "https://www.youtube.com/watch?v=C5tTTrpRQ6A"
        if let url = URL(string: urlstr) {
            let requst = URLRequest(url: url)
            movieWebView.load(requst)
        }
                
        }
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
