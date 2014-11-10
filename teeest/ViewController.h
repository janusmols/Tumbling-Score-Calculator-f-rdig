//
//  ViewController.h
//  teeest
//
//  Created by Janus Broch Mols on 08/11/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import <UIKit/UIKit.h>

int g_iWhichLabel;



NSString *Springarraytext[60];

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;

- (IBAction)Beregn:(id)sender;

//vælg vælg 1-8 = press - pressotte
- (IBAction)press:(id)sender;

- (IBAction)pressto:(id)sender;

- (IBAction)presstre:(id)sender;

- (IBAction)pressfire:(id)sender;

- (IBAction)pressfem:(id)sender;

- (IBAction)pressseks:(id)sender;

- (IBAction)presssyv:(id)sender;

- (IBAction)pressotte:(id)sender;


//Tom 1-8 = label - labelotte
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UILabel *labelto;

@property (weak, nonatomic) IBOutlet UILabel *labeltre;

@property (weak, nonatomic) IBOutlet UILabel *labelfire;

@property (weak, nonatomic) IBOutlet UILabel *labelfem;

@property (weak, nonatomic) IBOutlet UILabel *labelseks;

@property (weak, nonatomic) IBOutlet UILabel *labelsyv;

@property (weak, nonatomic) IBOutlet UILabel *labelotte;

//resultat:
@property (weak, nonatomic) IBOutlet UILabel *resultat;

@end




