//
//  NSDataExtension.swift
//  SwiftyRSA
//
//  Created by Tilman Kieselbach on 31.07.20.
//  Copyright © 2020 Scoop. All rights reserved.
//

import Foundation
import CommonCrypto

extension NSData{
    func swiftyRSASHA1() -> Data{
        let outputLength = CC_SHA1_DIGEST_LENGTH;
        let output = UnsafeMutablePointer<UInt8>.allocate(capacity: Int(outputLength))
        CC_SHA1(self.bytes, UInt32(self.length), output);
        return Data(bytes: output, count: Int(outputLength));
    }
    
    func swiftyRSASHA224() -> Data{
        let outputLength = CC_SHA224_DIGEST_LENGTH;
        let output = UnsafeMutablePointer<UInt8>.allocate(capacity: Int(outputLength))
        CC_SHA224(self.bytes, UInt32(self.length), output);
        return Data(bytes: output, count: Int(outputLength));
    }
    
    func swiftyRSASHA256() -> Data{
        let outputLength = CC_SHA256_DIGEST_LENGTH;
        let output = UnsafeMutablePointer<UInt8>.allocate(capacity: Int(outputLength))
        CC_SHA256(self.bytes, UInt32(self.length), output);
        return Data(bytes: output, count: Int(outputLength));
    }
    
    func swiftyRSASHA384() -> Data{
        let outputLength = CC_SHA384_DIGEST_LENGTH;
        let output = UnsafeMutablePointer<UInt8>.allocate(capacity: Int(outputLength))
        CC_SHA384(self.bytes, UInt32(self.length), output);
        return Data(bytes: output, count: Int(outputLength));
    }
    
    func swiftyRSASHA512() -> Data{
        let outputLength = CC_SHA512_DIGEST_LENGTH;
        let output = UnsafeMutablePointer<UInt8>.allocate(capacity: Int(outputLength))
        CC_SHA512(self.bytes, UInt32(self.length), output);
        return Data(bytes: output, count: Int(outputLength));
    }
}
