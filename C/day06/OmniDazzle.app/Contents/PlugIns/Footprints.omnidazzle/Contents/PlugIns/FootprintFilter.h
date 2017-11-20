// Copyright 2006 The Omni Group.  All rights reserved.
//
// $Header: svn+ssh://source.omnigroup.com/Source/svn/Omni/trunk/OmniGroup/Templates/Developer%20Tools/File%20Templates/%20Omni/Omni%20sekrit%20source%20code%20class.pbfiletemplate/class.h 70671 2005-11-22 01:01:39Z kc $

#import <OmniCoreImage/OCISimpleFilter.h>

@interface com_omnigroup_OmniDazzle_FootprintFilter : OCISimpleFilter <OCIConcreteSimpleFilter>
{
    CIImage *_inputImage;
    NSNumber *_inputScale;
    CIColor *_inputColor;
}

@end
