//
//  BikeModel.swift
//  TableJsonDev
//
//  Created by Artem on 02/04/2019.
//  Copyright © 2019 Artem. All rights reserved.
//

import Foundation
import UIKit


var bikesArray = [Any]()

struct Bikes: Codable {
    let company: String
    let model: String
    let price: Double
    let description: String
    let picture: String
}



struct BikeWelcome: Codable {
    let bikesCatalog: [BikesCatalog]
    
    enum CodingKeys: String, CodingKey {
        case bikesCatalog = "bikes_catalog"
    }
}

struct BikesCatalog: Codable {
    let company: Company
    let model: String
    let price: Double
    let description: String
    let picture: String
}

enum Company: String, Codable {
    case soma = "Soma"
    case surly = "Surly"
    case trek = "Trek"
}



func userApiJsonCodable () {
    guard let url = URL(string: "https://static.upstarts.work/test_task/bikes_catalog/bikes_164Sf3fqye4u.json") else {return}
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard let dataResponse = data,
            error == nil else {
                print(error?.localizedDescription ?? "Response Error")
                return }
        
        do {
            //here dataResponse received from a network request
            let decoder = JSONDecoder()
            let model = try decoder.decode([BikesCatalog].self, from: dataResponse) //Decode JSON Response Data
            print("---------Codable---------")
            print(model[0].company)
        } catch let parsingError {
            print("Error", parsingError)
        }
    }
    task.resume()
}


