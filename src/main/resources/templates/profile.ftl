<#import "parts/common.ftl" as c>

<@c.page3 "#CFECFF">

    <h4 style="color: #1B4B6A">Profile: </h4>

    <#if passwordError??>
        <div class="alert alert-danger" role="alert">
           ${passwordError}
        </div>
    </#if>

    <form method="POST" action="/profile">
        <div class="form-group row">
            <label style="color: #032B45" class="col-sm-1 col-form-label">Password: </label>
            <div class="col-sm-3">
                <input type="password" name="password" class="form-control" placeholder="new password"/>
            </div>
        </div>

        <div class="form-group row">
            <label style="color: #032B45" class="col-sm-1 col-form-label">Password: </label>
            <div class="col-sm-3">
                <input type="password" name="password2" class="form-control" placeholder="confirmation"/>
            </div>
        </div>


        <div>
            <button class="btn btn-primary" type="submit">Save</button>
        </div>
    </form>

</@c.page3>