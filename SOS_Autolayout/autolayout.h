//
//  autolayout.h
//  SOS Autolayout
//
//  Created by Greg O'Lone on 4/10/23.
//

#import <Foundation/Foundation.h>
#ifdef TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#endif
#if TARGET_OS_OSX
#import <AppKit/AppKit.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface SOSLayoutConstraint : NSLayoutConstraint

- (void)setSOSPriority:(double) value;
- (double)SOSpriority;

+ (double)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;
+ (void)setContentCompressionResistancePriority:(double)priority forAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;

+ (double)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;
+ (void)setContentHuggingPriority:(double)priority forAxis:(UILayoutConstraintAxis)axis forView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
