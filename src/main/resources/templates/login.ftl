<#import "parts/common.ftl" as c>
<#import "parts/loginTemplate.ftl" as log>

<@c.page2>

    <div class="mb-1">Sing in</div>

    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
        <div class="alert alert-danger" role="alert">
           Bad login details
        </div>
    </#if>

    <#if goodMessage??>
        <div class="alert alert-success" role="alert">
            ${goodMessage}
        </div>
    </#if>

    <#if badMessage??>
        <div class="alert alert-danger" role="alert">
            ${badMessage}
        </div>
    </#if>

    <#if message??>
        <div class="alert alert-primary" role="alert">
            ${message}
        </div>
    </#if>

    <@log.login "/login", "Sign in", false/>

    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="remember-me" name="remember-me">
        <label class="form-check-label" for="remember-me">Remember me?</label>
    </div>

    <a href="/registration">Create user</a>

</@c.page2>
