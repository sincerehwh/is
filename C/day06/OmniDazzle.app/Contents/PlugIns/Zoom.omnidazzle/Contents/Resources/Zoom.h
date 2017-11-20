//
//  Zoom.h
//
//  Created by Tom Bunch on 4/7/05.
//  Copyright Omni Development, Inc. 2005. All rights reserved.
//

#import <OmniDazzle/OmniDazzle.h>


@interface com_omnigroup_OmniDazzle_Zoom : ODPlugin
{
    NSObject <ODContext> *_context;
    CIImage *_ciImage;
    
    ODBubbleWindow *_bubbleWindow;
    
    // Binding values
    CIVector *_rectangleDragExtent;
    NSColor *_borderColor;
    NSNumber *_borderWidth;
    NSNumber *_zoom;
    NSNumber *_zoomLevel;

    float _extentScale;
}


@end
