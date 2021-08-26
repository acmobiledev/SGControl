//
//  ViewController.swift
//  SGControl
//
//  Created by Amit Chaudhary on 8/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    let mySegmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["One", "Two", "Three"])
        segmentedControl.backgroundColor = .systemOrange
        segmentedControl.tintColor = .yellow
        segmentedControl.selectedSegmentIndex = 1
        segmentedControl.addTarget(self, action: #selector(segmentedValueChanged(_:)), for: UIControl.Event.valueChanged)
        return segmentedControl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @objc func segmentedValueChanged(_ sender: UISegmentedControl!) {
        switch sender.selectedSegmentIndex {
        case 0:
            print(" Nirmala ")
        case 1:
            print("Amit")
        default:
            print("Others")
        }
    }
    
    override func viewDidLayoutSubviews() {
        print("AAAAAAAAAAAAAAAAA")
        self.view.addSubview(mySegmentedControl)
        let xPosition: CGFloat = 0
        let yPosition: CGFloat = 150
        let elementWidth: CGFloat = self.view.frame.size.width
        let elementHeight: CGFloat = 30
        
        // auto layout of segmentedControl is not implemented
        self.mySegmentedControl.frame = CGRect(x: xPosition, y: yPosition, width: elementWidth, height: elementHeight)
    }


}




/*
 class ViewController: UIViewController {
     
     override func viewDidLoad()
     {
         super.viewDidLoad()
         // Do any additional setup after loading the view, typically from a nib.
         
         let mySegmentedControl = UISegmentedControl (items: ["One","Two","Three"])
         
         let xPostion:CGFloat = 10
         let yPostion:CGFloat = 150
         let elementWidth:CGFloat = 300
         let elementHeight:CGFloat = 30
         
         mySegmentedControl.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)
         
         // Make second segment selected
         mySegmentedControl.selectedSegmentIndex = 1
         
         //Change text color of UISegmentedControl
         mySegmentedControl.tintColor = UIColor.yellow
         
         //Change UISegmentedControl background colour
         mySegmentedControl.backgroundColor = UIColor.black
         
         // Add function to handle Value Changed events
         mySegmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
         
         self.view.addSubview(mySegmentedControl)
     }
     
     @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
     {
         print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
     }
     
     
     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
         // Dispose of any resources that can be recreated.
     }
     
 }
 
 */

