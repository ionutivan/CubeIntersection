//
//  ViewController.m
//  CubeIntersection
//
//  Created by Ionut Ivan on 09/09/14.
//  Copyright (c) 2014 Ionut Ivan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField *xCoordTextFieldCube1;
@property (nonatomic, weak) IBOutlet UITextField *yCoordTextFieldCube1;
@property (nonatomic, weak) IBOutlet UITextField *zCoordTextFieldCube1;
@property (nonatomic, weak) IBOutlet UITextField *sizeTextFieldCube1;

@property (nonatomic, weak) IBOutlet UITextField *xCoordTextFieldCube2;
@property (nonatomic, weak) IBOutlet UITextField *yCoordTextFieldCube2;
@property (nonatomic, weak) IBOutlet UITextField *zCoordTextFieldCube2;
@property (nonatomic, weak) IBOutlet UITextField *sizeTextFieldCube2;

@property (nonatomic, weak) IBOutlet UILabel *cube1TitleLabel;
@property (nonatomic, weak) IBOutlet UILabel *cube2TitleLabel;
@property (nonatomic, weak) IBOutlet UILabel *resultLabel;
@property (nonatomic, weak) IBOutlet UIButton *computeButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}



@end
