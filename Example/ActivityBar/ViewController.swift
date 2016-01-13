//
//  ViewController.swift
//  ActivityBar
//
//  Created by Tanner Nelson on 08/11/2015.
//  Copyright (c) 2015 Tanner Nelson. All rights reserved.
//

import UIKit
import ActivityBar

class ViewController: UIViewController {

    //MARK: Interface
    var activityBar: ActivityBar!
    @IBOutlet weak var slider: UISlider!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add the ActivityBar to your view controller
        //If there is a NavigationBar present, ActivityBar
        //will attach itself to the NavigationBar
        self.activityBar = ActivityBar.addTo(self)
        
        //Change the color of the ActivityBar at any time
        //By default, ActivityBar will be the tintColor
        //of your application
        
        //self.activityBar.color = UIColor.greenColor()
        
        //Start and stop the ActivityBar loading
        
        //self.activityBar.start()
    }
    @IBAction func sliderChanged(sender: AnyObject) {
        //set the progress somewhere between 0 and 1
        self.activityBar.progress = self.slider.value
    }

    @IBAction func stopButtonPressed(sender: AnyObject) {
        self.activityBar.stop()
    }
    @IBAction func startButtonPressed(sender: AnyObject) {
        self.activityBar.start()
    }
}

