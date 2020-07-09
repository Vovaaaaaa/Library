<#import "parts/common.ftl" as c>

<@c.page3 "#F6FFD2">
    <h4 style="color: #324304;">Search citation: </h4>

    <form method="POST" action="/library/vip_user/filter">
        <div class="form-inline">
            <input class="form-control mr-sm-2" type="search" name="filter" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </div>
    </form>

    <div>
         <table class="table table-bordered" class="col-7">
            <thead class="thead-dark">
                     <tr class="d-flex">
                         <th scope="col" class="col-1">Id</th>
                         <th scope="col" class="col-2">Book name</th>
                         <th scope="col" class="col-2">Theme</th>
                         <th scope="col" class="col-4">Text</th>
                     </tr>
                 </thead>
                 <tbody >
                 <#list filter as citation>
                     <tr class="d-flex">
                         <td style="background: #FFF9D7" class="col-1">${citation.id}</td>
                         <td style="background: #FFF9D7" class="col-2">${citation.bookName}</td>
                         <td style="background: #FFF9D7" class="col-2">${citation.theme}</td>
                         <td style="background: #FFF9D7" class="col-4">${citation.text}"</td>
                     </tr>
                 </#list>
            </tbody>
         </table>
    </div>

</@c.page3>