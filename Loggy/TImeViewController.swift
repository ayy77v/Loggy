//
//  TImeViewController.swift
//  Loggy
//
//  Created by 王資猛 on 2017/9/3.
//  Copyright © 2017年 王資猛. All rights reserved.
//

import UIKit

import Firebase

import FirebaseAuth

class TImeViewController: UIViewController {
    
    //declare UI variable
    @IBOutlet weak var dateDuck: UIDatePicker!
    
   
    

   
    @IBOutlet weak var clickOn: UIButton!
    
   
    // Firebase
    
    
     var ref: DatabaseReference!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"

        
        // test

 

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
        
        
        // Dispose of any resources that can be recreated.
    }
    
 
    
    
    @IBAction func dateChoose(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        
    

    }
    
    @IBAction func storeData(_ sender: Any) {
    //day
        let format = DateFormatter()
        format.dateFormat = "dd"
      
        var daying = ""
        daying = format.string(from: dateDuck.date)

        
    //month
        let formon = DateFormatter()
        formon.dateFormat = "MM"
        var mo = ""
        mo = formon.string(from: dateDuck.date)
   
        
   // hour
        let formhour = DateFormatter()
        formhour.dateFormat = "HH"
        var hr = ""
        hr = formhour.string(from: dateDuck.date)
        
        
  //minute
        let formmin = DateFormatter()
        formmin.dateFormat = "mm"
        var mn = ""
        mn = formmin.string(from: dateDuck.date)
        
 // create the array to store
        
       var listty = [
        "month": mo,
        "day": daying,
        "hour": hr,
        "minute": mn
        
        
        
        
        
        ]
        
        
        
        
// store date to firebase
        let uid = Auth.auth().currentUser!.uid
        
        ref?.child("users").child(uid).setValue(listty)
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
