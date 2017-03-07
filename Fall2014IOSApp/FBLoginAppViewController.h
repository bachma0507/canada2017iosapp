//
//  FBLoginAppViewController.h
//  Winter2017IOSAppNew
//
//  Created by Barry on 2/5/17.
//  Copyright © 2017 BICSI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Backendless.h"

@interface FBLoginAppViewController : UIViewController
- (IBAction)cancelButtonTouched:(id)sender;
- (IBAction)loginButtonTouched:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *successView;

-(void)showSuccessView;

@end
