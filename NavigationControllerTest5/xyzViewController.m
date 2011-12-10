//
//  xyzViewController.m
//  NavigationControllerTest5
//
//  Created by jeff.wilson on 12/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "xyzViewController.h"
#import "page2.h"

@implementation xyzViewController

@synthesize page2;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:TRUE];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:FALSE];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Button Actions

- (IBAction)goToPage2
{
    if (!self.page2) {
        self.page2 = [[[page2 alloc] initWithNibName:@"page2" bundle:nil] autorelease];
    }
    [self.navigationController pushViewController:self.page2 animated:YES];
}

- (IBAction)goToPage3:(id)sender {
    if (!self.page2) {
        self.page2 = [[[page2 alloc] initWithNibName:@"page2" bundle:nil] autorelease];
    }
    [self.navigationController pushViewController:self.page2 animated:YES];
}

@end
