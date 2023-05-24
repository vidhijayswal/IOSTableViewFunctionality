//
//  UIVC.swift
//  table_view
//
//  Created by vidhi jayswal on 05/02/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit

class UIVC: UIViewController {
    

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var myimageview: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        lblTitle.text = movies[myIndex]
        
        myimageview.image = UIImage(named: movies[myIndex])
        lblDescription.text = moviesdesc[myIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
