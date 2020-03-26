/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import <XCTest/XCTest.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (FBHelpers)

/**
 Returns screenshot

 @param quality The number in range 0-2, where 2 (JPG) is the lowest and 0 (PNG) is the highest quality.
 @param error If there is an error, upon return contains an NSError object that describes the problem.
 @return Device screenshot as PNG- or JPG-encoded data or nil in case of failure
 */
- (nullable NSData *)fb_rawScreenshotWithQuality:(NSUInteger)quality error:(NSError*__autoreleasing*)error;

/**
 Returns screenshot
 @param error If there is an error, upon return contains an NSError object that describes the problem.
 @return Device screenshot as PNG-encoded data or nil in case of failure
 */
- (nullable NSData *)fb_screenshotWithError:(NSError*__autoreleasing*)error;

@end

NS_ASSUME_NONNULL_END
