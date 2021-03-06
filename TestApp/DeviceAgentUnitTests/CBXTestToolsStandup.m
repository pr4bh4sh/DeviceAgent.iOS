
#import "CBXServerUnitTestUmbrellaHeader.h"

@interface CBXTestToolsStandup : XCTestCase

@end

@implementation CBXTestToolsStandup

- (void)setUp {
  [super setUp];
}

- (void)tearDown {
  [super tearDown];
}

- (void)testOCMockIsWorking {
  id actual;
  id mock = [OCMockObject mockForClass:[NSString class]];
  [[[mock expect] andReturn:@"megamock"] lowercaseString];
  actual = [mock lowercaseString];
  [mock verify];

  XCTAssertEqualObjects(actual, @"megamock", @"Should have returned stubbed value.");
}

@end

SpecBegin(LPToolsStandup)

describe(@"Specta is working", ^{
  it(@"allows XCTest assertions", ^{
    XCTAssertTrue(0 == 0);
  });

  it(@"allows Expecta assertions", ^{
    expect(@"foo").to.equal(@"foo");
  });
});

SpecEnd


