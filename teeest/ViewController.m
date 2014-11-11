
//
//  ViewController.m
//  teeest
//
//  Created by Janus Broch Mols on 08/11/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import "ViewController.h"






@interface ViewController ()
{
    NSArray *springArray;
}

@end

@implementation ViewController
@synthesize picker,label;



//Krav: streng indeholder 10+3 karakterer eksempel "Rondat    3.4"
float FindValue(NSString *mytxt)
{
    //Finder talværdien i strengen og returnerer denne....
    NSString *myString4 = ([mytxt substringFromIndex:38]);
    float stringFloat = [myString4 floatValue];
    return stringFloat;
}


- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel *pickerViewLabel = (id)view;
 
    
    if (!pickerViewLabel) {
        pickerViewLabel= [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, [pickerView rowSizeForComponent:component].width - 10.0f, [pickerView rowSizeForComponent:component].height)];
    }
    
    pickerViewLabel.backgroundColor = [UIColor clearColor];
    pickerViewLabel.text = Springarraytext[row]; // where therapyTypes[row] is a specific example from my cod2
    pickerViewLabel.font = [UIFont fontWithName:@"ChalkboardSE-Regular" size:12];
    
    return pickerViewLabel;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _moment55.tintColor = [UIColor grayColor];
    _moment88.tintColor = [UIColor blueColor];
    springArray = [[NSArray alloc]initWithObjects:
               
                   @"Rondat (                             \n0.2",
                   @"Kraftspring .f                       \n0.2",
                   @"Flikflak f                           \n0.2",
                   @"Whipback ^                           \n0.3",
                   @"Baglæns salto lukket -o              \n0.5",
                   @"Baglæns salto hofte -<               \n0.6",
                   @"Baglæns salto strakt -/              \n0.6",
                   @"Forlæns salto lukket .–o             \n0.5",
                   @"Forlæns salto hofte .-<              \n0.6",
                   @"Forlæns salto strakt .-/             \n0.6",
                   @"Barani .1                            \n0.6",
                   @"Forlæns hel-skrue .2                 \n0.7",
                   @"Forlæns halvanden-skrue .3           \n0.9",
                   @"Baglæns halv-skrue 1.                \n0.6",
                   @"Baglæns hel-skrue  2.                \n0.7",
                   @"Baglæns halvanden-skrue 3.           \n0.9",
                   @"Baglæns dobbelt-skrue 4.             \n1.1",
                   @"Baglæns 2,5-skrue 5.                 \n1.4",
                   @"Baglæns 3-skrue 6.                   \n1.7",
                   @"Baglæns 3,5-skrue 7.                 \n2.1",
                   @"Baglæns 4-skrue 8.                   \n2.5",
                   @"Dobbeltback --o                      \n2.0",
                   @"Dobbeltback hoftebøjet --<           \n2.2",
                   @"Dobbeltback strakt --/               \n2.4",
                   @"Dobbelt forlæns lukket .--o          \n2.0",
                   @"Dobbelt forlæns hoftebøjet .--<      \n2.2",
                   @"Half-in lukket 1 -o                  \n2.2",
                   @"Half-in hoftebøjet 1-<               \n2.4",
                   @"Half-out strakt -1/                  \n2.6",
                   @"Forlæns dobbelt lukket-out .-1o      \n2.2",
                   @"Forlæns dobbelt hoftebøjet out .-1<  \n2.4",
                   @"Full-in lukket 2-o                   \n2.4",
                   @"Full-in hoftebøjet 2-<               \n2.6",
                   @"Full-in strakt 2-/                   \n2.8",
                   @"Full-out lukket -2o                  \n2.4",
                   @"Full-out hofte -2<                   \n2.6",
                   @"Full-out strakt -2/                  \n2.8",
                   @"Full-Full lukket 22o                 \n3.2",
                   @"Full-Full strakt 22/                 \n3.6",
                   @"Full-rudy lukket 23o                 \n3.8",
                   @"Full-rudy strakt 23/                 \n4.2",
                   @"Miller lukket 24o                    \n4.4",
                   @"Miller strakt 24/                    \n4.8",
                   @"Killer strakt 44/                    \n6.4",
                   @"Trippelback lukket ---o              \n4.5",
                   @"Trippelback hoftebøjet ---<          \n5.1",
                   @"Full-in triff lukket 2--o            \n6.3",
                   @"Full-in triff hoftebøjet 2--<        \n6.9",
                   nil];
    
    
    //Copy to temporary string array
    int x=0;
    for (id tempObject in springArray) {
        Springarraytext[x++]=tempObject;
    }
    
    label.numberOfLines = 3;
    _labelto.numberOfLines = 3;
    _labeltre.numberOfLines = 3;
    _labelfire.numberOfLines = 3;
    _labelfem.numberOfLines = 3;
    _labelseks.numberOfLines = 3;
    _labelsyv.numberOfLines = 3;
    _labelotte.numberOfLines = 3;
    picker.hidden = NO;
}




