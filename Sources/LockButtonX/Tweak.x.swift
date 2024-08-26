/**
 * Copyright (c) Nightwind 2024
 */

import Orion
import LockButtonXC

class LockButtonHook: ClassHook<SBLockHardwareButtonActions> {
	// Change behavior of the lock button when long pressed.
	func performLongPressActions() {
		if #available(iOS 13, *) {
			SBMainWorkspace.sharedInstance()?.presentPowerDownTransientOverlay()
		} else {
			SpringBoard.shared()?.showPowerDownAlert()
		}
	}
}