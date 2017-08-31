//
//  HomeViewController.swift
//  Loggy
//
//  Created by 王資猛 on 2017/8/31.
//  Copyright © 2017年 王資猛. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var dateassureButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showClicked(_ sender: UIButton) {
        let date = datePicker.date
        let dformatter = DateFormatter()
        dformatter.dateFormat = "yyyy年MM月dd日 HH:mm:ss"
        let datestr = dformatter.string(from: date)
        let message =  "您选择的日期和时间是：\(datestr)"
        
        let alertController = UIAlertController(title: "当前日期和时间",message: message,
                    preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "确定", style: .cancel, handler: nil)
         alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
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
