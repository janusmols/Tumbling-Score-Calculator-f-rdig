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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    springArray = [[NSArray alloc]initWithObjects:@"rondat",@"flikflak",@"whip",@"rondat",@"flikflak",@"whip",@"rondat",@"flikflak",@"whip",nil];
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
    label.text = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
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


@end
