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

#import "XCTElementSnapshotAttributeDataSource-Protocol.h"
#import "XCUIAXNotificationHandling-Protocol.h"

@class NSArray, NSDictionary, NSString, XCAccessibilityElement, XCElementSnapshot, XCUIAccessibilityAction, XCUIApplicationProcess, XCUIElementSnapshotRequestResult;

@protocol XCUIAccessibilityInterface <NSObject, XCUIAXNotificationHandling, XCTElementSnapshotAttributeDataSource>
- (XCAccessibilityElement *)accessibilityElementForElementAtPoint:(CGPoint)arg1 error:(id *)arg2;
- (id)addObserverForAXNotification:(NSString *)arg1 handler:(void (^)(XCAccessibilityElement *, NSDictionary *))arg2;
- (BOOL)cachedAccessibilityLoadedValueForPID:(NSInteger)arg1;
- (BOOL)enableFauxCollectionViewCells:(id *)arg1;
- (XCAccessibilityElement *)hitTestElement:(XCElementSnapshot *)arg1 withPoint:(CGPoint)arg2 error:(id *)arg3;
- (NSArray *)interruptingUIElementsAffectingSnapshot:(XCElementSnapshot *)arg1 checkForHandledElement:(XCAccessibilityElement *)arg2 containsHandledElement:(BOOL *)arg3;
- (BOOL)loadAccessibility:(id *)arg1;
- (NSArray *)localizableStringsDataForActiveApplications;
- (void)notifyOnNextOccurrenceOfUserTestingEvent:(NSString *)arg1 handler:(void (^)(NSDictionary *, NSError *))arg2;
- (void)notifyWhenEventLoopIsIdleForApplication:(XCUIApplicationProcess *)arg1 reply:(void (^)(NSDictionary *, NSError *))arg2;
- (void)notifyWhenNoAnimationsAreActiveForApplication:(XCUIApplicationProcess *)arg1 reply:(void (^)(NSDictionary *, NSError *))arg2;
- (void)notifyWhenViewControllerViewDidAppearReply:(void (^)(NSDictionary *, NSError *))arg1;
- (void)notifyWhenViewControllerViewDidDisappearReply:(void (^)(NSDictionary *, NSError *))arg1;
- (id)parameterizedAttribute:(NSString *)arg1 forElement:(XCAccessibilityElement *)arg2 parameter:(id)arg3 error:(id *)arg4;
- (BOOL)performAction:(XCUIAccessibilityAction *)arg1 onElement:(XCAccessibilityElement *)arg2 value:(id)arg3 error:(id *)arg4;
- (void)performWhenMenuOpens:(XCAccessibilityElement *)arg1 block:(void (^)(void))arg2;
- (void)registerForAXNotificationsForApplicationWithPID:(NSInteger)arg1 timeout:(double)arg2 completion:(void (^)(BOOL, NSError *))arg3;
- (void)removeObserver:(id)arg1 forAXNotification:(NSString *)arg2;
- (NSDictionary *)requestSnapshotForElement:(XCAccessibilityElement *)arg1 attributes:(NSArray *)arg2 parameters:(NSDictionary *)arg3 error:(id *)arg4;
- (BOOL)setAttribute:(NSString *)arg1 value:(id)arg2 element:(XCAccessibilityElement *)arg3 outError:(id *)arg4;
- (void)unregisterForAXNotificationsForApplicationWithPID:(NSInteger)arg1;
@end

