
#import "CBXException.h"
#import "CBXConstants.h"

@implementation CBXException

+ (instancetype)withFormat:(NSString *)format, ... {
    va_list args;
    va_start(args, format);
    id ret = [self withMessage:[[NSString alloc] initWithFormat:format arguments:args]];
    va_end(args);
    return ret;
}

+ (instancetype)withMessage:(NSString *)message {
    return [self withMessage:message statusCode:HTTP_STATUS_CODE_SERVER_ERROR];
}

+ (instancetype)withMessage:(NSString *)message statusCode:(NSInteger)code {
    return [self withMessage:message statusCode:code userInfo:nil];
}

+ (instancetype)withMessage:(NSString *)message userInfo:(NSDictionary *)userInfo {
    return [self withMessage:message statusCode:HTTP_STATUS_CODE_SERVER_ERROR userInfo:userInfo];
}

+ (instancetype)withMessage:(NSString *)message statusCode:(NSInteger)code userInfo:(NSDictionary *)userInfo {
    NSString *name = NSStringFromClass([self class]);
    CBXException *e = [[self alloc] initWithName:name reason:message userInfo:userInfo];
    e.HTTPErrorStatusCode = code;
    return e;
}

+ (CBXException *)overrideMethodInSubclassExceptionWithClass:(Class) klass
                                          selector:(SEL) selector {
    NSString *msg = [NSString stringWithFormat:@"Must override [%@ %@]",
                     NSStringFromClass(klass),
                     NSStringFromSelector(selector)];
    return [CBXException withMessage:msg];
}
@end
