//
//  firstViewController.swift
//  RANDOMNAME
//
//  Created by David Feng on 4/26/17.
//  Copyright © 2017 David Feng. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
      
    override func viewDidLoad() {
        super.viewDidLoad()

       
        nameLabel.transform = CGAffineTransform(rotationAngle: 7.15 * CGFloat.pi/4)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
