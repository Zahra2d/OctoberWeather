//
//  Model.swift
//  OctoberWeather
//
//  Created by Zahraa Darwish on 10/10/2017.
//  Copyright © 2017 Zahraa Darwish. All rights reserved.
//

import UIKit

struct Coordinates {
    let longtitude: Float?
    let latitude: Float?
    
    init(json: [String: Any]) {
        longtitude = json["lon"] as? Float
        latitude = json["lat"] as? Float
    }

}

struct Weather {
    let coordinates: Coordinates?
    
}


