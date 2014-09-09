//
//  ViewController.m
//  CubeIntersection
//
//  Created by Ionut Ivan on 09/09/14.
//  Copyright (c) 2014 Ionut Ivan. All rights reserved.
//

#import "ViewController.h"
#import "Cube.h"

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

- (void)prepareIBOutlets {
  
  self.cube1TitleLabel.text = NSLocalizedString(@"cube_1_title", nil);
  self.cube2TitleLabel.text = NSLocalizedString(@"cube_2_title", nil);
  
  self.xCoordTextFieldCube1.placeholder = NSLocalizedString(@"x_coord", nil);
  self.yCoordTextFieldCube1.placeholder = NSLocalizedString(@"y_coord", nil);
  self.zCoordTextFieldCube1.placeholder = NSLocalizedString(@"z_coord", nil);
  self.sizeTextFieldCube1.placeholder = NSLocalizedString(@"size", nil);
  
  self.xCoordTextFieldCube2.placeholder = NSLocalizedString(@"x_coord", nil);
  self.yCoordTextFieldCube2.placeholder = NSLocalizedString(@"y_coord", nil);
  self.zCoordTextFieldCube2.placeholder = NSLocalizedString(@"z_coord", nil);
  self.sizeTextFieldCube2.placeholder = NSLocalizedString(@"size", nil);
  
}

- (IBAction)computeIntersection:(id)sender {
  Cube *cube1 = [[Cube alloc] initWithSize:self.sizeTextFieldCube1.text.floatValue
                              xCenterCoord:self.xCoordTextFieldCube1.text.floatValue
                              yCenterCoord:self.yCoordTextFieldCube1.text.floatValue
                              zCenterCoord:self.zCoordTextFieldCube1.text.floatValue];
  
  Cube *cube2 = [[Cube alloc] initWithSize:self.sizeTextFieldCube2.text.floatValue
                              xCenterCoord:self.xCoordTextFieldCube2.text.floatValue
                              yCenterCoord:self.yCoordTextFieldCube2.text.floatValue
                              zCenterCoord:self.zCoordTextFieldCube2.text.floatValue];
  
  if ([cube1 intersectsWithCube:cube2]) {
    CGFloat xSize = [cube1 intersectionSegmentSizeWithCube:cube2 onAxisType:AxisTypeX];
    CGFloat ySize = [cube1 intersectionSegmentSizeWithCube:cube2 onAxisType:AxisTypeY];
    CGFloat zSize = [cube1 intersectionSegmentSizeWithCube:cube2 onAxisType:AxisTypeZ];
    
    CGFloat volume = [Cube volumeForXAxisSize:xSize yAxisSize:ySize zAxisSize:zSize];
    
    self.resultLabel.text = [NSString stringWithFormat:@"%.2f m^3",volume];
  } else {
    self.resultLabel.text = NSLocalizedString(@"no_intersection", nil);
  }
}

@end
