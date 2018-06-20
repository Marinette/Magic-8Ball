//
//  ViewController.swift
//  Magic 8Ball
//
//  Created by Marinette Chen on 18-06-20.
//  Copyright © 2018 Marinette Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {   
    let imageArray = [ "ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var ballChoice: Int = 0
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollOnButtonPressed(_ sender: UIButton) {
        rerollNum()
    }
    
    func rerollNum() {
       ballChoice = Int(arc4random_uniform(4))
        
        imageView.image = UIImage(named: imageArray[ballChoice])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rerollNum()
    }

    
}

