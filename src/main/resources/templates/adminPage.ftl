<#import "parts/common.ftl" as c>

<@c.page3 "#FFF8D3">
    <h3 style="color: #483E06">User list: </h3>

    <div>
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr class="d-flex">
                    <th scope="col" style="color: #00A3FF" class="col-1">Id</th>
                    <th scope="col" style="color: #00A3FF" class="col-2">Name</th>
                    <th scope="col" style="color: #00A3FF" class="col-2">Role</th>
                    <th scope="col" style="color: #00A3FF" class="col-1">Status</th>
                    <th scope="col" class="col-1"></th>
                </tr>
            </thead>
            <tbody >
            <#list users as user>
                <tr class="d-flex">
                    <td style="background: #E8F7FF" class="col-1">${user.id}</td>
                    <td style="background: #E8F7FF" class="col-2">${user.name}</td>
                    <td style="background: #E8F7FF" class="col-2"><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td style="background: #E8F7FF" class="col-1">${user.status}</td>
                    <td style="background: #E8F7FF" class="col-1"><a href="/admin_page/editUser/${user.id}">Edit</a></td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>

</@c.page3>