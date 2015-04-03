//
//  OLGDefer.m
//  Pods
//
//  Created by organlounge on 2015/04/03.
//
//

#import "OLGDefer.h"

@interface OLGDefer ()
@property(nonatomic, strong) OLGDeferTask task;
@end

@implementation OLGDefer

- (void)dealloc
{
    if(self.task){
        self.task();
    }
    self.task = nil;
}

+(instancetype)deferWithTask:(OLGDeferTask)task
{
    NSAssert(task != nil, @"task must be non-nil");
    OLGDefer *obj = [self.class.alloc init];
    obj.task = task;
    return obj;
}

@end
