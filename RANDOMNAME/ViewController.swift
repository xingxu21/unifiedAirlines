//
//  ViewController.swift
//  RANDOMNAME
//
//  Created by Myank Singhal on 4/12/17.
//  Copyright © 2017 Myank Singhal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ScoreLabel: UILabel!
    var timer = Timer();
    
    @IBOutlet weak var TimeAvailable: UILabel!
    var time=5.0;
 

    @IBOutlet weak var tapBar: UIButton! //same tapbar
    @IBAction func ActionTapBar(_ sender: UIButton) {
       // sender.tag = 0
        
        if(boi.score <= 0 || time == 0) //initialize
        {
            (sender as AnyObject).setTitle("TAP", for: .normal)
            boi.score = 0
            ScoreLabel.text="Score: \(boi.score)"

            timer.invalidate()
            timer=Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
            time=5.0
           
            
          
        }
        
        //score condition
         if(boi.score>50)
        {
            time+=0.05;
            
        }
        else if(boi.score>100)
        {
            time+=0.05
        }
        else
        {
            time+=0.2
        }
        
        boi.score+=1

        
    }
    var boi = oboi(name: "Placeholder",age: 0)
    
override func viewDidLoad() {
        super.viewDidLoad()
    TimeAvailable.text = "Distance: \(String(format: "%.1f", time))"
        boi=oboi(name:"Boy",age:0)
        
        ScoreLabel.text="Score: \(boi.score)"
    }
    
    
    
    func action()
    {
        time-=0.1
        if(time<=0)
        {
            
            
            time = (0)
            TimeAvailable.text="You were dragged out"
            //timer.invalidate()
            tapBar.setTitle("Try again", for: .normal)
            boi.score = 0
            
        }
       else
        {
            TimeAvailable.text="Distance: \(String(format: "%.1f", time))"
            ScoreLabel.text="Score: \(boi.score)"
        }
        
       
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

