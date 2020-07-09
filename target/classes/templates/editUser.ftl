<#import "parts/common.ftl" as c>

<@c.page3 "#EAE2FC">
    <h4 style="color: #2C0C75;">Edit: ${user.name}</h4>

    <form method="POST" action="/admin_page/editUser/{id}">

         <label class="form-check-label" for="exampleRadios1">Role: </label>
         <#list roles as role>
             <div class="form-check">
                <input class="form-check-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
             </div>
         </#list>

         <div class="form-group row">
         <label style="color: #2C0C75" class="col-sm-1.75 col-form-label">Status: </label>
             <div class="col-sm-3">
                 <input class="form-control" type="text" name="status" value="${user.status}">
             </div>
         </div>

         <input  type="hidden" name="userId" value="${user.id}">

         <div>
         <button class="btn btn-primary" type="submit">Edit</button>
         </div>
    </form>

</@c.page3>