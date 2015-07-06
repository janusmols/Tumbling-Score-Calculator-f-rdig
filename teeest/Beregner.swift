//
//  Beregner.swift
//  
//
//  Created by Janus Broch Mols on 03/07/15.
//
//

import UIKit

var g_Choose : Int = 1
var g_SelectedMoment : String = "Tom                                  \n0.0"
var ræekke : Int!
var container: [[[[[[String]]]]]] = [[[[[["Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0"],["Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0"],["Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0"],["Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0"],["Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0"],["Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0","Tom                                  \n0.0"]]]]]]

class Beregner: UIViewController {
    
    var tom = "Tom                                  \n0.0"
    
    var c1 = 0
    var c2 = 1
    var b1 = 2
    var b2 = 3
    var e1 = 4
    var e2 = 5
    
    
    


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
    
    @IBOutlet weak var ChooseOne: UIButton!
    @IBOutlet weak var ChooseTwo: UIButton!
    @IBOutlet weak var ChooseThree: UIButton!
    @IBOutlet weak var ChooseFour: UIButton!
    @IBOutlet weak var ChooseFive: UIButton!
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
        if ræekke == nil{
            ræekke = 4
            EOne()
        }
        else if ræekke == 0 {
            COne()
        }
        else if ræekke == 1 {
            CTwo()
        }
        else if ræekke == 2 {
            BOne()
        }
        else if ræekke == 3 {
            BTwo()
        }
        else if ræekke == 4 {
            EOne()
        }
        else if ræekke == 5 {
            ETwo()
        }
        PasteSelectedMomentInLabels()

    }

    @IBAction func CRækkeOne(sender: AnyObject) {
        COne()
    }
    @IBAction func CRækkeTwo(sender: AnyObject) {
        CTwo()
    }
    @IBAction func BRækkeOne(sender: AnyObject) {
        BOne()
    }
    @IBAction func BRækkeTwo(sender: AnyObject) {
        BTwo()
    }
    @IBAction func EliteRækkeOne(sender: AnyObject) {
        EOne()
    }
    @IBAction func EliteRækkeTwo(sender: AnyObject) {
        ETwo()
    }
    
    
    func COne(){
        EliteKrav.hidden = true
        BegynderKrav.hidden = false
        ræekke = c1
        Calculate()
        hideOrAppearButtonsAndLabels()
        BegynderKrav.text = "￼\nMikro og mini: Øvelse 1: Rondat - Flik - whip - flik -\n(frit slutspring)\nJunior og senior: Øvelse 1: Rondat - Flik - whip - flik - (frit slutspring) I enten øvelse 1 eller øvelse 2 skal\nslutspringet indeholde mindst en hel skrue)"
        
        CRækkeOne.tintColor = UIColor .blueColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
        
        momentTitleOne.text = "Rondat (                             \n0.2"
        momentTitleTwo.text = "Flikflak f                           \n0.2"
        momentTitleThree.text = "Whipback ^                           \n0.3"
        momentTitleFour.text = "Flikflak f                           \n0.2"
        momentTitleFive.text = container[0][0][0][0][c1][4]
    
    }
    
    func CTwo(){
        EliteKrav.hidden = true
        BegynderKrav.hidden = false
        ræekke = c2
        Calculate()
        hideOrAppearButtonsAndLabels()
        BegynderKrav.text = "￼\nMikro og mini: Øvelse 2: Rondat - whip - whip - flik -\n(frit slutspring)\nJunior og senior: Øvelse 2: Rondat - whip - whip - flik -\n(frit slutspring) I enten øvelse 1 eller øvelse 2 skal\nslutspringet indeholde mindst en hel skrue)"
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .blueColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
        
        momentTitleOne.text = "Rondat (                             \n0.2"
        momentTitleTwo.text = "Whipback ^                           \n0.3"
        momentTitleThree.text = "Whipback ^                           \n0.3"
        momentTitleFour.text = "Flikflak f                           \n0.2"
        momentTitleFive.text = container[0][0][0][0][c2][4]
        
    }
    
    func BOne(){
        EliteKrav.hidden = true
        BegynderKrav.hidden = false
        ræekke = b1
        Calculate()
        hideOrAppearButtonsAndLabels()
        BegynderKrav.text = "\nMini, junior og senior: Øvelse 1: 5 spring - Fri øvelse - minimum 2 saltospring"
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .blueColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
        
        momentTitleOne.text = container[0][0][0][0][b1][0]
        momentTitleTwo.text = container[0][0][0][0][b1][1]
        momentTitleThree.text = container[0][0][0][0][b1][2]
        momentTitleFour.text = container[0][0][0][0][b1][3]
        momentTitleFive.text = container[0][0][0][0][b1][4]
        
    }
    
    func BTwo(){
        EliteKrav.hidden = true
        BegynderKrav.hidden = false
        ræekke = b2
        Calculate()
        hideOrAppearButtonsAndLabels()
        BegynderKrav.text = "\nMini, junior og senior: Øvelse 2: 5 spring - Fri øvelse - minimum\n2 saltospring og et spring med hel skrue"
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .blueColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
        
        momentTitleOne.text = container[0][0][0][0][b2][0]
        momentTitleTwo.text = container[0][0][0][0][b2][1]
        momentTitleThree.text = container[0][0][0][0][b2][2]
        momentTitleFour.text = container[0][0][0][0][b2][3]
        momentTitleFive.text = container[0][0][0][0][b2][4]
        
    }
    func EOne(){
        EliteKrav.hidden = false
        BegynderKrav.hidden = true
        ræekke = e1
        Calculate()
        hideOrAppearButtonsAndLabels()
        EliteKrav.text = "￼￼\nMini og Junior: Øvelse 1: 8 spring - Fri øvelse- minimum 3\nsaltospring.\nSenior: Øvelse 1: 8 spring - Fri øvelse - minimum 3 saltospring - Max en halv skrue."
        
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .blueColor()
        EliteRækkeTwo.tintColor = UIColor .grayColor()
        
        momentTitleOne.text = container[0][0][0][0][e1][0]
        momentTitleTwo.text = container[0][0][0][0][e1][1]
        momentTitleThree.text = container[0][0][0][0][e1][2]
        momentTitleFour.text = container[0][0][0][0][e1][3]
        momentTitleFive.text = container[0][0][0][0][e1][4]
        momentTitleSix.text = container[0][0][0][0][e1][5]
        momentTitleSeven.text = container[0][0][0][0][e1][6]
        momentTitleEight.text = container[0][0][0][0][e1][7]
        
    }
    
    func ETwo(){
        EliteKrav.hidden = false
        BegynderKrav.hidden = true
        ræekke = e2
        Calculate().
        hideOrAppearButtonsAndLabels()
        EliteKrav.text = "￼\nMini og Junior: Øvelse 2: 8 spring - Fri øvelse - minimum 3\nsaltospring og et spring med hel skrue.\nSenior: Øvelse 2: 8 spring - Fri øvelse - minimum 3\nsaltospring og 2 spring med hel skrue"
    
        CRækkeOne.tintColor = UIColor .grayColor()
        CRækkeTwo.tintColor = UIColor .grayColor()
        BRækkeOne.tintColor = UIColor .grayColor()
        BRækkeTwo.tintColor = UIColor .grayColor()
        EliteRækkeOne.tintColor = UIColor .grayColor()
        EliteRækkeTwo.tintColor = UIColor .blueColor()
        
        momentTitleOne.text = container[0][0][0][0][e2][0]
        momentTitleTwo.text = container[0][0][0][0][e2][1]
        momentTitleThree.text = container[0][0][0][0][e2][2]
        momentTitleFour.text = container[0][0][0][0][e2][3]
        momentTitleFive.text = container[0][0][0][0][e2][4]
        momentTitleSix.text = container[0][0][0][0][e2][5]
        momentTitleSeven.text = container[0][0][0][0][e2][6]
        momentTitleEight.text = container[0][0][0][0][e2][7]
        
    }
    
    func hideOrAppearButtonsAndLabels(){
        if ((ræekke == 4)||(ræekke == 5)){
            ChooseSix.hidden = false
            ChooseSeven.hidden = false
            ChooseEight.hidden = false
            MomentSix.hidden = false
            MomentSeven.hidden = false
            MomentEight.hidden = false
            momentTitleSix.hidden = false
            momentTitleSeven.hidden = false
            momentTitleEight.hidden = false
            ChooseOne.hidden = false
            ChooseTwo.hidden = false
            ChooseThree.hidden = false
            ChooseFour.hidden = false

        }
        else if ((ræekke == 2)||(ræekke == 3)){
            ChooseSix.hidden = true
            ChooseSeven.hidden = true
            ChooseEight.hidden = true
            MomentSix.hidden = true
            MomentSeven.hidden = true
            MomentEight.hidden = true
            momentTitleSix.hidden = true
            momentTitleSeven.hidden = true
            momentTitleEight.hidden = true
            ChooseOne.hidden = false
            ChooseTwo.hidden = false
            ChooseThree.hidden = false
            ChooseFour.hidden = false

        }
        else if ((ræekke == 0)||(ræekke == 1)){
            ChooseSix.hidden = true
            ChooseSeven.hidden = true
            ChooseEight.hidden = true
            MomentSix.hidden = true
            MomentSeven.hidden = true
            MomentEight.hidden = true
            ChooseOne.hidden = true
            ChooseTwo.hidden = true
            ChooseThree.hidden = true
            ChooseFour.hidden = true
            momentTitleSix.hidden = true
            momentTitleSeven.hidden = true
            momentTitleEight.hidden = true
        }
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
    container[0][0][0][0][ræekke][0]
 = g_SelectedMoment
    momentTitleOne.text = container[0][0][0][0][ræekke][0]
    break;
    
  case 2:
    container[0][0][0][0][ræekke][1]
        = g_SelectedMoment
    momentTitleTwo.text = container[0][0][0][0][ræekke][1]
    break;

  case 3:
    container[0][0][0][0][ræekke][2]
        = g_SelectedMoment
    momentTitleThree.text = container[0][0][0][0][ræekke][2]
    break;
            
  case 4:
    container[0][0][0][0][ræekke][3]
        = g_SelectedMoment
    momentTitleFour.text = container[0][0][0][0][ræekke][3]
    break;
            
  case 5:
    container[0][0][0][0][ræekke][4]
        = g_SelectedMoment
    momentTitleFive.text = container[0][0][0][0][ræekke][4]
    break;
    
  case 6:
    container[0][0][0][0][ræekke][5]
        = g_SelectedMoment
    momentTitleSix.text = container[0][0][0][0][ræekke][5]
    break;
            
  case 7:
    container[0][0][0][0][ræekke][6]
        = g_SelectedMoment
    momentTitleSeven.text = container[0][0][0][0][ræekke][6]
    break;

  case 8:
    container[0][0][0][0][ræekke][7]
        = g_SelectedMoment
    momentTitleEight.text = container[0][0][0][0][ræekke][7]
    break;
            
            

  default:
    break;
}
        Calculate()
    }
    
    func findValue(myString: String) ->Float{
    
        var mySubstring = myString.substringFromIndex(advance(myString.startIndex,38))
        
        return (mySubstring as NSString).floatValue
    }
    
    func Calculate(){
        var resultatString = String()
        var floatResult: [Float] = [1,2,3,4,5,6,7,8,9]
        
        resultatString = container[0][0][0][0][ræekke][0]
        floatResult[1] = findValue(resultatString)
        
        resultatString = container[0][0][0][0][ræekke][1]
        floatResult[2] = findValue(resultatString)
        
        resultatString = container[0][0][0][0][ræekke][2]
        floatResult[3] = findValue(resultatString)
        
        resultatString = container[0][0][0][0][ræekke][3]
        floatResult[4] = findValue(resultatString)
        
        resultatString = container[0][0][0][0][ræekke][4]
        floatResult[5] = findValue(resultatString)
        
        resultatString = container[0][0][0][0][ræekke][5]
        floatResult[6] = findValue(resultatString)
        
        resultatString = container[0][0][0][0][ræekke][6]
        floatResult[7] = findValue(resultatString)
        
        resultatString = container[0][0][0][0][ræekke][7]
        floatResult[8] = findValue(resultatString)

        var Result = floatResult[1] + floatResult[2] + floatResult[3] + floatResult[4] + floatResult[5] + floatResult[6] + floatResult[7] + floatResult[8]
        NSLog("Result:\(Result)")
    }
    
    @IBAction func Reset(sender: AnyObject) {
        container[0][0][0][0][ræekke][0] = tom
        container[0][0][0][0][ræekke][1] = tom
        container[0][0][0][0][ræekke][2] = tom
        container[0][0][0][0][ræekke][3] = tom
        container[0][0][0][0][ræekke][4] = tom
        container[0][0][0][0][ræekke][5] = tom
        container[0][0][0][0][ræekke][6] = tom
        container[0][0][0][0][ræekke][7] = tom
        
        if ((ræekke == 0)||(ræekke == 1)){
            
            momentTitleFive.text = container[0][0][0][0][ræekke][4]
            momentTitleSix.text = container[0][0][0][0][ræekke][5]
            momentTitleSeven.text = container[0][0][0][0][ræekke][6]
            momentTitleEight.text = container[0][0][0][0][ræekke][7]
        }
        else {
            momentTitleOne.text = container[0][0][0][0][ræekke][0]
            momentTitleTwo.text = container[0][0][0][0][ræekke][1]
            momentTitleThree.text = container[0][0][0][0][ræekke][2]
            momentTitleFour.text = container[0][0][0][0][ræekke][3]
            momentTitleFive.text = container[0][0][0][0][ræekke][4]
            momentTitleSix.text = container[0][0][0][0][ræekke][5]
            momentTitleSeven.text = container[0][0][0][0][ræekke][6]
            momentTitleEight.text = container[0][0][0][0][ræekke][7]
        
        }
    }

}
