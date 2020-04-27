//
//  ViewController.swift
//  Yesterday
//
//  Created by Jeffrey  on 4/27/20.
//  Copyright © 2020 BMCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      

        var d: Date = Date(year: 2020, month: 4, day: 25);
        d.prev();
        print(d);   //Should now be April 24, 2020

        d = Date(year: 2020, month: 4, day: 1);
        d.prev();
        print(d);   //Should now be March 31, 2020

        d = Date(year: 2020, month: 1, day: 1);
        d.prev();
        print(d);   //Should now be December 31, 2019 
    }


}

