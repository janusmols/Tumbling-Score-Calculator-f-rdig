//
//  Beregner.swift
//  
//
//  Created by Janus Broch Mols on 03/07/15.
//
//

import UIKit

var g_Choose : Int = 1

class Beregner: UIViewController {
    
    var c1 = 1
    var c2 = 2
    var b1 = 3
    var b2 = 4
    var e1 = 5
    var e2 = 6
    
    var container: [Int: String]!

    @IBOutlet weak var CRækkeOne: UIButton!
    @IBOutlet weak var CRækkeTwo: UIButton!
    @IBOutlet weak var BRækkeOne: UIButton!
    @IBOutlet weak var BRækkeTwo: UIButton!
    @IBOutlet weak var EliteRækkeOne: UIButton!
    @IBOutlet weak var EliteRækkeTwo: UIButton!
    
    
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
    
    @IBOutlet weak var MomentSix: UILabel!
    @IBOutlet weak var MomentSeven: UILabel!
    @IBOutlet weak var MomentEight: UILabel!
    
    @IBOutlet weak var ChooseSix: UIButton!
    @IBOutlet weak var ChooseSeven: UIButton!
    @IBOutlet weak var ChooseEight: UIButton!
    
    @IBOutlet weak var EliteKrav: UILabel!
    @IBOutlet weak var BegynderKrav: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = "Beregner"
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Bordered, target: self, action: "back:")
        self.navigationItem.leftBarButtonItem = newBackButton;
        
    }
    
    func back(sender: UIBarButtonItem) {
        performSegueWithIdentifier("PushToHome", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        container[1] = "" as String
        PasteSelectedMomentInLabels()
    
        if (momentTitleOne.text == ""){
            momentTitleOne.text = "Tom"
        }
        
        

        EliteKrav.hidden = false
        BegynderKrav.hidden = true
        
        EliteKrav.text = "￼￼\nMini og Junior: Øvelse 1: 8 spring - Fri øvelse- minimum 3\nsaltospring.\nSenior: Øvelse 1: 8 spring - Fri øvelse - minimum 3 saltospring - Max en halv skrue."
        
        OtteMoment()
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .blueColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()

    }

    @IBAction func CRækkeOne(sender: AnyObject) {
        FemMoment()
        
        BegynderKrav.text = "￼\nMikro og mini: Øvelse 1: Rondat - Flik - whip - flik -\n(frit slutspring)\nJunior og senior: Øvelse 1: Rondat - Flik - whip - flik - (frit slutspring) I enten øvelse 1 eller øvelse 2 skal\nslutspringet indeholde mindst en hel skrue)"
        
        CRækkeOne.tintColor = UIColor .blueColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
    }
    @IBAction func CRækkeTwo(sender: AnyObject) {
        FemMoment()
        
        BegynderKrav.text = "￼\nMikro og mini: Øvelse 2: Rondat - whip - whip - flik -\n(frit slutspring)\nJunior og senior: Øvelse 2: Rondat - whip - whip - flik -\n(frit slutspring) I enten øvelse 1 eller øvelse 2 skal\nslutspringet indeholde mindst en hel skrue)"
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .blueColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
    }
    
    
    
    @IBAction func BRækkeOne(sender: AnyObject) {
        FemMoment()
        
        BegynderKrav.text = "\nMini, junior og senior: Øvelse 1: 5 spring - Fri øvelse - minimum 2 saltospring"
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .blueColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
    }
    @IBAction func BRækkeTwo(sender: AnyObject) {
        FemMoment()
        
        BegynderKrav.text = "\nMini, junior og senior: Øvelse 2: 5 spring - Fri øvelse - minimum\n2 saltospring og et spring med hel skrue"
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .blueColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
    }
    

    
    @IBAction func EliteRækkeOne(sender: AnyObject) {
        OtteMoment()
        
        EliteKrav.text = "￼￼\nMini og Junior: Øvelse 1: 8 spring - Fri øvelse- minimum 3\nsaltospring.\nSenior: Øvelse 1: 8 spring - Fri øvelse - minimum 3 saltospring - Max en halv skrue."
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .blueColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
    }
    @IBAction func EliteRækkeTwo(sender: AnyObject) {
        OtteMoment()
        
        EliteKrav.text = "￼\nMini og Junior: Øvelse 2: 8 spring - Fri øvelse - minimum 3\nsaltospring og et spring med hel skrue.\nSenior: Øvelse 2: 8 spring - Fri øvelse - minimum 3\nsaltospring og 2 spring med hel skrue"
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .blueColor()
    }
    
    
    func FemMoment(){
        EliteKrav.hidden = true
        BegynderKrav.hidden = false
        
        MomentSix.hidden = true
        MomentSeven.hidden = true
        MomentEight.hidden = true
        ChooseSix.hidden = true
        ChooseSeven.hidden = true
        ChooseEight.hidden = true
        momentTitleSix.hidden = true
        momentTitleSeven.hidden = true
        momentTitleEight.hidden = true
    
    }
    
    func OtteMoment(){
        EliteKrav.hidden = false
        BegynderKrav.hidden = true
        
        MomentSix.hidden = false
        MomentSeven.hidden = false
        MomentEight.hidden = false
        ChooseSix.hidden = false
        ChooseSeven.hidden = false
        ChooseEight.hidden = false
        momentTitleSix.hidden = false
        momentTitleSeven.hidden = false
        momentTitleEight.hidden = false
        
    }
    
    
    

    @IBAction func ChooseOne(sender: AnyObject) {
        g_Choose = 1
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseTwo(sender: AnyObject) {
        g_Choose = 2
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseThree(sender: AnyObject) {
        g_Choose = 3
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseFour(sender: AnyObject) {
        g_Choose = 4
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseFive(sender: AnyObject) {
        g_Choose = 5
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseSix(sender: AnyObject) {
        g_Choose = 6
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseSeven(sender: AnyObject) {
        g_Choose = 7
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }
    @IBAction func ChooseEight(sender: AnyObject) {
        g_Choose = 8
        performSegueWithIdentifier("PushToChooseTable", sender: self)
    }

    
    func PasteSelectedMomentInLabels(){
        switch (g_Choose) {
  case 1:
    container[[1][1]] = SelectedMoment as String
    momentTitleOne.text = SelectedMoment
    break;
    
  case 2:
    momentTitleTwo.text = SelectedMoment
    break;

  case 3:
    momentTitleThree.text = SelectedMoment
    break;
            
  case 4:
    momentTitleFour.text = SelectedMoment
    break;
            
  case 5:
    momentTitleFive.text = SelectedMoment
    break;
    
  case 6:
    momentTitleSix.text = SelectedMoment
    break;
            
  case 7:
    momentTitleSeven.text = SelectedMoment
    break;

  case 8:
    momentTitleEight.text = SelectedMoment
    break;
            
            

  default:
    break;
}
    }
    
    
    @IBAction func Reset(sender: AnyObject) {
    }


}
