
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
   
    //Springlisten
    NSArray *springArray;
}

@end

@implementation ViewController
@synthesize picker,label;



//Krav: streng indeholder 38+3 karakterer eksempel "Rondat    3.4"
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
    
    //Skriftype og størelse på teksten i ""pickeren"
    pickerViewLabel.font = [UIFont fontWithName:@"ChalkboardSE-Regular" size:12];
   
 
    return pickerViewLabel;
}


- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    
    
   //Vælg knappernes farve er blå
    _resultat.text = @"0.0";
    _elitekrav.hidden = NO;
     _elitekrav.text = @"￼￼\nMini og Junior: Øvelse 1: 8 spring - Fri øvelse- minimum 3\nsaltospring.\nSenior: Øvelse 1: 8 spring - Fri øvelse - minimum 3 saltospring - Max en halv skrue.";
    
    _krav.hidden = YES;
    _press1.tintColor = [UIColor blueColor];
    _press2.tintColor = [UIColor blueColor];
    _press3.tintColor = [UIColor blueColor];
    _press4.tintColor = [UIColor blueColor];
    _press5.tintColor = [UIColor blueColor];
    _press6.tintColor = [UIColor blueColor];
    _press7.tintColor = [UIColor blueColor];
    _press8.tintColor = [UIColor blueColor];
    

    raekke = e1;
    
    
    //Den skal starte med at udsenet skal se således ud at 8-moment er klar blå og 5-moment er grålig
   _crækkenoutlet.tintColor = [UIColor grayColor];
    _moment55.tintColor = [UIColor grayColor];
    _moment88.tintColor = [UIColor blueColor];
    _crække2outlet.tintColor = [UIColor grayColor];
    _brække2.tintColor = [UIColor grayColor];
    _eliterække2.tintColor = [UIColor grayColor];
    
   
    
    //springlisten
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
    //Disse koder lader disse labels have flere linjer
    label.numberOfLines = 5;
    _labelto.numberOfLines = 5;
    _labeltre.numberOfLines = 5;
    _labelfire.numberOfLines = 5;
    _labelfem.numberOfLines = 5;
    _labelseks.numberOfLines = 5;
    _labelsyv.numberOfLines = 5;
    _labelotte.numberOfLines = 5;
    
    //Når man ser "beregnersiden" første gang så er "pickeren" hidden = ikke synlig
    picker.hidden = YES;
}



//Hvor mange rækker vandret skal "pickeren" bestå af
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

//Her bliver der beregnet hvor mange rækker lodret der skal være.
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

//Her finder koden ud af hvad hver enkelt spring i "pickeren" skal hede
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

//Her finder den ud af at hvis man f.eks har trykket på "vælg" ud for moment 3 at den så også skriver springet man har valgt i labeled ud for moment 3

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    switch (g_iWhichLabel) {
        case 1:
            
            container[raekke][1] = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            label.text = container[raekke][1];
            break;
            
        case 2:
           
            container[raekke][2] = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            _labelto.text = container[raekke][2];
            break;

        case 3:
            container[raekke][3] = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            _labeltre.text = container[raekke][3];
            break;

        case 4:
           
            container[raekke][4] = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            _labelfire.text = container[raekke][4];
            break;

        case 5:
            
            container[raekke][5] = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            _labelfem.text = container[raekke][5];
            break;

        case 6:
                       container[raekke][6] = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            _labelseks.text = container[raekke][6];
            break;

        case 7:
          
            container[raekke][7] = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            _labelsyv.text = container[raekke][7];
            break;

        case 8:
            
            container[raekke][8] = [NSString stringWithFormat:@"%@",[springArray objectAtIndex:[picker selectedRowInComponent:0]]];
            _labelotte.text = container[raekke][8];
            break;

            
        default:
            break;
            
            
            
    }
    
        picker.hidden = NO;
    
    //From button "Beregn"
    //Her lægger den alle springene sammen og skriver resultatet i resultat labelet
    //
    // NSString *Resultat;
    //float fPoint[10];
    float fPointRes;
    
    //Resultat = label.text;
    //fPoint[1] = FindValue(Resultat);
    
    //Resultat = _labelto.text;
    //fPoint[2] = FindValue(Resultat);
    
    //Resultat = _labeltre.text;
    //fPoint[3] = FindValue(Resultat);
    
    //Resultat = _labelfire.text;
    //fPoint[4] = FindValue(Resultat);
    
    //Resultat = _labelfem.text;
    //fPoint[5] = FindValue(Resultat);
    
    //Resultat = _labelseks.text;
    //fPoint[6] = FindValue(Resultat);
    
    //Resultat = _labelsyv.text;
    //fPoint[7] = FindValue(Resultat);
    
    //Resultat = _labelotte.text;
    //fPoint[8] = FindValue(Resultat);
    
    //fPointRes = fPoint[1]+fPoint[2]+fPoint[3]+fPoint[4]+fPoint[5]+fPoint[6]+fPoint[7]+fPoint[8];
    fPointRes = CalcRaekke();
    _resultat.text =  [NSString stringWithFormat:@"%.1f",fPointRes];
}



