//
//  xyzViewController.h
//  NavigationControllerTest5
//
//  Created by jeff.wilson on 12/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "page2.h"

@interface xyzViewController : UIViewController

@property (strong, nonatomic) page2 *page2;

- (IBAction)goToPage2;
- (IBAction)goToPage3:(id)sender;

@end
