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
    var time=10.0;
    @IBAction func ActionTapBar(_ sender: Any) {
        if(boi.score<=0)
        {   (sender as AnyObject).setTitle("TAP", for: .normal)
            time=10.0
            timer=Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
            
        }
        
        if(boi.score>50)
        {
            time+=0.1;
            
        }
            else if(boi.score>100)
        {
            time+=0.05
        }
        else{time+=0.2;}
         boi.score+=1
        if(time<=0)
        {
            
            timer.invalidate()
            time = (-1)
            TimeAvailable.text="You were dragged out"
            
            
            (sender as AnyObject).setTitle("Tap to play again", for: .normal)
            boi.score=0
        }
        
    }
    var boi = oboi(name: "Placeholder",age: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boi=oboi(name:"Myank",age:18)
        
        ScoreLabel.text="Score: \(boi.score)"
    }
    
    
    
    func action()
    {
        if(time<=0)
        {
            
            timer.invalidate()
            time = (-1)
            TimeAvailable.text="You were dragged out"
            
        }
        time-=0.1
        TimeAvailable.text="Distance: \(String(format: "%.1f", time))"
        ScoreLabel.text="Score: \(boi.score)"
        
       
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

