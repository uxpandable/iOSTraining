//
//  oneThreeViewController.swift
//  iOSTraining
//
//  Created by Nils Bjarne on 04/10/2016.
//  Copyright © 2016 Nils Bjarne. All rights reserved.
//

import UIKit

class oneThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainView = self.view

        //Add the first view with red background
        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        
        //Add subview inset by 10 from the superview
        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        
        //Adding views to sub each other.
        mainView?.addSubview(v1)
        v1.addSubview(v2)
        
        //Rotate v1 by 45 degrees
        v1.transform = CGAffineTransform(rotationAngle: 45)
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
