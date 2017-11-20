// Copyright 2001,2002 Omni Development, Inc.  All rights reserved.
//
// $Header: svn+ssh://source.omnigroup.com/Source/svn/Omni/tags/OmniDazzle/1.1.1/GM-v15.18/OmniGames/OmniGL/Utilities/OGLColor.h 73707 2006-03-27 23:42:59Z bungi $

#ifndef __OGLColor_h__
#define __OGLColor_h__

#import "OGLTypes.h"
#import "OGLFrameworkDefines.h"
#import "OGLSystemSpecific.h"
#import <CoreFoundation/CFString.h>

typedef struct _OGLColor4ub {
    OGLUInt8 r;
    OGLUInt8 g;
    OGLUInt8 b;
    OGLUInt8 a;
} OGLColor4ub;

typedef struct _OGLColor4f {
    OGLFloat r;
    OGLFloat g;
    OGLFloat b;
    OGLFloat a;
} OGLColor4f;

// These definitions are consistent with using blending factors of GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA
// Really, we could swap them and then use GL_ONE_MINUS_SRC_ALPHA, GL_SRC_ALPHA.
#define OGL_TRANSPARENT_ALPHA_UB ((OGLUInt8)0)
#define OGL_OPAQUE_ALPHA_UB      ((OGLUInt8)255)

#define OGL_TRANSPARENT_ALPHA_F ((OGLFloat)0.0)
#define OGL_OPAQUE_ALPHA_F      ((OGLFloat)1.0)

#define OGL_RGBA_UB(r,g,b,a) ((OGLColor4ub){(r),(g),(b),(a)})
#define OGL_RGB_UB(r,g,b)  OGL_RGBA_UB((r),(g),(b),OGL_OPAQUE_ALPHA_UB)

#define OGL_BLACK4ub   ((OGLColor4ub){0, 0, 0, OGL_OPAQUE_ALPHA_UB})
#define OGL_WHITE4ub   ((OGLColor4ub){255, 255, 255, OGL_OPAQUE_ALPHA_UB})
#define OGL_GRAY4ub    ((OGLColor4ub){128, 128, 128, OGL_OPAQUE_ALPHA_UB})
#define OGL_RED4ub     ((OGLColor4ub){255, 0, 0, OGL_OPAQUE_ALPHA_UB})
#define OGL_GREEN4ub   ((OGLColor4ub){0, 255, 0, OGL_OPAQUE_ALPHA_UB})
#define OGL_BLUE4ub    ((OGLColor4ub){0, 0, 255, OGL_OPAQUE_ALPHA_UB})
#define OGL_PURPLE4ub  ((OGLColor4ub){255, 0, 255, OGL_OPAQUE_ALPHA_UB})

#define OGL_BLACK4f ((OGLColor4f){0.0f, 0.0f, 0.0f, OGL_OPAQUE_ALPHA_F})
#define OGL_WHITE4f ((OGLColor4f){1.0f, 1.0f, 1.0f, OGL_OPAQUE_ALPHA_F})

#define OGL_CLEAR_BLACK_UB OGL_RGBA_UB(0,0,0,OGL_TRANSPARENT_ALPHA_UB)
#define OGL_OPAQUE_BLACK_UB OGL_RGBA_UB(0,0,0,OGL_OPAQUE_ALPHA_UB)

#define OGLColorsEqual(c1, c2) \
  ( ((c1).r == (c2).r) && ((c1).g == (c2).g) && ((c1).b == (c2).b) && ((c1).a == (c2).a) )

#ifdef __OBJC__
    @class NSString;
    OGL_EXTERN NSString *OGLStringFromColor4ub(OGLColor4ub c);
#endif
OGL_EXTERN CFStringRef OGLCopyStringFromColor4ub(OGLColor4ub c);

#endif // __OGLColor_h__
