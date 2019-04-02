//
//  bikeTableView.swift
//  TableJsonDev
//
//  Created by Artem on 02/04/2019.
//  Copyright © 2019 Artem. All rights reserved.
//

import UIKit

class bikeTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "bikeCell", for: indexPath) as? bikeCell {
            cell.companyLabel.text = "Honda"
            cell.modelLabel.text = "HRV"
            cell.priceLabel.text = "2500"
            return cell
        }
        
       return UITableViewCell()
    
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "teamListCell", for: indexPath) as? TeamListCell {
//            cell.configureTeamListCell(category: teamListDataSet.teamlistcategory[indexPath.row] )
//            return cell
//        }
//
//        // Configure the cell...
//
//        return UITableViewCell()
//    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

}
