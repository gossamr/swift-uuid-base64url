import ExtrasBase64
import Foundation

extension Data {
    internal func base64URLEncodedString() -> String {
        Base64.encodeToString(bytes: bytes, options: [.base64UrlAlphabet, .omitPaddingCharacter])
    }
    
    internal var bytes: [UInt8] {
        return [UInt8](self)
    }
}

public extension UUID {
    internal var bytes : [UInt8] {
        let (u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16) = self.uuid
        return [u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16]
    }
    internal var data : Data { Data(bytes) }

    var base64url: String { data.base64URLEncodedString() }

    internal init(bytes u: [UInt8]) {
        let tuple = (u[0], u[1], u[2], u[3], u[4], u[5], u[6], u[7],
                     u[8], u[9], u[10], u[11], u[12], u[13], u[14], u[15])
        self.init(uuid: tuple)
    }

    init?(base64url: String) {
        var b: [UInt8]
        do {
            b = try Base64.decode(string: base64url, options: [.base64UrlAlphabet,.omitPaddingCharacter])
        } catch {
            return nil
        }
        self.init(bytes: b)
    }
}
