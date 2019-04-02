<#import "parts/login.ftl" as l>
<#import "parts/common.ftl" as c>

<@c.page>

    Add new user
    ${message ? if_exists}
    <@l.login "/registration"/>
</@c.page>
