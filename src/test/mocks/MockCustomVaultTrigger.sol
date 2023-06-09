// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

import {CustomVaultTriggerBase} from "../../ReportTrigger/CustomVaultTriggerBase.sol";

contract MockCustomVaultTrigger is CustomVaultTriggerBase {
    bool public triggerStatus;

    function reportTrigger(
        address,
        address
    ) external view override returns (bool) {
        return triggerStatus;
    }

    function setTriggerStatus(bool _status) external {
        triggerStatus = _status;
    }
}
