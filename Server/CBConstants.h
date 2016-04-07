//
//  CBConstants.h
//  xcuitest-server
//

#import <Foundation/Foundation.h>

static NSUInteger const DEFAULT_SERVER_PORT = 27753;
static NSString *const CBWebServerErrorDomain = @"sh.calaba.xcuitest-server";
static NSString *const CB_BUNDLE_PATH_KEY = @"bundlePath";
static NSString *const CB_BUNDLE_ID_KEY = @"bundleID";
static NSString *const CB_LAUNCH_ARGS_KEY = @"launchArgs";
static NSString *const CB_ENVIRONMENT_KEY = @"environment";

static NSString *const CB_X_KEY = @"x";
static NSString *const CB_Y_KEY = @"y";
static NSString *const CB_X1_KEY = @"x1";
static NSString *const CB_Y1_KEY = @"y1";
static NSString *const CB_X2_KEY = @"x2";
static NSString *const CB_Y2_KEY = @"y2";

static NSString *const CB_REPITITIONS_KEY = @"repititions";
static NSString *const CB_GESTURE_KEY = @"gesture";
static NSString *const CB_OPTIONS_KEY = @"options";
static NSString *const CB_SPECIFIERS_KEY = @"specifiers";
static NSString *const CB_QUERY_KEY = @"query";
static NSString *const CB_AMOUNT_KEY = @"amount";
static NSString *const CB_PINCH_DIRECTION_KEY = @"pinch_direction";
static NSString *const CB_DURATION_KEY = @"duration";
static NSString *const CB_COORDINATE_KEY = @"coordinate";
static NSString *const CB_COORDINATES_KEY = @"coordinates";
static NSString *const CB_HEIGHT_KEY = @"height";
static NSString *const CB_STRING_KEY = @"string";
static NSString *const CB_WIDTH_KEY = @"width";
static NSString *const CB_TYPE_KEY = @"type";
static NSString *const CB_TITLE_KEY = @"title";
static NSString *const CB_LABEL_KEY = @"label";
static NSString *const CB_KEY_KEY = @"key";
static NSString *const CB_VALUE_KEY = @"value";
static NSString *const CB_PLACEHOLDER_KEY = @"placeholder";
static NSString *const CB_RECT_KEY = @"rect";
static NSString *const CB_IDENTIFIER_KEY = @"id";
static NSString *const CB_IDENTIFIER1_KEY = @"id1";
static NSString *const CB_IDENTIFIER2_KEY = @"id2";
static NSString *const CB_ENABLED_KEY = @"enabled";
static NSString *const CB_INDEX_KEY = @"index";
static NSString *const CB_PROPERTY_KEY = @"property";
static NSString *const CB_PROPERTY_LIKE_KEY = @"property_like";
static NSString *const CB_TEST_ID = @"test_id";
static NSString *const CB_TEXT_KEY = @"text";
static NSString *const CB_TEXT_LIKE_KEY = @"text_like";
static NSString *const CB_TEXT1_KEY = @"text1";
static NSString *const CB_TEXT2_KEY = @"text2";
static NSString *const CB_SCALE_KEY = @"scale";
static NSString *const CB_VELOCITY_KEY = @"velocity";
static NSString *const CB_ROTATION_KEY = @"rotation";
static NSString *const CB_NUM_TAPS_KEY = @"taps";
static NSString *const CB_NUM_TOUCHES_KEY = @"touches";
static NSString *const CB_PINCH_IN = @"in";
static NSString *const CB_PINCH_OUT = @"out";

static NSString *const CB_DIRECTION_KEY = @"direction";
static NSString *const CB_UP_KEY = @"up";
static NSString *const CB_DOWN_KEY = @"down";
static NSString *const CB_LEFT_KEY = @"left";
static NSString *const CB_RIGHT_KEY = @"right";

static NSString *const CB_DEFAULT_PINCH_DIRECTION = @"in";

static NSString *const CB_EMPTY_STRING = @"";

static NSUInteger const HTTP_STATUS_CODE_EVERYTHING_OK = 200;
static NSUInteger const HTTP_STATUS_CODE_INVALID_REQUEST = 400;
static NSUInteger const HTTP_STATUS_CODE_SERVER_ERROR = 500;

static float const CB_DEFAULT_DURATION = 0.1;
static float const CB_DEFAULT_PINCH_AMOUNT = 50;
static float const CB_GESTURE_EPSILON = 0.001;
