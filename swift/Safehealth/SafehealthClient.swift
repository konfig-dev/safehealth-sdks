public class  SafehealthClient {
    var safe Account: String?;
    var safe Tenant: String?;
    var basic: String?;
    var basePath: String
    lazy var device: DeviceAPI = { return DeviceAPI(client: self) }()
    lazy var userDevice: UserDeviceAPI = { return UserDeviceAPI(client: self) }()

    init(
        safe Account: String?,
        safe Tenant: String?,
        basic: String?,
        basePath: String = "https://api.dev-1.sf.safecdx.io/v1beta/notification-push"
    ) {
        self.safe Account = safe Account
        self.safe Tenant = safe Tenant
        self.basic = basic
        self.basePath = basePath
    }

}
