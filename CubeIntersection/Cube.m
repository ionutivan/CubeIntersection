//
//  Cube.m
//  CubeIntersection
//
//  Created by Ionut Ivan on 09/09/14.
//  Copyright (c) 2014 Ionut Ivan. All rights reserved.
//

#import "Cube.h"

@interface Cube()

@property (nonatomic) CGFloat xMinCoord;
@property (nonatomic) CGFloat xMaxCoord;
@property (nonatomic) CGFloat yMinCoord;
@property (nonatomic) CGFloat yMaxCoord;
@property (nonatomic) CGFloat zMinCoord;
@property (nonatomic) CGFloat zMaxCoord;
@property (nonatomic) CGFloat size;

@end

@implementation Cube

- (instancetype)initWithSize:(CGFloat)size xCenterCoord:(CGFloat)xCoord yCenterCoord:(CGFloat)yCoord zCenterCoord:(CGFloat)zCoord {
  
  if (self = [super init]) {
    self.xMinCoord = xCoord - size/2;
    self.xMaxCoord = xCoord + size/2;
    self.yMinCoord = yCoord - size/2;
    self.yMaxCoord = yCoord + size/2;
    self.zMinCoord = zCoord - size/2;
    self.zMaxCoord = zCoord + size/2;
  }
  
  return self;
  
}

- (BOOL)doesIntersectWithCube:(Cube *)anotherCube inPlanType:(IntersectionPlanType)plan {
  
  switch (plan) {
    case IntersectionPlanTypeXoY:
    {
      if (self.xMaxCoord < anotherCube.xMinCoord || anotherCube.xMaxCoord < self.xMinCoord ||
          self.yMaxCoord < anotherCube.yMinCoord || anotherCube.xMaxCoord < self.yMinCoord) {
        return NO;
      } else {
        return YES;
      }
      
    }
      break;
    case IntersectionPlanTypeXoZ:
    {
      if (self.xMaxCoord < anotherCube.xMinCoord || anotherCube.xMaxCoord < self.xMinCoord ||
          self.zMaxCoord < anotherCube.zMinCoord || anotherCube.zMaxCoord < self.zMinCoord) {
        return NO;
      } else {
        return YES;
      }
    }
      break;
    case IntersectionPlanTypeYoZ:
    {
      if (self.yMaxCoord < anotherCube.yMinCoord || anotherCube.yMaxCoord < self.yMinCoord ||
          self.zMaxCoord < anotherCube.zMinCoord || anotherCube.zMaxCoord < self.zMinCoord) {
        return NO;
      } else {
        return YES;
      }
    }
      break;
    default:
      break;
  }
  
  return NO;
  
}

- (CGFloat)intersectionSegmentSizeWithCube:(Cube *)anotherCube onAxisType:(AxisType)axisType {
  
  CGFloat resultSize = 0;
  switch (axisType) {
    case AxisTypeX:
    {
      resultSize = MIN(self.xMaxCoord, anotherCube.xMaxCoord) - MAX(self.xMinCoord, anotherCube.xMinCoord);
    }
      break;
    case AxisTypeY:
    {
      resultSize = MIN(self.yMaxCoord, anotherCube.yMaxCoord) - MAX(self.yMinCoord, anotherCube.yMinCoord);
    }
      break;
    case AxisTypeZ:
    {
      resultSize = MIN(self.zMaxCoord, anotherCube.zMaxCoord) - MAX(self.zMinCoord, anotherCube.zMinCoord);
    }
      break;
    default:
      break;
  }
  
  return resultSize;
}

+ (CGFloat)volumeForXAxisSize:(CGFloat)xSize yAxisSize:(CGFloat)ySize zAxisSize:(CGFloat)zSize {
  return xSize * ySize * zSize;
}



@end
