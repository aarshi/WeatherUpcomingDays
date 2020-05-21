//
//  WUDModel.swift
//  WeatherUpcomingDays
//
//  Created by Shivam Chhatwal on 5/19/20.
//  Copyright © 2020 Shivam Chhatwal. All rights reserved.
//

import Foundation

struct UpcomingDays:Decodable {
    let cod: String
    let message: Int
    let cnt: Int
    let list: [ListContent]
    let city: CityData
}

/////////////////////////////////////////////////////////////////////////////////////
struct CityData: Decodable {
    let id: Int
    let name: String
    let coord: Coordinate
    let country: String
    let population: Int
    let timezone: Int
    let sunrise: Int
    let sunset: Int
}

struct Coordinate:Decodable {
    let lat: Double
    let lon: Double
}

/////////////////////////////////////////////////////////////////////////////////////
struct ListContent:Decodable {
    let dt: Int
    let main: MainTxt
    let weather: [WeatherTxt]
    let clouds: CloudsTxt
    let wind: WindTxt
    let sys: SysTxt
    let dt_txt: String
}

//struct DTTxt:Decodable {
//    let dt: Int
//}

struct MainTxt:Decodable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let sea_level: Int
    let grnd_level: Int
    let humidity: Int
    let temp_kf: Double
}

struct WeatherTxt:Decodable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct CloudsTxt:Decodable {
    let all: Int
}

struct WindTxt:Decodable {
    let speed: Double
    let deg: Int
}

struct SysTxt: Decodable {
    let pod: String
}
