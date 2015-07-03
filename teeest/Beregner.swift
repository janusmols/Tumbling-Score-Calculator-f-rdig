//
//  Beregner.swift
//  
//
//  Created by Janus Broch Mols on 03/07/15.
//
//

import UIKit

class Beregner: UIViewController {

    @IBOutlet weak var momentTitleOne: UILabel!
    @IBOutlet weak var momentTitleTwo: UILabel!
    @IBOutlet weak var momentTitleThree: UILabel!
    @IBOutlet weak var momentTitleFour: UILabel!
    @IBOutlet weak var momentTitleFive: UILabel!
    @IBOutlet weak var momentTitleSix: UILabel!
    @IBOutlet weak var momentTitleSeven: UILabel!
    @IBOutlet weak var momentTitleEight: UILabel!
    
    @IBOutlet weak var samletResult: UILabel!
    @IBOutlet weak var Result: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func ChooseOne(sender: AnyObject) {
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseTwo(sender: AnyObject) {
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseThree(sender: AnyObject) {
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseFour(sender: AnyObject) {
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseFive(sender: AnyObject) {
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseSix(sender: AnyObject) {
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseSeven(sender: AnyObject) {
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseEight(sender: AnyObject) {
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }

    
    
    @IBAction func Reset(sender: AnyObject) {
    }


}
