//
//  SomeModal.m
//  NavigationControllerTest5
//
//  Created by jeff.wilson on 12/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SomeModal.h"

@implementation SomeModal
@synthesize modalTextInput;
@synthesize modalHeaderLabel, modalHeaderLabel_text, delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.modalHeaderLabel setText:self.modalHeaderLabel_text];
}

- (void)viewDidUnload
{
    [self setModalHeaderLabel:nil];
    [self setModalTextInput:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [modalHeaderLabel release];
    [modalTextInput release];
    [super dealloc];
}

#pragma mark - Button actions

- (IBAction)closeModal:(id)sender
{
    [self dismissModalViewControllerAnimated:TRUE];
}

- (IBAction)saveModal:(id)sender
{
    [self.delegate saveAndClose:modalTextInput.text];
    [self dismissModalViewControllerAnimated:TRUE];
}


@end
