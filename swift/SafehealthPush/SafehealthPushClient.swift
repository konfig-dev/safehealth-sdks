public class  SafehealthPushClient {
    var identityAccessToken: String?;
    var safeAccount: String?;
    var safeTenant: String?;
    var basePath: String
    lazy var device: DeviceAPI = { return DeviceAPI(client: self) }()
    lazy var userDevice: UserDeviceAPI = { return UserDeviceAPI(client: self) }()

    init(
        identityAccessToken: String?,
        safeAccount: String?,
        safeTenant: String?,
        basePath: String = "https://api.dev-1.sf.safecdx.io/v1beta/notification-push"
    ) {
        self.identityAccessToken = identityAccessToken
        self.safeAccount = safeAccount
        self.safeTenant = safeTenant
        self.basePath = basePath
    }

}
