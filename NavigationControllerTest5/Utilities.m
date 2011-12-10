//
//  Utilities.m
//  NavigationControllerTest5
//
//  Created by jeff.wilson on 12/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Utilities.h"
#import "SomeModal.h"

@implementation Utilities

+ (void)launchModal:(id)sender newHeader:(NSString*)newHeader
{
    SomeModal *someModal = [[[SomeModal alloc] initWithNibName:@"SomeModal" bundle:nil] autorelease];
    someModal.modalHeaderLabel_text = newHeader;
    someModal.delegate = sender;
    [someModal setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [sender presentModalViewController:someModal animated:YES];
}


@end
