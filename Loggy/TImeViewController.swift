//
//  TImeViewController.swift
//  Loggy
//
//  Created by 王資猛 on 2017/9/3.
//  Copyright © 2017年 王資猛. All rights reserved.
//

import UIKit
import Firebase

class TImeViewController: UIViewController {
    @IBOutlet weak var dateDuck: UIDatePicker!
    
    
    @IBOutlet weak var labelLion: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        FirebaseApp.configure()
        var ref: DatabaseReference!
        ref = Database.database().reference()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        labelLion.text = formatter.string(from: dateDuck.date)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        labelLion.text = formatter.string(from: dateDuck.date)
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func dateChoose(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        labelLion.text = formatter.string(from: dateDuck.date)
        
        
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
