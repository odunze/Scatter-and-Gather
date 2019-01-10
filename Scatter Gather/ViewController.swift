//
//  ViewController.swift
//  Scatter Gather
//
//  Created by Lotanna Igwe-Odunze on 11/14/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var shouldScramble: Bool = false


    @IBAction func toggle(_ Sender: Any) {
        let viewArray: [UIView] = [L, O, T, A, N, N2, A2]
        let duration: Double = 2.0


        
        //Toggle
        if shouldScramble == false {
        
            shouldScramble = true } else { shouldScramble = false }
        
        //Animation
        
        if shouldScramble == true {
            
            for x in viewArray {
           
            UIView.animate(withDuration: duration, animations: {
                
                self.moveRight(view: x) })//Note the animations and its functions are now inside the parentheses.
            { //This starts the completion part
                
                (finished) in
                if finished { UIView.animate(withDuration: duration, animations: {
                    
                    self.moveLeft(view: x) }) } //Move back to the left after moving right
                
                }//This ends the completion part.
            } //End of for loop
        }
    }
    
    func moveRight(view: UIView) {
        view.center.x += 300 //Increments the X position of the view to move it to the right.
    }
    
    func moveLeft(view: UIView) {
        view.center.x -= 300 //Decrements the X position of the view to move it to the left.
    }
    
    
    //Outlets
    
    @IBOutlet weak var L: UILabel!
    @IBOutlet weak var O: UILabel!
    @IBOutlet weak var T: UILabel!
    @IBOutlet weak var A: UILabel!
    @IBOutlet weak var N: UILabel!
    @IBOutlet weak var N2: UILabel!
    @IBOutlet weak var A2: UILabel!

    
}

