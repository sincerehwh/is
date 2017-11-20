// Copyright 2006 The Omni Group.  All rights reserved.
//
// $Header: svn+ssh://source.omnigroup.com/Source/svn/Omni/trunk/OmniGroup/Templates/Developer%20Tools/File%20Templates/%20Omni/Omni%20sekrit%20source%20code%20class.pbfiletemplate/class.h 70671 2005-11-22 01:01:39Z kc $

#import <OmniFoundation/OFObject.h>

#define UPDATES_PER_SECOND	(30.0f)
#define FADE_SECONDS		(3.0)
#define PARTICLE_FADE_VELOCITY	(FADE_SECONDS / UPDATES_PER_SECOND)

@interface com_omnigroup_OmniDazzle_FootprintStep : OFObject
{
    CIFilter *_filter;
    CGRect _extent;
    NSTimeInterval _startTime;
    NSTimeInterval _lastDrawTime;
}

- initWithImage:(CIImage *)image color:(NSColor *)color time:(NSTimeInterval)timeInterval;
- (CGRect)extent;
- (CIImage *)imageAtTime:(NSTimeInterval)currentTime;
- (void)setLastDrawTime:(NSTimeInterval)currentTime;
- (float)errorMetricAtTime:(NSTimeInterval)currentTime;
@end
