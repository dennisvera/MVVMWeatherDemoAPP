//
//  ViewController.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 11/19/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    // MARK: Constants
    
    private let segueDayView = "SegueDayView"
    private let segueWeekView = "SegueWeekView"
    
    // MARK : - Properties
    
    private var dayViewController: DayViewController!
    @IBOutlet var weekViewController: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }



}

