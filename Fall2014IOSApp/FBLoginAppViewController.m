//
//  FBLoginAppViewController.m
//  Winter2017IOSAppNew
//
//  Created by Barry on 2/5/17.
//  Copyright © 2017 BICSI. All rights reserved.
//

#import "FBLoginAppViewController.h"

@interface FBLoginAppViewController ()

@end

@implementation FBLoginAppViewController

- (void)viewDidLoad {
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

- (IBAction)cancelButtonTouched:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)loginButtonTouched:(id)sender {
    
    [backendless.userService
     easyLoginWithFacebookFieldsMapping:@{@"email":@"email"}
     permissions:@[@"email"]
     response:^(id response) {
         NSLog(@"%@", response);
     }
     error:^(Fault *fault) {
         NSLog(@"%@", fault.detail);
     }];
}

-(void)showSuccessView{
    
    _successView.hidden = NO;
}
@end
