#import <UIKit/UIKit.h>

%hook UITouch
- (CGPoint)locationInView:(UIView *)view {
    CGPoint originalLocation = %orig;
    CGFloat sensitivityMultiplier = 1.5; 
    return CGPointMake(originalLocation.x * sensitivityMultiplier, originalLocation.y * sensitivityMultiplier);
}

- (CGPoint)previousLocationInView:(UIView *)view {
    CGPoint originalPreviousLocation = %orig;
    CGFloat sensitivityMultiplier = 1.5;
    return CGPointMake(originalPreviousLocation.x * sensitivityMultiplier, originalPreviousLocation.y * sensitivityMultiplier);
}
%end
