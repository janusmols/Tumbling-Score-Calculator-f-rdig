//
//  ViewController.h
//  teeest
//
//  Created by Janus Broch Mols on 08/11/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import <UIKit/UIKit.h>

#define c1 1
#define c2 2
#define b1 3
#define b2 4
#define e1 5
#define e2 6

NSString *lastselected;

int raekke;

BOOL crækkenpressed;

int g_iWhichLabel;

NSString *container[7][9];

NSString *Springarraytext[60];

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>


//scrolleren man kan vælge springene i
@property (weak, nonatomic) IBOutlet UIPickerView *picker;


@property (nonatomic,strong) NSArray *momenter;

//Vælg knapperne som labels

@property (weak, nonatomic) IBOutlet UIButton *press1;

@property (weak, nonatomic) IBOutlet UIButton *press2;

@property (weak, nonatomic) IBOutlet UIButton *press3;

@property (weak, nonatomic) IBOutlet UIButton *press4;

@property (weak, nonatomic) IBOutlet UIButton *press5;

@property (weak, nonatomic) IBOutlet UIButton *press6;

@property (weak, nonatomic) IBOutlet UIButton *press7;

@property (weak, nonatomic) IBOutlet UIButton *press8;


//Moment labels

@property (weak, nonatomic) IBOutlet UILabel *momentseks;

@property (weak, nonatomic) IBOutlet UILabel *momentsyv;

@property (weak, nonatomic) IBOutlet UILabel *momentotte;




//De to knapper som viser 5moment udsenent og 8moment udsenet som labels
@property (weak, nonatomic) IBOutlet UIButton *moment55;
@property (weak, nonatomic) IBOutlet UIButton *brække2;

@property (weak, nonatomic) IBOutlet UIButton *moment88;
@property (weak, nonatomic) IBOutlet UIButton *eliterække2;


@property (weak, nonatomic) IBOutlet UIButton *crækkenoutlet;

@property (weak, nonatomic) IBOutlet UIButton *crække2outlet;



//De tre knapper som viser c række udsenent og b række og elite række udsenet som knapper
- (IBAction)crække2:(id)sender;

- (IBAction)crækken:(id)sender;

- (IBAction)brække2:(id)sender;

- (IBAction)moment5:(id)sender;

- (IBAction)eliterække2:(id)sender;

- (IBAction)moment8:(id)sender;





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
@property (weak, nonatomic) IBOutlet UILabel *samletresultat;



//krav beskrivelsen
@property (weak, nonatomic) IBOutlet UILabel *krav;
@property (weak, nonatomic) IBOutlet UILabel *elitekrav;


//reset button
- (IBAction)reset:(id)sender;

@end




