<#import "parts/common.ftl" as c>

<@c.page3 "#EAE2FC">
    <h4 style="color: #2C0C75;">Find your favorites books:</h4>

    <form method="POST" action="/library/users_own_page/filter">
        <div class="form-inline">
            <input class="form-control mr-sm-2" type="search" name="book" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </div>
    </form>

<div>
     <table class="table table-bordered" class="col-7">
        <thead class="thead-dark">
                 <tr class="d-flex">
                     <th scope="col" class="col-1">Id</th>
                     <th scope="col" class="col-2">Book name</th>
                     <th scope="col" class="col-2">Author</th>
                     <th scope="col" class="col-2">Price</th>
                 </tr>
             </thead>
             <tbody >
             <#list books as book>
                 <tr class="d-flex">
                     <td style="background: #FFF9D7" class="col-1">${book.id}</td>
                     <td style="background: #FFF9D7" class="col-2">${book.name}</td>
                     <td style="background: #FFF9D7" class="col-2">${book.author}</td>
                     <td style="background: #FFF9D7" class="col-2">${book.price} $"</td>
                 </tr>
             </#list>
        </tbody>
     </table>
</div>

</@c.page3>