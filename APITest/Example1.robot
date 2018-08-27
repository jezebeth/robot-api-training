*** Settings ***
Library     RequestsLibrary


*** Keywords ***


*** Test Cases ***
Get Slack Chat History
    Create Session    SLACK    https://slack.com/api
    ${params}    Create Dictionary    token=xoxp-414349916946-414349917586-414122275684-d66b71041db532f3c1f8b8ed433165b5    channel=CC635JREG
    ${response}    Get Request    SLACK    channels.history    params=${params}
    ${jresp}    To Json    ${response.text}
    Log To Console    ${jresp["messages"][0]["text"]}
    Delete All Sessions