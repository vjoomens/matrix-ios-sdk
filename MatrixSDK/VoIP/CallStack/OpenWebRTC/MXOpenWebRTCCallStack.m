/*
 Copyright 2015 OpenMarket Ltd

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

// OWR cannot be built for the iOS simulator (@see https://github.com/EricssonResearch/openwebrtc-examples/issues/79)
#ifndef DISABLE_OPENWEBRTC_TO_BUID_TESTS

#import "MXOpenWebRTCCallStack.h"

#import "MXOpenWebRTCCallStackCall.h"

@implementation MXOpenWebRTCCallStack

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [OpenWebRTC initialize];
    }
    return self;
}

- (id<MXCallStackCall>)createCall
{
    return [[MXOpenWebRTCCallStackCall alloc] init];
}

@end

#endif
