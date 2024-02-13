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

    func testUserDeviceCreate() async throws {
        let id = "id_example"
        let createdAt = Date()
        let updatedAt = Date()
        let deviceId = "deviceId_example"
        let appVersion = "appVersion_example"
        let deviceModel = "deviceModel_example"
        let deviceToken = "deviceToken_example"
        let deviceType = "deviceType_example"
        let idfaId = "idfaId_example"
        let isLoggedIn = true
        let osVersion = "osVersion_example"
        let voipToken = "voipToken_example"
        let userId = "userId_example"
        let tenantId = "tenantId_example"
        let userUUID = "userUUID_example"
        let nationalHealthId = "nationalHealthId_example"
        let language = "language_example"
        let createResponse = try await self.safehealth.userDevice.create(
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt,
            deviceId: deviceId,
            appVersion: appVersion,
            deviceModel: deviceModel,
            deviceToken: deviceToken,
            deviceType: deviceType,
            idfaId: idfaId,
            isLoggedIn: isLoggedIn,
            osVersion: osVersion,
            voipToken: voipToken,
            userId: userId,
            tenantId: tenantId,
            userUUID: userUUID,
            nationalHealthId: nationalHealthId,
            language: language
        )
        print(createResponse)
        XCTAssertNotNil(createResponse)
    }

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