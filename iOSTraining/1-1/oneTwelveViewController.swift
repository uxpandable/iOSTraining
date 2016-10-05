//
//  oneTwelveViewController.swift
//  iOSTraining
//
//  Created by Nils Bjarne on 04/10/2016.
//  Copyright © 2016 Nils Bjarne. All rights reserved.
//

import UIKit

class oneTwelveViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let mainView = self.view
        
        // demonstration of struts nd springs in autoresizing
        let v1 = UIView(frame: CGRect(x: 100, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v2 = UIView(frame: CGRect(x: 0, y: 0, width: 132, height: 10))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v3 = UIView(frame: CGRect(x: v1.bounds.width-20, y: v1.bounds.height-20, width: 20, height: 20))
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        mainView?.addSubview(v1)
        v1.addSubview(v2)
        v1.addSubview(v3)
        
        // Now same setup further down on the screen, bringing autoresize into play
        let v4 = UIView(frame: CGRect(x: 100, y: 311, width: 132, height: 194))
        v4.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v5 = UIView(frame: CGRect(x: 0, y: 0, width: 132, height: 10))
        v5.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v6 = UIView(frame: CGRect(x: v1.bounds.width-20, y: v1.bounds.height-20, width: 20, height: 20))
        v6.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        let v7 = UILabel(frame: CGRect(x: 80, y: 311, width: 250, height: 25))
        v7.text = "Modified superview dimensions:"
        v7.textColor = UIColor.darkGray
        
        mainView?.addSubview(v4)
        mainView?.addSubview(v7)
        v4.addSubview(v5)
        v4.addSubview(v6)
        v5.autoresizingMask = .flexibleWidth
        v6.autoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin]
        
        //resizing v4
        v4.bounds.size.width += 40
        v4.bounds.size.height -= 50
        
        
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
