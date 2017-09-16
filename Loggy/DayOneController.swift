//
//  DayOneController.swift
//  Loggy
//
//  Created by 王資猛 on 2017/9/15.
//  Copyright © 2017年 王資猛. All rights reserved.
//

import UIKit

class DayOneController: UIViewController {
    
    
    @IBOutlet weak var dateDuck: UIDatePicker!
    

    @IBOutlet weak var confirm: UIButton!
    
    @IBOutlet weak var firstShow: UITextField!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // date picker and text
    
    
    @IBAction func dateChoose(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        firstShow.text = formatter.string(from: dateDuck.date)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        let svc = segue.destination as! HomeController;
        
        svc.dvc = firstShow.text
    }
    

    
    // go back to home controller
    @IBAction func backing(_ sender: Any) {
           self.performSegue(withIdentifier: "firstPick", sender: self)
        
 
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
