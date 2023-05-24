//
//  TableViewVC.swift
//  table_view
//
//  Created by vidhi jayswal on 05/02/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit


var movies = ["Simba","Zero","KGF","Luka Chhupi","Gully Boy","URI: The Surgical Strike","2.0","Kedarnath","Loveyatri","Namste England","Simba","Zero","KGF","Luka Chhupi","Gully Boy","URI: The Surgical Strike","2.0","Kedarnath","Loveyatri","Namste England"]
    
    
    var moviesdesc = ["Actor:Ranvir Sinh   Actress:Sara Ali Khan","Actor:Shahrukh Khan   Actress:Anushka Sharma","Actor:Ayyappa P Sharma  Actress:Srinidhi Shetty","Actor:Kartik Aaryan   Actress:Kriti Sanon","Actor:Ranvir Sinh   Actress:Aalia Bhatt","Actor:Vicky Kaushal   Actress:Yami Gautam","Actor:Rajnikanth   Actress:Ammy Jackson","Actor:Sushant Singh Rajput   Actress:Sara Ali Khan","Actor:Aayush Sharma   Actress:Zarina Wahab","Actor:Arjun Kapoor   Actress:Parineeti Chopra","Actor:Ranvir Sinh   Actress:Sara Ali Khan","Actor:Shahrukh Khan   Actress:Anushka Sharma","Actor:Ayyappa P Sharma  Actress:Srinidhi Shetty","Actor:Kartik Aaryan   Actress:Kriti Sanon","Actor:Ranvir Sinh   Actress:Aalia Bhatt","Actor:Vicky Kaushal   Actress:Yami Gautam","Actor:Rajnikanth   Actress:Ammy Jackson","Actor:Sushant Singh Rajput   Actress:Sara Ali Khan","Actor:Aayush Sharma   Actress:Zarina Wahab","Actor:Arjun Kapoor   Actress:Parineeti Chopra"]
    
    var myIndex = 0
    
class TableViewVC: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return movies.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row]
        if indexPath.row%2 == 0
        {
            cell.backgroundColor = UIColor.lightGray
            return cell
        }
        else
        {
            cell.backgroundColor = UIColor.white
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }


}
