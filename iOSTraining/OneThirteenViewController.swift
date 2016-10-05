//
//  OneThirteenViewController.swift
//  iOSTraining
//
//  Created by Nils Bjarne on 05/10/2016.
//  Copyright © 2016 Nils Bjarne. All rights reserved.
//

import UIKit

class OneThirteenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainView = self.view
        let v1 = UIView(frame: CGRect(x: 100, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v2 = UIView()
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v3 = UIView()
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        mainView?.addSubview(v1)
        v1.addSubview(v2)
        v1.addSubview(v3)
        v2.translatesAutoresizingMaskIntoConstraints = false
        v3.translatesAutoresizingMaskIntoConstraints = false
        
        // Dictate constraints using Visual Format Notation (page 36 / 37)
        let d = ["v2":v2,"v3":v3]
        NSLayoutConstraint.constraints(withVisualFormat: ["H:|[v2|]","V:|[v2(10)","H:[v3(20)]|","V:[v3(20)]|"], options: [], metrics: nil, views: d).flatten().map{$0})
  
        

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
