//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Vladimir Terzievski on 6/11/18.

import UIKit

class ViewController: UIViewController {
     let ballArrays = ["ball1","ball2","ball3","ball4","ball5"]
    
    var ballRadndomIndex: Int = 0
    
    //MARK: - Outlets
    
    @IBOutlet weak var ballOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askBtnPressed(_ sender: UIButton) {
        updateStatus()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateStatus()
    }
    func updateStatus (){
        ballRadndomIndex = Int.random(in: 0...4)
       
        print(ballRadndomIndex)
        ballOutlet.image = UIImage(named:ballArrays[ballRadndomIndex])
        
    }
 
}


