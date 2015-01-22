//
//  ViewController.swift
//  Weather App
//
//  Created by Diana Michelle on 1/22/15.
//  Copyright (c) 2015 DianaMichelle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cityLabel: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func getWeatherPressed(sender: AnyObject) {
    
        let city = cityLabel.text!.lowercaseString
        
        if !city.isEmpty {
        
            let url = NSURL(string: "http://weather-forecast.com/locations/"+city+"/forecasts/latest")
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
                (data, response, error) in
                
                if error == nil {
                    var urlContent = NSString(data: data! , encoding: NSUTF8StringEncoding)!
                    println(urlContent)
                }
            }
            
            task.resume()
            println(url!)
            
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
    
    
}

