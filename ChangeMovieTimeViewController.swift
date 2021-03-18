//
//  ChangeMovieTimeViewController.swift
//  TastURLSession
//
//  Created by mac on 2021/3/11.
//

import UIKit

class ChangeMovieTimeViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
       
    
    var cinema = "國賓影城＠台北微風廣場"
    var cinemaMovie = ["國賓影城","威秀影城","京站威秀影城","喜樂時代影城","國賓影城＠台北微風廣場"]
    var movieName = ["紙房子", "復仇者聯盟", "水行俠", "美國隊長", "尋龍使者", "花樣女子"]
    var movieDate = ["3月24(星期五)", "3月25(星期六)", "3月26(星期日)", "3月27(星期一)", "3月28(星期二)"]

    @IBOutlet weak var cinemaMovieTextView: UITextView!
    @IBOutlet weak var movieNameTextView: UITextView!
    @IBOutlet weak var movieDateTextView: UITextView!
    
    var cinemaMoviePickerView = UIPickerView()
    var movieNamePickerView = UIPickerView()
    var movieDatePickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cinemaMoviePickerView.dataSource = self
        movieNamePickerView.dataSource = self
        movieDatePickerView.dataSource = self
        cinemaMoviePickerView.delegate = self
        movieNamePickerView.delegate = self
        movieDatePickerView.delegate = self
        cinemaMovieTextView.inputView = cinemaMoviePickerView
        movieNameTextView.inputView = movieNamePickerView
        movieDateTextView.inputView = movieDatePickerView
        cinemaMovieTextView.text = cinema
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == cinemaMoviePickerView {
            return cinemaMovie.count
        }else if pickerView == movieNamePickerView {
            return movieName.count
        }else if pickerView == movieDatePickerView {
            return movieDate.count
        }
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == cinemaMoviePickerView {
            return cinemaMovie[row]
        }else if pickerView == movieNamePickerView {
            return movieName[row]
        }else if pickerView == movieDatePickerView {
            return movieDate[row]
        }
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == cinemaMoviePickerView {
            cinemaMovieTextView.text = cinemaMovie[row]
        }else if pickerView == movieNamePickerView {
            movieNameTextView.text = movieName[row]
        }else if pickerView == movieDatePickerView {
            movieDateTextView.text = movieDate[row]
        }
    }
    
    
        
    

}
