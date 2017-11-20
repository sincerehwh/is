// Copyright 2005-2006 Omni Development, Inc.  All rights reserved.
//
// $Header: svn+ssh://source.omnigroup.com/Source/svn/Omni/tags/OmniDazzle/1.1.1/GM-v15.18/OmniGroup/Applications/Dazzle/PlugIns/Footprints/Footprints.h 75608 2006-05-26 03:10:47Z bungi $

#import <OmniDazzle/OmniDazzle.h>
#import <OpenAL/al.h>

@class com_omnigroup_OmniDazzle_Footprint_Record;

typedef enum {
    LeftFootSelection = (1<<0),
    RightFootSelection = (1<<1),
    BothFootSelection = (LeftFootSelection|RightFootSelection),
} FootSelection;


@interface com_omnigroup_OmniDazzle_Footprints : ODPlugin
{
    NSObject <ODContext> *_context;
    NSMutableArray *_steps;
    NSTimer *_fadeTimer;
    NSPoint _previousMouseLocation;
    BOOL _useLeftFoot;
    CIVector *_lastSpawnPoint;
    CIVector *_priorPoint;

    NSTimeInterval _startTime;

    // KVC set values
    float _leftFootScale;
    float _rightFootScale;
    NSColor *_leftColor;
    NSColor *_rightColor;
    com_omnigroup_OmniDazzle_Footprint_Record *_leftFoot;
    com_omnigroup_OmniDazzle_Footprint_Record *_rightFoot;
    FootSelection _footChoice;
    NSColor *_nonretained_lastColor;
    float lastScale;
    float _gain;
    
    // Binding values
    CIVector *_mousePosition;
    NSNumber *_active;
}

@end
