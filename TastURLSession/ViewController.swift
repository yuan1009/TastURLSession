//
//  ViewController.swift
//  TastURLSession
//
//  Created by mac on 2021/2/19.
//

import UIKit
import CoreLocation
import FirebaseStorage
import Firebase


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,
                      CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    let userLocation = CLLocation(latitude: 25.0522293, longitude: 121.5438132)
    var index = 0
    var fraction = 3
    var stars: Int = 3
    let db = Firestore.firestore()

    @IBOutlet weak var cinema: UITableView!
    @IBOutlet weak var plot: UITextView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDateLabel: UILabel!
    @IBOutlet weak var movieTimeLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieIMDBLabel: UILabel!
    @IBOutlet var starFraction: [UIImageView]!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        plots()
        readData()
        
        
        locationManager = CLLocationManager()
        locationManager.requestAlwaysAuthorization()              //請求授權
        locationManager.delegate = self                           //設置定位服務管理器代理
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //精準度
        locationManager.distanceFilter = 1                        //更新頻率
        locationManager.stopUpdatingLocation()                    //定位服務更新
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cinemaCell", for: indexPath) as! CinemaTableViewCell
        cell.backgroundColor = UIColor.gray
        
        
            db.collection("cinemas").getDocuments{
            (QuerySnapshot, Error) in
            if let querySnapshot = QuerySnapshot{
                for document in querySnapshot.documents{
//                    let distance = self.userLocation.distance(from: document.data()["fromLocation"] as! CLLocation) / 1000
                    
                    cell.cinemaLable.text = document.data()["cinema"] as? String
                    cell.captionLabel.text = document.data()["caption"] as? String
                    cell.ratingLabel.text = document.data()["rating"] as? String
                    cell.timeOneLabel.text = document.data()["timeOne"] as? String
                    cell.timeTwoLabel.text = document.data()["timeTwo"] as? String
                    cell.timeThreeLabel.text = document.data()["timeThree"] as? String
                    cell.timeFourLabel.text = document.data()["timeFour"] as? String
//                    cell.distanceLabel.text = " \(String(format: "%.02f", distance)) KMs"
                    
                }
            }
        }
//        let distance = userLocation.distance(from: cinemas.fromLocation!) / 1000
//
//        cell.cinemaLable.text = cinemas.cinema
//        cell.captionLabel.text = cinemas.caption
//        cell.ratingLabel.text = cinemas.rating
//        cell.timeOneLabel.text = cinemas.timeOne
//        cell.timeTwoLabel.text = cinemas.timeTwo
//        cell.timeThreeLabel.text = cinemas.timeThree
//        cell.timeFourLabel.text = cinemas.timeFour
//        cell.distanceLabel.text = " \(String(format: "%.02f", distance)) KMs"
        return cell
    }
//    func plots() {
//
//        let introduction = introductions[index]
//        plot.text = "導演:\(introduction.director)\n\n演員:\(introduction.actor)\n\n劇情:\(introduction.plot)"
//
//    }

    func readData(){
        plot.backgroundColor = UIColor.gray

        db.collection("movies").whereField("movieName", isEqualTo: "紙房子第一季").getDocuments{
            (QuerySnapshot, Error) in
            if let querySnapshot = QuerySnapshot{
                for document in querySnapshot.documents{
                    self.movieNameLabel.text = document.data()["movieName"] as? String
                    self.movieDateLabel.text = document.data()["date"] as? String
                    self.movieTimeLabel.text = document.data()["movieTime"] as? String
                    self.movieRatingLabel.text = document.data()["rating"] as? String
                    self.movieIMDBLabel.text = document.data()["imdb"] as? String
                    
                    self.plot.text = "導演:\(String(describing: document.data()["director"] as! String))\n\n演員:\(String(describing: document.data()["actor"] as! String))\n\n劇情:\(String(describing: document.data()["plot"] as! String))"
                    
                    let imageRef = Storage.storage().reference().child("gs://ios-movie.appspot.com/ios-movies/moneyheist.jpeg")
                    imageRef.getData(maxSize: 10 * 1024 * 1024) { (data, error) in
                        if let imageData = data {
                            self.imageView.image = UIImage(data: imageData)
                }
            }
        }
    }
    
//    func starImageFraction() {
//
//        for star in starFraction {
////            let starimage = UIImage(named: "star.fill")
//            star.image = UIImage(named: "star.fill")
//        }
//
//    }
    


}

    }}
