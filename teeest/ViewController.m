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
    NSArray *pointArray;
}

@end

@implementation ViewController
@synthesize picker,label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    springArray = [[NSArray alloc]initWithObjects:@"rondat",@"flikflak",@"whip",nil];
    pointArray = [[NSArray alloc]initWithObjects:@"0,2",@"0,2",@"0,3",@"0,5", nil];
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
        case 1:
            return pointArray.count;
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
        case 1:
            return [pointArray objectAtIndex:row];
            break;
            
        default:
            break;
    }
    return 0;


}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    label.text = [NSString stringWithFormat:@"%@ %@",[springArray objectAtIndex:[picker selectedRowInComponent:0]],[pointArray objectAtIndex:[picker selectedRowInComponent:1]]];
    picker.hidden = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)press:(id)sender {
    picker.hidden = NO;
}

- (IBAction)tryk:(id)sender {
  picker.hidden = YES;
}
@end
