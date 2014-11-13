//
//  ViewControllerinfo.h
//  teeest
//
//  Created by Janus Broch Mols on 09/11/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerinfo : UIViewController{}


//information og guide til appen (label text)
@property (weak, nonatomic) IBOutlet UILabel *textinfo;
@property (weak, nonatomic) IBOutlet UILabel *textinfo2;



//denne knap sender dig videre til gymdanmarks tumbling reglement
- (IBAction)visreglement:(id)sender;




@end
