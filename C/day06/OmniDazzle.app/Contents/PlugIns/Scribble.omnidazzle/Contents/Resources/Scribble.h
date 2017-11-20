// Copyright 2005-2006 The Omni Group.  All rights reserved.
//
// $Header: svn+ssh://source.omnigroup.com/Source/svn/Omni/tags/OmniDazzle/1.1.1/GM-v15.18/OmniGroup/Applications/Dazzle/PlugIns/Scribble/Scribble.h 75969 2006-06-01 23:02:44Z bungi $

#import <OmniDazzle/ODPlugin.h>

@class ODBinding, ODBubbleWindow;
@class CIVector;

@interface com_omnigroup_OmniDazzle_Scribble : ODPlugin
{
    NSObject <ODContext> *_context;
    
    CGPoint *_points;
    unsigned int _pointArraySize;    // we realloc in blocks, so maybe != _numPoints
    unsigned int _numPoints;
    CGLayerRef _backingStoreLayer;
    CGMutablePathRef _currentPath;

    NSString *_currentPen;
    ODBubbleWindow *_bubbleWindow;
    ODBinding *_leftMouseButtonDownBinding;
    ODBinding *_escapeKeyBinding;
    
    // KVC set values
    NSColor *_pen1Color;
    NSColor *_pen1OutlineColor;
    NSNumber *_pen1LineWidth;
    
    NSColor *_pen2Color;
    NSColor *_pen2OutlineColor;
    NSNumber *_pen2LineWidth;
    
    NSColor *_pen3Color;
    NSColor *_pen3OutlineColor;
    NSNumber *_pen3LineWidth;
    
    NSColor *_pen4Color;
    NSColor *_pen4OutlineColor;
    NSNumber *_pen4LineWidth;

    // Binding values
    NSNumber *_leftMouseButtonDown;
    CIVector *_mousePosition;
}

@end
