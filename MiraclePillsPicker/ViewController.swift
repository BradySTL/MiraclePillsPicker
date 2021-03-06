//
//  ViewController.swift
//  MiraclePillsPicker
//
//  Created by Brady Mirkes on 9/21/16.
//  Copyright © 2016 Brady Mirkes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var hideBtn1: UITextField!
    @IBOutlet weak var hideBtn2: UITextField!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameTxt: UITextField!
    @IBOutlet weak var streetAddressLbl: UILabel!
    @IBOutlet weak var streetAddressTxt: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var startNewOrderBtn: UIButton!
    
    
    
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    
    
    
    let states = [ "AK - Alaska",
                   "AL - Alabama",
                   "AR - Arkansas",
                   "AS - American Samoa",
                   "AZ - Arizona",
                   "CA - California",
                   "CO - Colorado",
                   "CT - Connecticut",
                   "DC - District of Columbia",
                   "DE - Delaware",
                   "FL - Florida",
                   "GA - Georgia",
                   "GU - Guam",
                   "HI - Hawaii",
                   "IA - Iowa",
                   "ID - Idaho",
                   "IL - Illinois",
                   "IN - Indiana",
                   "KS - Kansas",
                   "KY - Kentucky",
                   "LA - Louisiana",
                   "MA - Massachusetts",
                   "MD - Maryland",
                   "ME - Maine",
                   "MI - Michigan",
                   "MN - Minnesota",
                   "MO - Missouri",
                   "MS - Mississippi",
                   "MT - Montana",
                   "NC - North Carolina",
                   "ND - North Dakota",
                   "NE - Nebraska",
                   "NH - New Hampshire",
                   "NJ - New Jersey",
                   "NM - New Mexico",
                   "NV - Nevada",
                   "NY - New York",
                   "OH - Ohio",
                   "OK - Oklahoma",
                   "OR - Oregon",
                   "PA - Pennsylvania",
                   "PR - Puerto Rico",
                   "RI - Rhode Island",
                   "SC - South Carolina",
                   "SD - South Dakota",
                   "TN - Tennessee",
                   "TX - Texas",
                   "UT - Utah",
                   "VA - Virginia",
                   "VI - Virgin Islands",
                   "VT - Vermont",
                   "WA - Washington", 
                   "WI - Wisconsin", 
                   "WV - West Virginia", 
                   "WY - Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        hideBtn1.isHidden = true
        hideBtn2.isHidden = true
    }
    @IBAction func buyNowBtnPressed(_ sender: UIButton) {
        buyNowBtn.isHidden = true
        fullNameLbl.isHidden = true
        fullNameTxt.isHidden = true
        streetAddressLbl.isHidden = true
        streetAddressTxt.isHidden = true
        cityLbl.isHidden = true
        cityTxt.isHidden = true
        hideBtn1.isHidden = true
        hideBtn2.isHidden = true
        stateLbl.isHidden = true
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        successImg.isHidden = false
        startNewOrderBtn.isHidden = false
    }
    
    @IBAction func startNewOrderPressed(_ sender: AnyObject) {
        buyNowBtn.isHidden = false
        fullNameLbl.isHidden = false
        fullNameTxt.isHidden = false
        streetAddressLbl.isHidden = false
        streetAddressTxt.isHidden = false
        cityLbl.isHidden = false
        cityTxt.isHidden = false
        hideBtn1.isHidden = false
        hideBtn2.isHidden = false
        stateLbl.isHidden = false
        statePickerBtn.isHidden = false
        statePicker.isHidden = false
        successImg.isHidden = true
        startNewOrderBtn.isHidden = true
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        hideBtn1.isHidden = false
        hideBtn2.isHidden = false
    }
}

