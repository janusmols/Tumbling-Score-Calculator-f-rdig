//
//  ViewControllerfem.h
//  teeest
//
//  Created by Janus Broch Mols on 10/11/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewControllerfem : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>


@property (weak, nonatomic) IBOutlet UIPickerView *picker;


- (IBAction)Beregn:(id)sender;

//vælg vælg 1-5 = press - pressfem

- (IBAction)press:(id)sender;

- (IBAction)pressto:(id)sender;

- (IBAction)presstre:(id)sender;

- (IBAction)pressfire:(id)sender;


- (IBAction)pressfem:(id)sender;

//Tom 1-5 = label - labelfem
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UILabel *labelto;

@property (weak, nonatomic) IBOutlet UILabel *labeltre;

@property (weak, nonatomic) IBOutlet UILabel *labelfire;

@property (weak, nonatomic) IBOutlet UILabel *labelfem;

//resultat:
@property (weak, nonatomic) IBOutlet UILabel *resultat;







@end
