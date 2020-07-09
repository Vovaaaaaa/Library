<#import "parts/common.ftl" as c>
<#import "parts/loginTemplate.ftl" as log>

<@c.page2>

    <div class="mb-1" style="color: #2C0C75">Create new user</div>

    <@log.login "/registration", "Create", true />

    <div><a href="/login">Go to login</a></div>

</@c.page2>
