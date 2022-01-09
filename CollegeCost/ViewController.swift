//
//  ViewController.swift
//  CollegeCost
//
//  Created by Jerski on 2022/1/6.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tuitionTextField: UITextField!
    
    
    @IBOutlet weak var livingCostTextField: UITextField!
    
    @IBOutlet weak var insuranceTextField: UITextField!
    
    @IBOutlet weak var housingTextField: UITextField!
    
    @IBOutlet weak var booksTextField: UITextField!
    
    @IBOutlet weak var totalCostLabel: UILabel!
    
    @IBOutlet weak var perMonthCostLabel: UILabel!
    var numberOfYear:Double = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let skView = SKView(frame: view.frame)
        skView.backgroundColor = .clear
        view.insertSubview(skView, at: 1)
        let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scene.backgroundColor = .clear
        let emitterNode = SKEmitterNode(fileNamed: "MyParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)
        
}
    
    @IBAction func calculate(_ sender: Any) {
    
    if let tuition = Double(tuitionTextField.text!),
       let livingCost = Double(livingCostTextField.text!),
       let insurance = Double(insuranceTextField.text!),
       let housing = Double(housingTextField.text!),
       let books = Double(booksTextField.text!) {
    
        // calculate the total cost
        let totalCost = tuition + livingCost + insurance + housing + books
        totalCostLabel.text = String(format: "%.1f", totalCost) + " USD"
        // calculate per month cost
        let perMonthCost = totalCost / 12
        perMonthCostLabel.text = String(format: "%.1f", perMonthCost) + " USD"
    }
    // press calculate to retrieve keyboard
    view.endEditing(true)
    }

}


    
