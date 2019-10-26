//
//  ViewController.swift
//  ios 13610342 week10 project2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    
    //Global Variable คือ ตัวแปรสาธารณะที่ใช้ร่วมกันในคลาส และ ฟังก์ชั่นอื่นสามารถเรียกใช้ได้
//    var bmiValueCal = "0"
//    var calBrain = CalculateBrain()
    
    var calculatorBrain = CalculateBrain()
    
    
    
    
    @IBOutlet weak var sliderHeight: UISlider!

    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var heightLable: UILabel!

    
    @IBOutlet weak var weightLable: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderPressed(_ sender: UISlider) {
        print(sender.value)
        print(String(format:"%.2f",sender.value))
        
        let height = String(format:"%.2f",sender.value)
        heightLable.text = "\(height) M."
    }
    
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
        
        print(String(format:"%.0f",sender.value))
        
        let weight = String(format:"%.0f",sender.value)
        weightLable.text = "\(weight) Kg."
    }
    
    
    @IBAction func calculatePressed(_ sender: Any) {
        
//        let bmi = weight /
//        pow(height, 2)
        
        
        let heightFromUser = sliderHeight.value
        let weightFromUser = sliderWeight.value
        //Local Variable
//        let bmi = weight / (height*height)
//        print(bmi)
        
//        bmiValueCal = String(format: "%.1f",weight / (height*height))
        calculatorBrain.calculateBMI(height: heightFromUser  , weight: weightFromUser )
            
        
        
//        self.performSegue(withIdentifier: "goToResult", sender: self)
          performSegue(withIdentifier: "goToResult", sender: self)
        
        
        
    }
    
   
    @IBAction func heartPressed(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "goToCredit", sender: self)
        performSegue(withIdentifier: "goToCredit", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
//            destinationVC.bmiValue = bmiValueCal
            //ชื่อ object.ชื่อตัวแปร  =  ค่าที่ต้องการ set ให้
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getadvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }//end if
        
        if segue.identifier == "goToCredit"{
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Anuthida"
        }
        
    }//end func prepare
    
    


}//end class

