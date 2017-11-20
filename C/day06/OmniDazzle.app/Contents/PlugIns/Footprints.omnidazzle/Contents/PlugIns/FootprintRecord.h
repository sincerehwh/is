// Copyright 2006 The Omni Group.  All rights reserved.
//
// $Header: svn+ssh://source.omnigroup.com/Source/svn/Omni/trunk/OmniGroup/Templates/Developer%20Tools/File%20Templates/%20Omni/Omni%20sekrit%20source%20code%20class.pbfiletemplate/class.h 70671 2005-11-22 01:01:39Z kc $

#import <OmniFoundation/OFObject.h>

@interface com_omnigroup_OmniDazzle_Footprint_Record : NSObject
{
    ODPlugin *_nonretained_plugin;
    NSBundle *_bundle;
    CGPDFDocumentRef _document;
    CGPDFPageRef _nonretained_page; // owned by document
    CGRect _cropBoxRect;
    float _radius;
    
    NSArray *_soundArray;
    
    CIImage *_baseImage;
} 

- initWithBundle:(NSBundle *)bundle plugin:(ODPlugin *)plugin preview:(BOOL)preview;

- (NSString *)bundleIdentifier;
- (NSString *)bundleDisplayName;

- (void)loadSounds;

- (float)radius;
- (void)playSoundAtPosition:(NSPoint)position gain:(float)gain;
- (CIImage *)createImageCenteredAtPoint:(NSPoint)center flipAboutYAxis:(BOOL)flipAboutYAxis scale:(float)scale angle:(float)angle context:(NSObject <ODContext> *)context;

@end

