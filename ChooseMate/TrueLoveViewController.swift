//
//  TrueLoveViewController.swift
//  ChooseMate
//
//  Created by Ariel Tang on 2017/3/30.
//  Copyright © 2017年 ArthurYuan. All rights reserved.
//

import UIKit

class TrueLoveViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectTrueLove(_ sender: Any) {
        if starTextField.text == "virgo" {
            if sex.selectedSegmentIndex == 1 {
                if Int(age.text!)! >= 20 && Int(age.text!)! <= 35 {
                    yes.isHidden = false
                    no.isHidden = true
                }
                else {
                    yes.isHidden = true
                    no.isHidden = false
                }
            }
            else {
                yes.isHidden = true
                no.isHidden = false
            }
        }
        else {
            print("no")
            yes.isHidden = true
            no.isHidden = false
        }
    }

    @IBAction func ageSlider(_ sender: UISlider) {
        age.text = "\(Int(sender.value))"
    }
    @IBOutlet weak var starTextField: UITextField!
    @IBOutlet weak var sex: UISegmentedControl!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var no: UIImageView!
    @IBOutlet weak var yes: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
