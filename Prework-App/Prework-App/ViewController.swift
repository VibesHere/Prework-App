//
//  ViewController.swift
//  Prework-App
//
//  Created by Matthew Dibello on 8/25/26.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var schoolField: UITextField!
    
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBAction func changePetQuantity(_ sender: UIStepper) {
        petQuantity.text = "\(Int(sender.value))"
    }
    @IBOutlet weak var petQuantity: UILabel!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func IntroduceButton(_ sender: UIButton) {

        // Lets us choose the title we have selected from the segmented control
       // In our example that is whether it is first, second, third or forth
       let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)

       // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
       let introduction = "My name is \(firstNameField.text!) \(lastNameField.text!) and I attend \(schoolField.text!). I am currently in my \(year!) year and I own \(petQuantity.text!) animals in my personal zoo (home).  It is \(morePetsSwitch.isOn) that I want more critters."

        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Pleasure to meet ya!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

