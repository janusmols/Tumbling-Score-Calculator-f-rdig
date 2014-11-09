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

- (void)viewDidLoad {
    [super viewDidLoad];
   _textinfo.text = @"Formålet med denne app er at du nemt og hurtigt kan beregne vanskeligheden ud fra dine indtasted rutiner\nDenne app er baseret på GymDanmarks Power Tumbling Reglement 2013-2017\n\n\n\n\n\n\n\n\n\nCreated by Janus Broch Mols.\nCopyright (c) 2014 Janus Broch Mols. All rights reserved.";
    _textinfo.numberOfLines = 20;
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

@end
