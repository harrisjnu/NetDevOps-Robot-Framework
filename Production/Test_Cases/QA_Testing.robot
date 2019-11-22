*** Settings ***
Documentation               Quality Assurance Testing
Resource                    ../Layer_2-Tests/L2_Resources.robot
Library                     ats.robot.pyATSRobot
Library                     genie.libs.robot.GenieRobot
Library                     unicon.robot.UniconRobot


*** variables ***
#${HOST}                             google.com
${testbed}                           ../Inventory/Net_Devices.yaml
variables                           ${testbed}

*** Test Cases ***
Initialize
    #use genie testbed "${testbed}"
    log to console  ${devices.csr1000v-1.type}
    #connect to device




#
#Layer_2 Tests
#    [Tags]    Layer 2
#    Layer 2 ICMP Test
#
#Layer_3 Tests
#    [Tags]    Layer 3
#    Layer 3 BGP Test
#
#Wireless Tests
#    [Tags]    Wireless
#    Layer 2 ICMP Test
#
#Infrastructure Tests
#    [Tags]    Infra
#    Layer 2 ICMP Test
#
#UI Tests
#    [Tags]    App_Servers
#    Layer 2 ICMP Test
#
#Validation Tests
#    [Tags]  Validation Tests
#    Layer 2 ICMP Test
#
#*** Keywords ***
#Provided precondition
#    Setup system under test