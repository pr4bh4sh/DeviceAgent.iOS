
#import "CBXServerUnitTestUmbrellaHeader.h"
#import "SpringBoardAlerts.h"
#import "SpringBoardAlert.h"

#pragma mark - PrivacyAlerts

@interface SpringBoardAlerts(TEST)

- (NSMutableArray<SpringBoardAlert *> *)alerts;

@end

@interface SpringBoardAlertsTest : XCTestCase

@end

@implementation SpringBoardAlertsTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testAlerts {
    NSArray<SpringBoardAlert *> *actual;
    actual = [[SpringBoardAlerts shared] alerts];
    expect(actual.count > 0).to.beTruthy();
}

- (void)testAlertForTitle {
    NSString *alertTitle, *expectedButton;
    BOOL expectedShouldAccept;
    SpringBoardAlert *actual;

    alertTitle = @"Some alert generated SpringBoard that we cannot handle";
    actual = [[SpringBoardAlerts shared] alertMatchingTitle:alertTitle];

    expect(actual).to.equal(nil);

    alertTitle = @"Mise à jour des réglages de l’opérateur";
    expectedButton = @"Plus tard";
    expectedShouldAccept = YES;
    actual = [[SpringBoardAlerts shared] alertMatchingTitle:alertTitle];

    expect(actual.defaultDismissButtonMark).to.equal(expectedButton);
    expect(actual.shouldAccept).to.equal(expectedShouldAccept);

    alertTitle = @"Доступны новые настройки. Хотите обновить их сейчас?";
    expectedButton = @"Не сейчас";
    expectedShouldAccept = YES;
    actual = [[SpringBoardAlerts shared] alertMatchingTitle:alertTitle];

    expect(actual.defaultDismissButtonMark).to.equal(expectedButton);
    expect(actual.shouldAccept).to.equal(expectedShouldAccept);

    alertTitle = @"No SIM Card Installed";
    expectedButton = @"OK";
    expectedShouldAccept = YES;
    actual = [[SpringBoardAlerts shared] alertMatchingTitle:alertTitle];

    expect(actual.defaultDismissButtonMark).to.equal(expectedButton);
    expect(actual.shouldAccept).to.equal(expectedShouldAccept);

    alertTitle = @"Carrier Settings Update";
    expectedButton = @"Not Now";
    expectedShouldAccept = YES;
    actual = [[SpringBoardAlerts shared] alertMatchingTitle:alertTitle];

    expect(actual.defaultDismissButtonMark).to.equal(expectedButton);
    expect(actual.shouldAccept).to.equal(expectedShouldAccept);

    alertTitle = @"يتوفر الآن إعدادات جديدة. هل ترغب بالتحديث الآن؟";
    expectedButton = @"ليس الآن";

    expectedShouldAccept = YES;
    actual = [[SpringBoardAlerts shared] alertMatchingTitle:alertTitle];

    expect(actual.defaultDismissButtonMark).to.equal(expectedButton);
    expect(actual.shouldAccept).to.equal(expectedShouldAccept);
}

@end
