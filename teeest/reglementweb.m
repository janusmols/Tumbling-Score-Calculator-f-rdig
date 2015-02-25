//
//  reglementweb.m
//  TumblingSC
//
//  Created by Janus Broch Mols on 27/12/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import "reglementweb.h"

@interface reglementweb ()

@end

@implementation reglementweb
@synthesize webView;

- (void)viewDidLoad {
    //OPEN GYMDANMARK TUMBLING REGLEMENT
    NSURL *url = [NSURL URLWithString:@"http://pdf.dgf.dk/download/Tumbling%20Reglement%202013-2017%20-%20Final%20version%20(2012-01-12).pdf"]; NSURLRequest *requestURL = [NSURLRequest requestWithURL:url]; [webView loadRequest:requestURL];
    webView.scalesPageToFit = YES;
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
