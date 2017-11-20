//
//  PlugIn.h
//  Sonar
//
//  Created by Tom Bunch on 11/21/05.
//  Copyright The Omni Group 2005. All rights reserved.
//

#import <OmniDazzle/OmniDazzle.h>


@interface com_omnigroup_OmniDazzle_Sonar : ODPlugin
{
    NSObject <ODContext>	*_context;
    NSTimeInterval	_startInterval;
    NSTimeInterval	_lastFrameInterval;
    float		_maxRadius;
    float		_rot;
    int			_shineFrame;
    NSPoint		_shineLocation;
    CIVector		*_oldMousePosition;
    NSTimer		*_nonretainedAnimationTimer;
    
    // Binding values
    NSNumber       *_active;
    CIVector       *_mousePosition;
    NSNumber       *_ringRadius;
    NSNumber       *_shineSize;
    NSNumber       *_sweepSpeed;
    NSColor        *_backgroundColor;
    NSColor        *_ringColor;
    
    CIFilter *_starshineFilter;
    CIFilter *_cropFilter;
    CIFilter *_radialGradientFilter;
    CIFilter *_compositeFilter;
}

- (void)setActive:(NSNumber *)active;
- (void)setMousePosition:(CIVector *)mousePosition;

@end
