@testable import SafehealthPush

import XCTest


class SimpleTest: XCTestCase {
    var safehealth: SafehealthPushClient!

    override func setUpWithError() throws {
        self.safehealth = SafehealthPushClient(
            identityAccessToken: "IDENTITY_ACCESS_TOKEN",
            safeAccount: "SAFE_ACCOUNT",
            safeTenant: "SAFE_TENANT",
            basePath: "http://127.0.0.1:4010"
        )
}

    override func tearDownWithError() throws {}

    func testDeviceStore() async throws {
        let userId = UUID().uuidString
        let device = Device(
            id: UUID().uuidString,
            createdAt: Date(),
            updatedAt: Date(),
            platform: Platform.mobile,
            web: Web(
                operatingSystem: OperatingSystem.android,
                browserName: BrowserName.chrome,
                hostname: "hostname_example",
                defaults: WebPushDefaults(
                    channels: WebChannels(
                        firebaseCloudMessaging: WebFirebaseCloudMessaging(
                            projectId: "projectId_example",
                            appId: "appId_example",
                            token: "token_example"
                        )
                    )
                )
            ),
            mobile: Mobile(
                os: MobileOperatingSystem.android,
                ios: AppleIos(
                    bundleId: "bundleId_example",
                    teamId: "teamId_example",
                    signingCertificateType: SigningCertificate.development,
                    channels: AppleIosChannels(
                        simpleNotificationService: AppleSimpleNotificationService(
                            apnsVoip: ApplePushNotificationServiceVoIp(
                                applicationArn: "applicationArn_example",
                                token: "token_example"
                            )
                        ),
                        firebaseCloudMessaging: AppleFirebaseCloudMessaging(
                            projectId: "projectId_example",
                            applicationId: "applicationId_example",
                            token: "token_example"
                        )
                    )
                ),
                android: Android(
                    channels: AndroidChannels(
                        firebaseCloudMessaging: AndroidFirebaseCloudMessaging(
                            projectId: "projectId_example",
                            applicationId: "applicationId_example",
                            token: "token_example"
                        )
                    )
                )
            )
        )
        let storeResponse = try await safehealth.device.store(
            userId: userId,
            device: device
        )
        print(storeResponse)
        XCTAssertNotNil(storeResponse)
    }
}