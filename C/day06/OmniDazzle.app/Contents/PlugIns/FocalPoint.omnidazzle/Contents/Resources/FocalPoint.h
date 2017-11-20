// Copyright 2006 Omni Development, Inc.  All rights reserved.
//
// $Header: svn+ssh://source.omnigroup.com/Source/svn/Omni/trunk/OmniGroup/Applications/Dazzle/Framework/ODPluginRecord.h 75487 2006-05-23 23:42:26Z bungi $

#import <OmniDazzle/OmniDazzle.h>

@class CIFilter;

@interface com_omnigroup_OmniDazzle_FocalPoint : ODPlugin
{
    NSObject <ODContext> *_context;
    ODShape *_currentCutout;
    ODBinding *_userFocusBinding;
    
    // KVC set values
    NSNumber *_backgroundEnabled;
    NSColor  *_backgroundColor;
    NSString *_borderType;
    NSColor  *_borderColor;
    NSNumber *_interiorEnabled;
    NSColor  *_interiorColor;
    NSNumber *_borderThickness;
    NSNumber *_windowRectMargin;
    NSNumber *_rectCornerRadius;
    NSNumber *_focusOnWindow;
    CIVector *_focusRect;
    
    // Binding values
    NSNumber *_active;

    // Cached values
    CIFilter <com_omnigroup_OmniDazzle_CutoutBorderConcreteFilter> *_borderFilter;
}

+ (Class)borderTypeClassNamed:(NSString *)name;

- (void)setCurrentCutout:(ODShape *)cutout;

- (void)setToggleFocusMode:(NSNumber *)focusOnWindow;

    // KVC
- (void)setBackgroundColor:(NSColor *)backgroundColor;
- (void)setBackgroundEnabled:(NSNumber *)backgroundEnabled;
- (NSArray *)availableBorderTypes;
- (BOOL)borderEnabled;
- (void)setBorderEnabled:(BOOL)borderEnabled;
- (void)setBorderType:(NSString *)borderType;
- (void)setBorderColor:(NSColor *)borderColor;
- (void)setInteriorEnabled:(NSNumber *)interiorEnabled;
- (void)setInteriorColor:(NSColor *)interiorColor;
- (NSNumber *)borderThickness;
- (void)setBorderThickness:(NSNumber *)borderThickness;
- (NSNumber *)windowRectMargin;
- (void)setWindowRectMargin:(NSNumber *)windowRectMargin;
- (NSNumber *)rectCornerRadius;
- (void)setRectCornerRadius:(NSNumber *)rectCornerRadius;
@end
