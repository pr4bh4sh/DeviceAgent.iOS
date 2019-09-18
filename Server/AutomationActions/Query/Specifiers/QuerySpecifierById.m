
#import "QuerySpecifierById.h"
#import "XCTest+CBXAdditions.h"
#import "CBX-XCTest-Umbrella.h"

@implementation QuerySpecifierById

+ (NSString *)name { return @"id"; }

- (XCUIElementQuery *)applyInternal:(XCUIElementQuery *)query {
    NSString *escaped = [QuerySpecifier escapeString:self.value];
    return [query matchingPredicate:[NSPredicate predicateWithFormat:@"identifier == %@", escaped]];
}

@end
