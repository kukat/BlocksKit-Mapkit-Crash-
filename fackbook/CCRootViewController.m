//
//  CCRootViewController.m
//  fackbook
//
//  Created by Alex Yao on 20/6/12.
//  Copyright (c) 2012 alex@thecellcity.com. All rights reserved.
//

#import "CCRootViewController.h"
//#import "BlocksKit.h"

@interface CCRootViewController ()

@end

@implementation CCRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
MKMapView *_mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
[_mapView setDelegate:self];
[self.view addSubview:_mapView];
[_mapView release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
