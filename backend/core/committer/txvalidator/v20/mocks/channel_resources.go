// Code generated by mockery v1.0.0. DO NOT EDIT.

package mocks

import (
	common "github.com/hyperledger/fabric-protos-go/common"
	channelconfig "github.com/hyperledger/fabric/common/channelconfig"

	mock "github.com/stretchr/testify/mock"

	msp "github.com/hyperledger/fabric/msp"
)

// ChannelResources is an autogenerated mock type for the ChannelResources type
type ChannelResources struct {
	mock.Mock
}

// Apply provides a mock function with given fields: configtx
func (_m *ChannelResources) Apply(configtx *common.ConfigEnvelope) error {
	ret := _m.Called(configtx)

	var r0 error
	if rf, ok := ret.Get(0).(func(*common.ConfigEnvelope) error); ok {
		r0 = rf(configtx)
	} else {
		r0 = ret.Error(0)
	}

	return r0
}

// Capabilities provides a mock function with given fields:
func (_m *ChannelResources) Capabilities() channelconfig.ApplicationCapabilities {
	ret := _m.Called()

	var r0 channelconfig.ApplicationCapabilities
	if rf, ok := ret.Get(0).(func() channelconfig.ApplicationCapabilities); ok {
		r0 = rf()
	} else {
		if ret.Get(0) != nil {
			r0 = ret.Get(0).(channelconfig.ApplicationCapabilities)
		}
	}

	return r0
}

// GetMSPIDs provides a mock function with given fields:
func (_m *ChannelResources) GetMSPIDs() []string {
	ret := _m.Called()

	var r0 []string
	if rf, ok := ret.Get(0).(func() []string); ok {
		r0 = rf()
	} else {
		if ret.Get(0) != nil {
			r0 = ret.Get(0).([]string)
		}
	}

	return r0
}

// MSPManager provides a mock function with given fields:
func (_m *ChannelResources) MSPManager() msp.MSPManager {
	ret := _m.Called()

	var r0 msp.MSPManager
	if rf, ok := ret.Get(0).(func() msp.MSPManager); ok {
		r0 = rf()
	} else {
		if ret.Get(0) != nil {
			r0 = ret.Get(0).(msp.MSPManager)
		}
	}

	return r0
}
