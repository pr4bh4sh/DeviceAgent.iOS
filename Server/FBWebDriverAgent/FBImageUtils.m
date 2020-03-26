/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "FBImageUtils.h"

#import "FBMacros.h"

static uint8_t JPEG_MAGIC[] = { 0xff, 0xd8 };
static const NSUInteger JPEG_MAGIC_LEN = 2;
static uint8_t PNG_MAGIC[] = { 0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A };
static const NSUInteger PNG_MAGIC_LEN = 8;

BOOL FBIsJpegImage(NSData *imageData)
{
  if (nil == imageData || [imageData length] < JPEG_MAGIC_LEN) {
    return NO;
  }

  static NSData* jpegMagicStartData = nil;
  static dispatch_once_t onceJpegToken;
  dispatch_once(&onceJpegToken, ^{
    jpegMagicStartData = [NSData dataWithBytesNoCopy:(void*)JPEG_MAGIC length:JPEG_MAGIC_LEN freeWhenDone:NO];
  });

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wassign-enum"
  NSRange range = [imageData rangeOfData:jpegMagicStartData options:kNilOptions range:NSMakeRange(0, JPEG_MAGIC_LEN)];
#pragma clang diagnostic pop
  return range.location != NSNotFound;
}

BOOL FBIsPngImage(NSData *imageData)
{
  if (nil == imageData || [imageData length] < PNG_MAGIC_LEN) {
    return NO;
  }

  static NSData* pngMagicStartData = nil;
  static dispatch_once_t oncePngToken;
  dispatch_once(&oncePngToken, ^{
    pngMagicStartData = [NSData dataWithBytesNoCopy:(void*)PNG_MAGIC length:PNG_MAGIC_LEN freeWhenDone:NO];
  });

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wassign-enum"
  NSRange range = [imageData rangeOfData:pngMagicStartData options:kNilOptions range:NSMakeRange(0, PNG_MAGIC_LEN)];
#pragma clang diagnostic pop
  return range.location != NSNotFound;
}


NSData *FBAdjustScreenshotOrientationForApplication(NSData *screenshotData)
{
  if (FBIsPngImage(screenshotData)) {
    return screenshotData;
  }
  UIImage *image = [UIImage imageWithData:screenshotData];
  return (NSData *)UIImagePNGRepresentation(image);
}
