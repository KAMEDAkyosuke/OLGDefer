//
//  OLGDeferTests.m
//  OLGDeferTests
//
//  Created by KAMEDAkyosuke on 04/03/2015.
//  Copyright (c) 2014 KAMEDAkyosuke. All rights reserved.
//

#import "../../Pod/Classes/OLGDefer.h"

SpecBegin(InitialSpecs)

describe(@"these will pass", ^{
    
    it(@"defer task call last", ^{
        NSMutableArray *ary = [NSMutableArray array];
        expect(ary.count).equal(0);
        
        defer(^{ expect(ary.count).equal(2); });
        
        [ary addObject:[NSNull null]];
        expect(ary.count).equal(1);
        
        [ary addObject:[NSNull null]];
    });
    
    it(@"defer task call sequence is FILO", ^{
        NSMutableArray *ary = [NSMutableArray array];
        defer(^{
            expect(ary.count).equal(2);
        });
        
        defer(^{
            expect(ary.count).equal(1);
            [ary addObject:[NSNull null]];
        });
        
        defer(^{
            expect(ary.count).equal(0);
            [ary addObject:[NSNull null]];
        });
    });
});

SpecEnd
