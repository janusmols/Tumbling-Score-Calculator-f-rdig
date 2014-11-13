//
//  ViewControllerinfo.m
//  teeest
//
//  Created by Janus Broch Mols on 09/11/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import "ViewControllerinfo.h"

@interface ViewControllerinfo ()

@end

@implementation ViewControllerinfo





//Når siden bliver vist så kommer denne tekst
//regulering af linjer
- (void)viewDidLoad {
    [super viewDidLoad];
   _textinfo.text = @"Med denne app kan du nemt og hurtigt beregne vanskeligheden ud fra dine indtastede rutiner. Du kan beregne vanskeligheden for 5-moment rutiner og 8-moment rutiner hver for sig ved blot at vælge mellem de to valgmuligheder øverst i beregneren.";
    _textinfo.numberOfLines = 25;
    
    
    _textinfo2.text = @"Denne app er baseret på GymDanmarks Power Tumbling Reglement 2013-2017";
    _textinfo2.numberOfLines = 10;
    
    
    _textinfo3.text = @"\n\n\n\n\n\nCreated by Janus Broch Mols.\nCopyright (c) 2014 Janus Broch Mols. All rights reserved.";
    _textinfo3.numberOfLines = 10;

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//åbner link (sender dig videre til gymdanmarks tumbling reglement)
- (IBAction)visreglement:(id)sender {
    [[UIApplication sharedApplication] openURL:[	NSURL URLWithString:@"http://pdf.dgf.dk/download/Tumbling%20Reglement%202013-2017%20-%20Final%20version%20(2012-01-12).pdf"]];
}
@end
