//
//  ViewController.swift
//  WeatherUpcomingDays
//
//  Created by Shivam Chhatwal on 5/19/20.
//  Copyright © 2020 Shivam Chhatwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let wudServiceObject = WUDService()
        wudServiceObject.forecastUrlString(cityName: "Denver")
        // Do any additional setup after loading the view.
    }
}

