//
//  ViewController.m
//  ProjectUsingLibrary
//
//  Created by Johannes Schriewer on 15.11.2012.
//  Copyright (c) 2012 Johannes Schriewer. All rights reserved.
//

#import "ViewController.h"
#import "StaticLibrary.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    StaticLibrary *lib = [[StaticLibrary alloc] init];
    NSLog(@"Default value: %d", [lib aNumber]);
    [lib setANumber:23];
    NSLog(@"Modified value: %d", [lib aNumber]);

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
