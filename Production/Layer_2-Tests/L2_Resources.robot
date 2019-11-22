

*** Settings ***
Documentation               Collective test cases for all Layer 2 protocol involving tests
Library                     L2_Library.py
Library                     ats.robot.pyATSRobot
Library                     genie.libs.robot.GenieRobot
Library                     unicon.robot.UniconRobot

#*** Test Cases ***

*** Keywords ***
Layer 2 ICMP Test
    [Tags]    Layer 2
    ${output}=              ping_rtt              ${device}
    should be true          ${output}[status]
    should be true          ${output}[time] < 2.50

Layer 3 BGP Test
    ${output}=    parse "show version" on device "${device}

### pyATS Library Executed *** Test Cases ***

Layer 2 VTP Server Status
    [Tags]    Layer 2
