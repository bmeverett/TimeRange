//
//  ViewController.swift
//  Times
//
//  Created by Brandon Everett on 4/12/17.
//  Copyright © 2017 Brandon Everett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var TimeList = [TimeObj]()
    private var Times = [Double]()
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var txtResult: UILabel!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TimeList.append(TimeObj(startTime: 1.0, endTime: 2.5, name: "Vid 1"));
        TimeList.append(TimeObj(startTime: 2.0, endTime: 7.30, name: "Vid 2"));
        TimeList.append(TimeObj(startTime: 3.0, endTime: 24.0, name: "Vid 3"));
        TimeList.append(TimeObj(startTime: 4.0, endTime: 13.85, name: "Vid 4"));
        TimeList.append(TimeObj(startTime: 5.0, endTime: 20.25, name: "Vid 5"));

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

       @IBAction func buttonTouch(_ sender: Any) {
        txtResult.text = "";
        inputText.resignFirstResponder()

        var txt = "";
        for t in TimeList {
            //use the pattern match operator in swift
            //this is thte samee as if Times[row] >= t.StartTime && Times[row] <= t.EndTime
            if t.StartTime...t.EndTime ~= Double(inputText.text!)! {
                txt += "\(t.Name)\n";
            }
            
        }
        //if no videos match display message
        txtResult.text = txt.isEmpty ? "No Videos Matched" : txt;
        
    }
    

    
}

