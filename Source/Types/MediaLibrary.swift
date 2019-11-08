//
// MediaLibrary.swift
//
// Copyright (c) 2015-2019 Damien (http://delba.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

#if PERMISSION_MEDIA_LIBRARY
import MediaPlayer

extension Permission {
    var statusMediaLibrary: Status {
        guard #available(iOS 9.3, *) else { fatalError() }

        let status = MPMediaLibrary.authorizationStatus()

        switch status {
        case .authorized:          return .authorized
        case .restricted, .denied: return .denied
        case .notDetermined:       return .notDetermined
        @unknown default:          return .notDetermined
        }
    }

    func requestMediaLibrary(_ callback: @escaping Callback) {
        guard #available(iOS 9.3, *) else { fatalError() }

        guard let _ = Bundle.main.object(forInfoDictionaryKey: .mediaLibraryUsageDescription) else {
            print("WARNING: \(String.mediaLibraryUsageDescription) not found in Info.plist")
            return
        }

        MPMediaLibrary.requestAuthorization { _ in
            callback(self.statusMediaLibrary)
        }
    }
}
#endif