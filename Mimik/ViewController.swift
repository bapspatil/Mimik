//
//  ViewController.swift
//  Mimik
//
//  Created by Bapusaheb Patil on July 11,2018.
//  Copyright © 2018 Bapusaheb Patil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var actTaskLabel: UILabel!
    
    var emotions = ["happy", "sad", "excited", "concerned", "surprised", "trusting", "worried", "in anticipation", "disappointed", "surprised", "frustrated"]
    var activities = ["swimming with dolphins", "planting trees", "sailing in the ocean", "reading a book", "riding a horse", "watching a movie", "riding a bike", "cleaning your house", "dining with friends", "running from a lion", "crawling in a desert"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextAct(_ sender: Any, forEvent event: UIEvent) {
        let randomEmotionIndex = Int(arc4random_uniform(UInt32(emotions.count)))
        let randomEmotion = emotions[randomEmotionIndex]
        
        let randomActivityIndex = Int(arc4random_uniform(UInt32(activities.count)))
        let randomActivity = activities[randomActivityIndex]
        
        actTaskLabel.text = "You are " + randomEmotion + " " + randomActivity + "!"
    }
    
}

