//
//  ViewController.swift
//  stopwatchTest
//
//  Created by Emmett Shaughnessy on 1/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0.0{
        didSet{
            timeLabel.text = String(format: "%.1f", time)
        }
    }
    var paused = true

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            //This code runs every second
            if self.paused != true{
                self.time += 0.1
                //self.timeLabel.text = String(format: "%.1f", self.time)
            }
        }//End of Timer
        
    }//End of viewDidLoad
    
    
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func start(_ sender: Any) {
        stopwatchStart()
    }
    
    @IBAction func pause(_ sender: Any) {
        stopStopwatch()
    }
    
    @IBAction func reset(_ sender: Any) {
        resetStopwatch()
    }
    
    
    
    
    //MARK: Timer
    func stopwatchStart(){
        paused = false
    }
    
    func stopStopwatch(){
        paused = true
    }
    
    func resetStopwatch(){
        stopStopwatch()
        time = 0.0
        //.timeLabel.text = String(format: "%.1f", self.time)
    }


}

