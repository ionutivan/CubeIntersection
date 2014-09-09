//
//  Cube.h
//  CubeIntersection
//
//  Created by Ionut Ivan on 09/09/14.
//  Copyright (c) 2014 Ionut Ivan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, IntersectionPlanType) {
  IntersectionPlanTypeXoY,
  IntersectionPlanTypeXoZ,
  IntersectionPlanTypeYoZ
};

typedef NS_ENUM(NSInteger, AxisType) {
  AxisTypeX,
  AxisTypeY,
  AxisTypeZ
};

@interface Cube : NSObject

- (instancetype)initWithSize:(CGFloat)size xCenterCoord:(CGFloat)xCoord yCenterCoord:(CGFloat)yCoord zCenterCoord:(CGFloat)zCoord;

- (BOOL)intersectsWithCube:(Cube *)anotherCube;

- (CGFloat)intersectionSegmentSizeWithCube:(Cube *)anotherCube onAxisType:(AxisType)axisType;

+ (CGFloat)volumeForXAxisSize:(CGFloat)xSize yAxisSize:(CGFloat)ySize zAxisSize:(CGFloat)zSize;

@end
