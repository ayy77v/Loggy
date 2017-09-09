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
    @IBOutlet weak var dateDuck: UIDatePicker!
    
    var ref: DatabaseReference!
    
    @IBOutlet weak var labelLion: UILabel!

    @IBOutlet weak var labelCat: UILabel!
   
    @IBOutlet weak var clickOn: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        labelLion.text = formatter.string(from: dateDuck.date)
        
        // test
        let format = DateFormatter()
        format.dateFormat = "dd"
        labelCat.text = format.string(from: dateDuck.date)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
        
        
        // Dispose of any resources that can be recreated.
    }
    
 
    
    
    @IBAction func dateChoose(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        labelLion.text = formatter.string(from: dateDuck.date)
        
        let format = DateFormatter()
        format.dateFormat = "dd"
        labelCat.text = format.string(from: dateDuck.date)
    }
    
    @IBAction func storeData(_ sender: Any) {
    //day
        let format = DateFormatter()
        format.dateFormat = "dd"
        labelCat.text = format.string(from: dateDuck.date)
        
    //month
        let formon = DateFormatter()
        formon.dateFormat = "MM"
        let mo = ""
   
        
   // hour
        
        
  //minute
        
        
        let uid = Auth.auth().currentUser!.uid
        
        ref?.child("users").child(uid).setValue(labelCat.text)
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
