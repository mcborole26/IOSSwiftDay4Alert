g//
//  ViewController.swift
//  IOSSwiftDay4Alert
//
//  Created by Felix-ITS 012 on 24/07/18.
//  Copyright © 2018 felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var messageText: UITextField!
    @IBAction func showAlert(_ sender: UIButton) {
        showAlertMessage(title: titleText.text!, message: messageText.text!)
    }
    
    func showAlertMessage(title:String,message:String)
    {
        let alert=UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (okAction) in
            print("OK Clicked")
        }
            let cancelAction=UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) { (cancelAction) in
                print("Cancel Clicked")
        }
            alert.addAction(okAction)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: nil)
    }
    
    //override func didReceiveMemoryWarning() {
        //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



