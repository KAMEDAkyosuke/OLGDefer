//
//  OLGDefer.h
//  Pods
//
//  Created by organlounge on 2015/04/03.
//
//

#import <Foundation/Foundation.h>

typedef void(^OLGDeferTask)();

@interface OLGDefer : NSObject

+(instancetype)deferWithTask:(OLGDeferTask)task;

@end

// see. https://gist.github.com/kenpusney/b7a317c16831d2bbc6de
#define OLGGensymImpl2(cn, ln) OLGGensym##c##cn##l##ln
#define OLGGensymImpl1(cn, ln) OLGGensymImpl2(cn,ln)
#define OLGGensym() OLGGensymImpl1(__COUNTER__, __LINE__)

#define defer(t) __attribute__((unused)) OLGDefer *OLGGensym() = [OLGDefer deferWithTask:(t)]
