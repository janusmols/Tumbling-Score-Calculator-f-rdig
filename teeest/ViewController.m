// NÆSTE 4 linier må slettes ...
//NSString *Resultat;
//Resultat = @"3.4";
//_resultat.text = Resultat;
////@"hushiu";

//
//  ViewController.m
//  teeest
//
//  Created by Janus Broch Mols on 08/11/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import "ViewController.h"

int g_iWhichLabel;

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
    NSString *myString4 = ([mytxt substringFromIndex:10]);
    float stringFloat = [myString4 floatValue];
    return stringFloat;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    springArray = [[NSArray alloc]initWithObjects:@"rondat    0.2",@"flikflak  0.2",@"whip",@"rondat",@"flikflak",@"whip",@"rondat",@"flikflak",@"whip",@"rondat",@"flikflak",@"whip",@"rondat",@"flikflak",@"whip",@"rondat",@"flikflak",@"whip",@"rondat",@"flikflak",@"whip",@"rondat",@"flikflak",@"whip",@"rondat",@"flikflak",@"whip",nil];
    picker.hidden = YES;
}




-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
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
        picker.hidden = YES;

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


- (IBAction)Beregn:(id)sender {
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
@end
