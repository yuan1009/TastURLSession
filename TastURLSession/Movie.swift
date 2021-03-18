//
//  Movie.swift
//  TastURLSession
//
//  Created by mac on 2021/3/2.
//

import Foundation
import CoreLocation

struct movie {
    var cinema: String
    var caption: String
    var rating: String
    var timeOne: String
    var timeTwo: String
    var timeThree: String
    var timeFour: String
    var fromLocation: CLLocation?
}


var movies = [
    movie(cinema: "國賓影城＠台北微風廣場", caption: "字幕：中文", rating: "保護級", timeOne: "12:00", timeTwo: "14:00", timeThree: "18:00", timeFour: "20:00",fromLocation: CLLocation(latitude: 25.0487389, longitude: 121.5395435)),
    movie(cinema: "信義威秀影城", caption: "字幕：英文", rating: "保護級", timeOne: "13:00", timeTwo: "15:30", timeThree: "17:30", timeFour: "20:00",fromLocation: CLLocation(latitude: 25.0360852, longitude: 121.5649579)),
    movie(cinema: "秀泰影城", caption: "字幕：中文", rating: "保護級", timeOne: "12:00", timeTwo: "14:00", timeThree: "18:00", timeFour: "20:00",fromLocation: CLLocation(latitude: 24.0487389, longitude: 121.5395435)),
    movie(cinema: "天母國賓影城", caption: "字幕：英文", rating: "保護級", timeOne: "13:00", timeTwo: "15:30", timeThree: "17:30", timeFour: "20:00",fromLocation: CLLocation(latitude: 23.0360852, longitude: 121.5649579))


]

struct introduction {
    var director: String
    var actor: String
    var plot: String
}

var introductions = [
    introduction(director: "卡洛斯·羅培茲·埃斯特拉達", actor: "凱莉·瑪麗·陳、奧卡菲娜、陳靜", plot: "《尋龍使者：拉雅》是一部2021年美國動畫冒險奇幻電影，由華特迪士尼動畫工作室製作，為迪士尼經典動畫長片系列的第59部作品以及第2部通過迪士尼+高端先行形式在迪士尼+首映的電影。由唐·霍爾和卡洛斯·羅培茲·埃斯特拉達共同執導，愛黛兒·林和奎·阮共同編劇，凱莉·瑪麗·陳和奧卡菲娜擔任主要配音員。"),
    introduction(director: "道格·李曼", actor: "湯姆·霍蘭、黛西·蕾德莉、邁茲·米克森", plot: "描述距今不遠的「未來」時空，人類移居至的星球飽受「噪音菌」侵害，女人皆已滅亡，男人則可以相互竊聽彼此內心的聲音。一日，少年陶德（湯姆·霍蘭飾）竟遇見一位從天而降的神秘女孩薇拉（黛西·蕾德莉飾），兩人身處危機四伏的人類小鎮，為保衛薇拉的安危只得奔走逃亡，卻也意外發現牽動世界安危的暗黑祕密......")
]

struct movieTitle {
    var movieName: String
    var date: String
    var movieTime: String
    var rating: String
    var imdb: String
    
}

var movieTitles = [
    movieTitle(movieName: "紙房子", date: "2021/3/10", movieTime: "118", rating: "保護級",imdb: "9.9")

]
