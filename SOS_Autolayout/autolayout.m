//
//  autolayout.m
//  SOS Autolayout
//
//  Created by Greg O'Lone on 4/10/23.
//

#import "./autolayout.h"

@implementation SOSLayoutConstraint : NSLayoutConstraint

// Fixes for things that Xojo declares get wrong.
- (void)setSOSPriority:(double) value {
    super.priority = [SOSLayoutConstraint convertDoubleToFloat:value];
}

- (double)SOSpriority {
    return [SOSLayoutConstraint convertFloatToDouble: super.priority];
}

+ (double)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view {
    float value = [view contentHuggingPriorityForAxis:axis];
    return [SOSLayoutConstraint convertFloatToDouble:value];
}

+ (double)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view {
    float value = [view contentCompressionResistancePriorityForAxis:axis];
    return [SOSLayoutConstraint convertFloatToDouble:value];
}

+ (void)setContentCompressionResistancePriority:(double)priority forAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view {
    float convertedValue = [SOSLayoutConstraint convertDoubleToFloat:priority];
    [view setContentCompressionResistancePriority:convertedValue forAxis:axis];
}

+ (void)setContentHuggingPriority:(double)priority forAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view {
    float convertedValue = [SOSLayoutConstraint convertDoubleToFloat:priority];
    [view setContentHuggingPriority:convertedValue forAxis:axis];
    
}

+ (short)convertDoubleToFloat:(double)value {
    NSNumber *num = [NSNumber numberWithDouble:value];
    return [num floatValue];
}

+ (double)convertFloatToDouble:(float)value {
    NSNumber *num = [NSNumber numberWithFloat:value];
    return [num doubleValue];
}
@end
