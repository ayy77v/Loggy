//
//  HomeController.swift
//  Loggy
//
//  Created by 王資猛 on 2017/9/15.
//  Copyright © 2017年 王資猛. All rights reserved.
//

import UIKit




class HomeController: UIViewController {

    
    @IBOutlet weak var dateOne: UITextField!
    
    
    @IBOutlet weak var dateSecond: UITextField!
    
    var dvc:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         dateOne.text = dvc

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        dateOne.text = dvc
    }
    
    

    @IBAction func firstKiss(_ sender: Any) {
        
       self.performSegue(withIdentifier: "dayOne", sender: self)
        
       
    }
   
  
    
    @IBAction func secondKiss(_ sender: Any) {
        
           self.performSegue(withIdentifier: "dayTwo", sender: self)
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
