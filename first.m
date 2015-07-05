//
//  first.m
//  TumblingSC
//
//  Created by Janus Broch Mols on 30/11/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import "first.h"
#import "ViewControllerinfo.h"

@interface first ()

@end

@implementation first{

    ADBannerView *_bannerView;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:_bannerView];
    self.navigationItem.hidesBackButton = true;
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

- (IBAction)kalender:(id)sender {
    k = true;
}

//Open Real Trampoline (appstore link)
- (IBAction)banner:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/dk/app/real-trampoline/id965535834?mt=8&ign-mpt=uo%3D2"]];
}


@end
