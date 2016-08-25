//
//  ViewController.swift
//  calculator
//
//  Created by Rui Figueiredo on 25/08/16.
//  Copyright © 2016 Rui Figueiredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var times: UIButton!
    
    @IBOutlet weak var clear: UIButton!
    
    
    
    
    @IBOutlet weak var display: UILabel!
    
    let max_number = 10
    var display_message:String = String(0)
    var display_nr = 0
    var number_1:Float = 0
    var number_2:Float = 0
    var operation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func update_display(){
        self.display.text=display_message
    }
    func update_display_message(number:String){
        if self.display_nr == 0 {
            self.display_message = number
            self.display_nr += 1
            
        }else if self.display_nr < self.max_number {
            self.display_message += number
            self.display_nr += 1
        }
        self.update_display()
    }
    
    //number operations
    @IBAction func point(sender: AnyObject) {
        self.update_display_message(String("."))
    }
    @IBAction func zero(sender: AnyObject) {
        self.update_display_message(String(0))
    }
    
    @IBAction func one(sender: AnyObject) {
        self.update_display_message(String(1))
    }
    @IBAction func two(sender: AnyObject) {
        self.update_display_message(String(2))
    }
    
    @IBAction func three(sender: AnyObject) {
        self.update_display_message(String(3))
    }
   
    @IBAction func four(sender: AnyObject) {
        self.update_display_message(String(4))
    }
    
    @IBAction func five(sender: AnyObject) {
        self.update_display_message(String(5))
    }
    
    @IBAction func six(sender: AnyObject) {
        self.update_display_message(String(6))
    }
    
    @IBAction func Seven(sender: AnyObject) {
        self.update_display_message(String(7))
    }
    
    @IBAction func eight(sender: AnyObject) {
        self.update_display_message(String(8))
    }
    
    @IBAction func pressnine(sender: AnyObject) {
        self.update_display_message(String(9))
    }
    
    @IBAction func plus(sender: AnyObject) {
        number_1 = Float(self.display_message)!
        self.display_message = String(0)
        self.display_nr = 0
        self.operation = 1
        self.update_display()
    }
    
    @IBAction func times(sender: AnyObject) {
        number_1 = Float(self.display_message)!
        self.display_message = String(0)
        self.display_nr = 0
        self.operation = 2
        self.update_display()
    }
    
    
    @IBAction func divide(sender: AnyObject) {
        number_1 = Float(self.display_message)!
        self.display_message = String(0)
        self.display_nr = 0
        self.operation = 3
        self.update_display()

    }
    
    @IBAction func minus(sender: AnyObject) {
        number_1 = Float(self.display_message)!
        self.display_message = String(0)
        self.display_nr = 0
        self.operation = 4
        self.update_display()

    }
    
    @IBAction func equal(sender: AnyObject) {
        
        switch self.operation {
        case 1:
            self.display_message = String(number_1+Float(display_message)!)
            break
        case 2:
            self.display_message = String(number_1*Float(display_message)!)
            break
        case 3:
            self.display_message = String(number_1/Float(display_message)!)
            break
        case 4:
            self.display_message = String(number_1-Float(display_message)!)
            break
        default:
            break
        }
        self.display_nr = self.display_message.characters.count
        self.update_display()
    }
    
    @IBAction func clear(sender: AnyObject) {
        self.display_message = String(0)
        self.update_display()
        self.display_nr = 0
    }
    
    

}

