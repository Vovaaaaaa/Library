<#macro login path, button, isRegisterForm>
    <form method="POST" action="${path}">
            <div class="form-group row">
                <label style="color: #2C0C75" class="col-sm-1 col-form-label">Name: </label>
                <div class="col-sm-3">
                    <input type="text" name="name"
                           class="form-control ${(nameError??)?string('is-invalid', '')}"
                           value="<#if passwordError??>${user.name}</#if>" placeholder="name" />
                <#if nameError??>
                    <div class="invalid-feedback">
                        ${nameError}
                    </div>
                </#if>
                </div>
            </div>

            <#if isRegisterForm>
            <div class="form-group row">
                 <label style="color: #2C0C75" class="col-sm-1 col-form-label">Email: </label>
                 <div class="col-sm-3">
                 <input class="form-control" type="email" name="email" placeholder="some@some.com" />
                </div>
            </div>
            </#if>

            <div class="form-group row">
                 <label style="color: #2C0C75" class="col-sm-1 col-form-label">Password: </label>
                 <div class="col-sm-3">
                     <input type="password" name="password"
                            class="form-control ${(passwordError??)?string('is-invalid', '')}"
                            placeholder="password" />
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
                </div>
            </div>

            <#if isRegisterForm>
            <div class="form-group row">
                <label style="color: #2C0C75" class="col-sm-1 col-form-label">Password: </label>
                <div class="col-sm-3">
                    <input type="password" name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           placeholder="password" />
                <#if password2Error??>
                    <div class="invalid-feedback">
                         ${password2Error}
                    </div>
                </#if>
                </div>
            </div>
            </#if>

            <div>
                <button class="btn btn-primary" type="submit">${button}</button>
            </div>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button type="submit" class="btn btn-primary btn-sm">Sign Out</button>
    </form>
</#macro>