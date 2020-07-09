<#import "parts/common.ftl" as c>

<@c.page3 "#F6FFD2">
    <h3 style="color: #324304">Citation list: </h3>

    <div>
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr class="d-flex">
                    <th scope="col" class="col-1">Id</th>
                    <th scope="col" class="col-2">Book name</th>
                    <th scope="col" class="col-2">Theme</th>
                    <th scope="col" class="col-4">Text</th>
                    <th scope="col" class="col-1"></th>
                    <th scope="col" class="col-1"></th>

                </tr>
            </thead>
            <tbody >
            <#list citations as citation>
                <tr class="d-flex">
                    <td style="background: #FFF9D5" class="col-1">${citation.id}</td>
                    <td style="background: #FFF9D5" class="col-2">${citation.bookName}</td>
                    <td style="background: #FFF9D5" class="col-2">${citation.theme}</td>
                    <td style="background: #FFF9D5" class="col-4">${citation.text}</td>
                    <td style="background: #FFF9D5" class="col-1"><a href="/library/vip_user/update/${citation.id}">Edit</a></td>
                    <td style="background: #FFF9D5" class="col-1"><a href="/library/vip_user/delete/${citation.id}">Delete</a></td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>

    <form method="GET" action="/library/vip_user/add_citation">
        <div>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Add citation</button>
        </div>
    </form>

    <h4 style="color: #324304">Search citation: </h4>
    <form method="POST" action="/library/vip_user/filter">
        <div class="form-inline">
            <input class="form-control mr-sm-2" type="search" name="filter" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </div>
    </form>

</@c.page3>