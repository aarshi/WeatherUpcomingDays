//
//  WUDService.swift
//  WeatherUpcomingDays
//
//  Created by Shivam Chhatwal on 5/19/20.
//  Copyright © 2020 Shivam Chhatwal. All rights reserved.
//

import Foundation

struct WUDService {
    
//func to return urlstring
let forecastURL = "https://api.openweathermap.org/data/2.5/forecast?appid=a0e3b2ad195d7be1180fae6161106a64"


//func to pass city name and append url with it to return urlstring back
    func forecastUrlString(cityName: String) {
     let urlString = "\(forecastURL)&q=\(cityName)"
        performRequest(urlString: urlString)
}

//func to take urlstring and convert to URL
    func performRequest(urlString: String){
        if let url = URL(string: urlString) {
        
        //create urlsessin
        let urlSession = URLSession(configuration: .default)
        
        //create session task
            let urlSessionTask = urlSession.dataTask(with: url) { (data, response, error) in
            if error != nil{
                return
            }
            
            if let dataq = data {
                let forecastContent = self.parseJSON(data: dataq)
//                print (forecastContent?.)
            }
        }
            //and resume session task
            urlSessionTask.resume()
    }
}
    
    func parseJSON(data: Data) -> UpcomingDays? {
        let decoder = JSONDecoder()
        do {
            let content =  try decoder.decode(UpcomingDays.self, from: data)
            return content
        } catch {
            return nil
        }
    }
}