-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    switch (component) {
        case 0:
            return springArray.count;
            break;
            
        default:
            break;
    }
    return 0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    switch (component) {
        case 0:
            return [springArray objectAtIndex:row];
            break;
            
        default:
            break;
    }
    return 0;


}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    switch (g_iWhichLabel) {
        case 1:
             label.text = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            break;
            
        case 2:
            _labelto.text = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            break;

        case 3:
            _labeltre.text = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            break;

        case 4:
            _labelfire.text = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            break;

        case 5:
            _labelfem.text = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            break;

        case 6:
            _labelseks.text = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            break;

        case 7:
            _labelsyv.text = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            break;

        case 8:
            _labelotte.text = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            break;

            
        default:
            break;
    }
        picker.hidden = NO;
    
    //From button "Beregn"
    NSString *Resultat;
    float fPoint[10];
    float fPointRes;
    
    Resultat = label.text;
    fPoint[1] = FindValue(Resultat);
    
    Resultat = _labelto.text;
    fPoint[2] = FindValue(Resultat);
    
    Resultat = _labeltre.text;
    fPoint[3] = FindValue(Resultat);
    
    Resultat = _labelfire.text;
    fPoint[4] = FindValue(Resultat);
    
    Resultat = _labelfem.text;
    fPoint[5] = FindValue(Resultat);
    
    Resultat = _labelseks.text;
    fPoint[6] = FindValue(Resultat);
    
    Resultat = _labelsyv.text;
    fPoint[7] = FindValue(Resultat);
    
    Resultat = _labelotte.text;
    fPoint[8] = FindValue(Resultat);
    
    fPointRes = fPoint[1]+fPoint[2]+fPoint[3]+fPoint[4]+fPoint[5]+fPoint[6]+fPoint[7]+fPoint[8];
    
    _resultat.text =  [NSString stringWithFormat:@"%.1f",fPointRes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)press:(id)sender {
    g_iWhichLabel=1;
    picker.hidden = NO;
}

- (IBAction)pressto:(id)sender {
    g_iWhichLabel=2;
    picker.hidden = NO;
}

- (IBAction)presstre:(id)sender {
    g_iWhichLabel=3;
    picker.hidden = NO;
    
}

- (IBAction)pressfire:(id)sender {
    g_iWhichLabel=4;
    picker.hidden = NO;
}

- (IBAction)pressfem:(id)sender {
    g_iWhichLabel=5;
        picker.hidden = NO;
}


- (IBAction)pressseks:(id)sender {
    g_iWhichLabel=6;
    picker.hidden = NO;
}

- (IBAction)presssyv:(id)sender {
    g_iWhichLabel=7;
    picker.hidden = NO;
}

- (IBAction)pressotte:(id)sender {
    g_iWhichLabel=8;
    picker.hidden = NO;
}


- (IBAction)moment5:(id)sender {
    NSString *Resultat;
    float fPoint[10];
    float fPointRes;
    
    _momentseks.hidden = YES;
    _momentsyv.hidden = YES;
    _momentotte.hidden = YES;
    _labelseks.hidden = YES;
    _labelsyv.hidden = YES;
    _labelotte.hidden = YES;
    _press6.hidden = YES;
    _press7.hidden = YES;
    _press8.hidden = YES;
    _labelseks.text = nil;
    _labelsyv.text = nil;
    _labelotte.text = nil;
    _moment88.tintColor = [UIColor grayColor];
    _moment55.tintColor = [UIColor blueColor];

    Resultat = label.text;
    fPoint[1] = FindValue(Resultat);
    
    Resultat = _labelto.text;
    fPoint[2] = FindValue(Resultat);
    
    Resultat = _labeltre.text;
    fPoint[3] = FindValue(Resultat);
    
    Resultat = _labelfire.text;
    fPoint[4] = FindValue(Resultat);
    
    Resultat = _labelfem.text;
    fPoint[5] = FindValue(Resultat);
    
    
    
    fPointRes = fPoint[1]+fPoint[2]+fPoint[3]+fPoint[4]+fPoint[5];
    
    _resultat.text =  [NSString stringWithFormat:@"%.1f",fPointRes];

    
    
}

- (IBAction)moment8:(id)sender {
    
    _momentseks.hidden = NO;
    _momentsyv.hidden = NO;
    _momentotte.hidden = NO;
    _labelseks.hidden = NO;
    _labelsyv.hidden = NO;
    _labelotte.hidden = NO;
    _press6.hidden = NO;
    _press7.hidden = NO;
    _press8.hidden = NO;
    _labelseks.text = @"Tom                                                     0.0";
    _labelsyv.text = @"Tom                                                     0.0";
    _labelotte.text = @"Tom                                                     0.0";
    _moment55.tintColor = [UIColor grayColor];
    _moment88.tintColor = [UIColor blueColor];

}





@end