float CalcRaekke()
{
    //From button "Beregn"
    //Her lægger den alle springene sammen og skriver resultatet i resultat labelet
    NSString *Resultat;
    float fPoint[10];
    float fPointRes;
    
    Resultat = container[raekke][1];
    fPoint[1] = FindValue(Resultat);
    
    Resultat = container[raekke][2];
    fPoint[2] = FindValue(Resultat);
    
    Resultat = container[raekke][3];
    fPoint[3] = FindValue(Resultat);
    
    Resultat = container[raekke][4];
    fPoint[4] = FindValue(Resultat);
    
    Resultat = container[raekke][5];
    fPoint[5] = FindValue(Resultat);
    if ((raekke == e1) || (raekke == e2))
    {
      Resultat = container[raekke][6];
      fPoint[6] = FindValue(Resultat);
    
      Resultat = container[raekke][7];
      fPoint[7] = FindValue(Resultat);
    
      Resultat = container[raekke][8];
      fPoint[8] = FindValue(Resultat);
      fPointRes = fPoint[1]+fPoint[2]+fPoint[3]+fPoint[4]+fPoint[5]+fPoint[6]+fPoint[7]+fPoint[8];
    }
    else{
      fPointRes = fPoint[1]+fPoint[2]+fPoint[3]+fPoint[4]+fPoint[5];
    }
    return fPointRes;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//her sætter man "g_iwichlabel" sammen med hver "vælg" knap med et nummer som "(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{" bruger
//når du trykker på en "vælg" knap så gøres de andre vælg knapper grå

- (IBAction)press:(id)sender {
    g_iWhichLabel=1;
    picker.hidden = NO;
    _press1.tintColor = [UIColor blueColor];
    _press2.tintColor = [UIColor grayColor];
    _press3.tintColor = [UIColor grayColor];
    _press4.tintColor = [UIColor grayColor];
    _press5.tintColor = [UIColor grayColor];
    _press6.tintColor = [UIColor grayColor];
    _press7.tintColor = [UIColor grayColor];
    _press8.tintColor = [UIColor grayColor];
}

- (IBAction)pressto:(id)sender {
    g_iWhichLabel=2;
    picker.hidden = NO;
    _press2.tintColor = [UIColor blueColor];
    _press1.tintColor = [UIColor grayColor];
    _press3.tintColor = [UIColor grayColor];
    _press4.tintColor = [UIColor grayColor];
    _press5.tintColor = [UIColor grayColor];
    _press6.tintColor = [UIColor grayColor];
    _press7.tintColor = [UIColor grayColor];
    _press8.tintColor = [UIColor grayColor];

}

- (IBAction)presstre:(id)sender {
    g_iWhichLabel=3;
    picker.hidden = NO;
    _press3.tintColor = [UIColor blueColor];
    _press2.tintColor = [UIColor grayColor];
    _press1.tintColor = [UIColor grayColor];
    _press4.tintColor = [UIColor grayColor];
    _press5.tintColor = [UIColor grayColor];
    _press6.tintColor = [UIColor grayColor];
    _press7.tintColor = [UIColor grayColor];
    _press8.tintColor = [UIColor grayColor];

    
}

- (IBAction)pressfire:(id)sender {
    g_iWhichLabel=4;
    picker.hidden = NO;
    _press4.tintColor = [UIColor blueColor];
    _press2.tintColor = [UIColor grayColor];
    _press3.tintColor = [UIColor grayColor];
    _press1.tintColor = [UIColor grayColor];
    _press5.tintColor = [UIColor grayColor];
    _press6.tintColor = [UIColor grayColor];
    _press7.tintColor = [UIColor grayColor];
    _press8.tintColor = [UIColor grayColor];

}

- (IBAction)pressfem:(id)sender {
    g_iWhichLabel=5;
        picker.hidden = NO;
    _press5.tintColor = [UIColor blueColor];
    _press2.tintColor = [UIColor grayColor];
    _press3.tintColor = [UIColor grayColor];
    _press4.tintColor = [UIColor grayColor];
    _press1.tintColor = [UIColor grayColor];
    _press6.tintColor = [UIColor grayColor];
    _press7.tintColor = [UIColor grayColor];
    _press8.tintColor = [UIColor grayColor];

}


- (IBAction)pressseks:(id)sender {
    g_iWhichLabel=6;
    picker.hidden = NO;
    _press6.tintColor = [UIColor blueColor];
    _press2.tintColor = [UIColor grayColor];
    _press3.tintColor = [UIColor grayColor];
    _press4.tintColor = [UIColor grayColor];
    _press5.tintColor = [UIColor grayColor];
    _press1.tintColor = [UIColor grayColor];
    _press7.tintColor = [UIColor grayColor];
    _press8.tintColor = [UIColor grayColor];

}

- (IBAction)presssyv:(id)sender {
    g_iWhichLabel=7;
    picker.hidden = NO;
    _press7.tintColor = [UIColor blueColor];
    _press2.tintColor = [UIColor grayColor];
    _press3.tintColor = [UIColor grayColor];
    _press4.tintColor = [UIColor grayColor];
    _press5.tintColor = [UIColor grayColor];
    _press6.tintColor = [UIColor grayColor];
    _press1.tintColor = [UIColor grayColor];
    _press8.tintColor = [UIColor grayColor];

}

- (IBAction)pressotte:(id)sender {
    g_iWhichLabel=8;
    picker.hidden = NO;
    _press8.tintColor = [UIColor blueColor];
    _press2.tintColor = [UIColor grayColor];
    _press3.tintColor = [UIColor grayColor];
    _press4.tintColor = [UIColor grayColor];
    _press5.tintColor = [UIColor grayColor];
    _press6.tintColor = [UIColor grayColor];
    _press7.tintColor = [UIColor grayColor];
    _press1.tintColor = [UIColor grayColor];

}

//Her er en kopi af beregneren ovenfor som bare bruges til at beregne 5-moment karakterene sammen og skrive den i resulat labelet og
//Når man vælger 5-moment "mode" så gøres 5-moment knappen klar blå og 8-moment kanppen grålig og fjerner moment 6-8 og medhørende ting og nulstilles og "pickeren" gøres usynlig



- (IBAction)brække2:(id)sender {
    
    NSString *Resultat;
    float fPoint[10];
    float fPointRes;
    raekke = b2;
    
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
    _press1.hidden = NO;
    _press2.hidden = NO;
    _press3.hidden = NO;
    _press4.hidden = NO;
    
    _moment88.tintColor = [UIColor grayColor];
    _moment55.tintColor = [UIColor grayColor];
    _crækkenoutlet.tintColor = [UIColor grayColor];
    _crække2outlet.tintColor = [UIColor grayColor];
    _brække2.tintColor = [UIColor blueColor];
    _eliterække2.tintColor = [UIColor grayColor];
    
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
    
    
    
    label.text = @"Tom                                                                              0.0";
    _labelto.text = @"Tom                                                                              0.0";
    _labeltre.text = @"Tom                                                                              0.0";
    _labelfire.text = @"Tom                                                                              0.0";
    _labelfem.text = @"Tom                                                                              0.0";
    
    _resultat.text = @"0.0";
    
    picker.hidden = YES;
    
    _elitekrav.hidden = YES;
    _krav.hidden = NO;
    _krav.text = @"\nMini, junior og senior: Øvelse 2: 5 spring - Fri øvelse - minimum\n2 saltospring og et spring med hel skrue";
}

- (IBAction)moment5:(id)sender {
    NSString *Resultat;
    float fPoint[10];
    float fPointRes;
    raekke = b1;
    
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
    _press1.hidden = NO;
    _press2.hidden = NO;
    _press3.hidden = NO;
    _press4.hidden = NO;

    _moment88.tintColor = [UIColor grayColor];
    _moment55.tintColor = [UIColor blueColor];
    _crækkenoutlet.tintColor = [UIColor grayColor];
    _crække2outlet.tintColor = [UIColor grayColor];
    _brække2.tintColor = [UIColor grayColor];
    _eliterække2.tintColor = [UIColor grayColor];

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
    
    
    
    label.text = @"Tom                                                                              0.0";
    _labelto.text = @"Tom                                                                              0.0";
    _labeltre.text = @"Tom                                                                              0.0";
    _labelfire.text = @"Tom                                                                              0.0";
    _labelfem.text = @"Tom                                                                              0.0";
    
    _resultat.text = @"0.0";
    
    picker.hidden = YES;
    
    _elitekrav.hidden = YES;
    _krav.hidden = NO;
    _krav.text = @"\nMini, junior og senior: Øvelse 1: 5 spring - Fri øvelse - minimum 2 saltospring";
    
}

- (IBAction)eliterække2:(id)sender {
    
    raekke = e2;
    _momentseks.hidden = NO;
    _momentsyv.hidden = NO;
    _momentotte.hidden = NO;
    _labelseks.hidden = NO;
    _labelsyv.hidden = NO;
    _labelotte.hidden = NO;
    _press6.hidden = NO;
    _press7.hidden = NO;
    _press8.hidden = NO;
    _press1.hidden = NO;
    _press2.hidden = NO;
    _press3.hidden = NO;
    _press4.hidden = NO;
    
    
    
    label.text = @"Tom                                                                              0.0";
    _labelto.text = @"Tom                                                                              0.0";
    _labeltre.text = @"Tom                                                                              0.0";
    _labelfire.text = @"Tom                                                                              0.0";
    _labelfem.text = @"Tom                                                                              0.0";
    _labelseks.text = @"Tom                                                                              0.0";
    _labelsyv.text = @"Tom                                                                              0.0";
    _labelotte.text = @"Tom                                                                              0.0";
    
    _resultat.text = @"0.0";
    
    
    _moment55.tintColor = [UIColor grayColor];
    _moment88.tintColor = [UIColor grayColor];
    _crækkenoutlet.tintColor = [UIColor grayColor];
    _crække2outlet.tintColor = [UIColor grayColor];
    _brække2.tintColor = [UIColor grayColor];
    _eliterække2.tintColor = [UIColor blueColor];
    

    picker.hidden = YES;
    
    
    _krav.hidden = YES;
    _elitekrav.hidden = NO;
    _elitekrav.text = @"￼\nMini og Junior: Øvelse 2: 8 spring - Fri øvelse - minimum 3\nsaltospring og et spring med hel skrue.\nSenior: Øvelse 2: 8 spring - Fri øvelse - minimum 3\nsaltospring og 2 spring med hel skrue";
    
    
}

//Når man vælger 8-moment "mode" så gøres 5-moment knappen grålig og 8-moment kanppen klar blå og alle ting nulstilles og "pickeren" gøres usynlig 
- (IBAction)moment8:(id)sender {
    
    raekke = e1;
    
    _momentseks.hidden = NO;
    _momentsyv.hidden = NO;
    _momentotte.hidden = NO;
    _labelseks.hidden = NO;
    _labelsyv.hidden = NO;
    _labelotte.hidden = NO;
    _press6.hidden = NO;
    _press7.hidden = NO;
    _press8.hidden = NO;
    _press1.hidden = NO;
    _press2.hidden = NO;
    _press3.hidden = NO;
    _press4.hidden = NO;
    
    
    
     label.text = @"Tom                                                                              0.0";
    _labelto.text = @"Tom                                                                              0.0";
    _labeltre.text = @"Tom                                                                              0.0";
    _labelfire.text = @"Tom                                                                              0.0";
    _labelfem.text = @"Tom                                                                              0.0";
    _labelseks.text = @"Tom                                                                              0.0";
    _labelsyv.text = @"Tom                                                                              0.0";
    _labelotte.text = @"Tom                                                                              0.0";
    
    _resultat.text = @"0.0";
    
    
    _moment55.tintColor = [UIColor grayColor];
    _moment88.tintColor = [UIColor blueColor];
     _crækkenoutlet.tintColor = [UIColor grayColor];
    _crække2outlet.tintColor = [UIColor grayColor];
    _brække2.tintColor = [UIColor grayColor];
    _eliterække2.tintColor = [UIColor grayColor];
    picker.hidden = YES;

    
    _krav.hidden = YES;
    _elitekrav.hidden = NO;
    _elitekrav.text = @"￼\nMini og Junior: Øvelse 1: 8 spring - Fri øvelse- minimum 3\nsaltospring.\nSenior: Øvelse 1: 8 spring - Fri øvelse - minimum 3 saltospring - Max en halv skrue.";
    



}





- (IBAction)crække2:(id)sender {
    
    raekke = c2;
    
    NSString *Resultat;
    float fPoint[10];
    float fPointRes;
    
    _elitekrav.hidden = YES;
    _krav.hidden = NO;
    _krav.text = @"￼\nMikro og mini: Øvelse 2: Rondat - whip - whip - flik -\n(frit slutspring)\nJunior og senior: Øvelse 2: Rondat - whip - whip - flik -\n(frit slutspring) I enten øvelse 1 eller øvelse 2 skal\nslutspringet indeholde mindst en hel skrue)";
    
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
    _press1.hidden = YES;
    _press2.hidden = YES;
    _press3.hidden = YES;
    _press4.hidden = YES;
    _crækkenoutlet.tintColor = [UIColor grayColor];
    _moment88.tintColor = [UIColor grayColor];
    _moment55.tintColor = [UIColor grayColor];
    _crække2outlet.tintColor = [UIColor blueColor];
    _brække2.tintColor = [UIColor grayColor];
    _eliterække2.tintColor = [UIColor grayColor];
    
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
    
    
    
    container[c2][1] = @"Rondat (                             \n0.2";
    container[c2][2]= @"Whipback ^                           \n0.3";
    container[c2][3] = @"Whipback ^                           \n0.3";
    container[c2][4]= @"Flikflak f                           \n0.2";
    container[c2][5] = @"Tom                                                                              0.0";
    
    [self c2containertillabel];
    
    
    //Skal erstattes alt efter hvilke faste spring man har
    
    fPointRes = CalcRaekke();
    _resultat.text =  [NSString stringWithFormat:@"%.1f",fPointRes];
    
    picker.hidden = YES;
    

    
}


- (IBAction)crækken:(id)sender {
    
    NSString *Resultat;
    float fPoint[10];
    float fPointRes;
    
    raekke = c1;
    
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
    _press1.hidden = YES;
    _press2.hidden = YES;
    _press3.hidden = YES;
    _press4.hidden = YES;
    _crækkenoutlet.tintColor = [UIColor blueColor];
    _moment88.tintColor = [UIColor grayColor];
    _moment55.tintColor = [UIColor grayColor];
    _crække2outlet.tintColor = [UIColor grayColor];
    _brække2.tintColor = [UIColor grayColor];
    _eliterække2.tintColor = [UIColor grayColor];
    
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
    
    
    
    container[c1][1] = @"Rondat (                             \n0.2";
    container[c1][2] = @"Flikflak f                           \n0.2";
    container[c1][3] = @"Whipback ^                           \n0.3";
    container[c1][4] = @"Flikflak f                           \n0.2";
    container[c1][5] = @"Tom                                                                              0.0";
    [self c1containertillabel];
    
    fPointRes = CalcRaekke();
    _resultat.text =  [NSString stringWithFormat:@"%.1f",fPointRes];
    
    picker.hidden = YES;
    
    _elitekrav.hidden = YES;
    _krav.hidden = NO;
    _krav.text = @"￼\nMikro og mini: Øvelse 1: Rondat - Flik - whip - flik -\n(frit slutspring)\nJunior og senior: Øvelse 1: Rondat - Flik - whip - flik - (frit slutspring) I enten øvelse 1 eller øvelse 2 skal\nslutspringet indeholde mindst en hel skrue)";
    
}


-(void)c1containertillabel{
    
    label.text = container[c1][1];
    _labelto.text = container[c1][2];
    _labeltre.text = container[c1][3];
    _labelfire.text = container[c1][4];
    
}

-(void)c2containertillabel{

    label.text = container[c2][1];
    _labelto.text = container[c2][2];
    _labeltre.text = container[c2][3];
    _labelfire.text = container[c2][4];
   
}



@end
