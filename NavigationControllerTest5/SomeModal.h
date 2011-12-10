//
//  SomeModal.h
//  NavigationControllerTest5
//
//  Created by jeff.wilson on 12/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Utilities.h"

@protocol SomeModalDelegate;

@interface SomeModal : UIViewController <UINavigationControllerDelegate> {

    id <SomeModalDelegate> delegate;
    NSString *modalHeaderLabel_text;
    
}

@property (nonatomic, assign) id <SomeModalDelegate> delegate;
@property (retain, nonatomic) IBOutlet UILabel *modalHeaderLabel;
@property (retain, nonatomic) NSString *modalHeaderLabel_text;
@property (retain, nonatomic) IBOutlet UITextField *modalTextInput;

- (IBAction)closeModal:(id)sender;
- (IBAction)saveModal:(id)sender;

@end

@protocol SomeModalDelegate
- (void)saveAndClose:(NSString *)someText;
@end