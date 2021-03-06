// class-dump results processed by bin/class-dump/dump.rb
//
//     Generated by class-dump 3.5 (64 bit) (Debug version compiled Apr 12 2019 07:16:25).
//
//  Copyright (C) 1997-2019 Steve Nygard.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <XCTest/XCUIElementTypes.h>
#import "CDStructures.h"
@protocol OS_dispatch_queue;
@protocol OS_xpc_object;

#import "XCTElementSetCodableTransformer.h"

#import "XCTCapabilitiesProviding-Protocol.h"

@class NSArray, NSString;

@interface XCTElementSortingTransformer : XCTElementSetCodableTransformer <XCTCapabilitiesProviding>
{
    NSArray *_sortDescriptors;
}

@property(readonly, copy) NSArray *sortDescriptors;

+ (void)provideCapabilitiesToBuilder:(id)arg1;
- (BOOL)canBeRemotelyEvaluatedWithCapabilities:(id)arg1;
- (id)initWithSortDescriptors:(id)arg1;
- (id)iteratorForInput:(id)arg1;
- (id)requiredKeyPathsOrError:(id *)arg1;
- (BOOL)supportsAttributeKeyPathAnalysis;
- (BOOL)supportsRemoteEvaluation;
- (id)transform:(id)arg1 relatedElements:(id *)arg2;


@end

