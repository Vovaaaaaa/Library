<#include "security.ftl">
<#import "loginTemplate.ftl" as log>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <a class="navbar-brand" style="color:#00A3FF">Library</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                 <a class="nav-link" href="/">Main</a>
            </li>
            <li class="nav-item">
                 <a class="nav-link" href="/library">Library</a>
            </li>
            <li class="nav-item">
                 <a class="nav-link" href="/library/users_own_page">User page</a>
            </li>
            <#if isVip>
            <li class="nav-item">
                 <a class="nav-link" href="/library/vip_user">VIP page</a>
            </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                 <a class="nav-link" href="/admin_page">Admin page</a>
            </li>
            </#if>
        </ul>
        <div class="navbar-text mr-3">Profile: <a href="/profile">${name}</a></div>
        <@log.logout />
    </div>
</nav>