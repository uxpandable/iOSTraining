//
//  oneOneViewController.swift
//  iOSTraining
//
//  Created by Nils Bjarne on 04/10/2016.
//  Copyright © 2016 Nils Bjarne. All rights reserved.
//

import UIKit

class oneOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Re-creating figure 1-1 by adding views in code.   
        
        super.viewDidLoad()
        let mainView = self.view
        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v2 = UIView(frame: CGRect(x: 41, y: 56, width: 132, height: 194))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v3 = UIView(frame: CGRect(x: 43, y: 197, width: 160, height: 230))
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        
        //adding the subviews to mainView hierarchy
        mainView?.addSubview(v1)
        v1.addSubview(v2)
        mainView?.addSubview(v3)
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
