<#import "parts/common.ftl" as c>

<@c.page3 "#EAE2FC">
    <h2 style="color: #2C0C75">Book list: </h2>

    <div>
        <table class="table table-bordered" class="col-7">
             class="thead-dark">
                <tr class="d-flex">
                    <th scope="col" class="col-1">Id</th>
                    <th scope="col" class="col-2">Book name</th>
                    <th scope="col" class="col-1"></th>
                    <th scope="col" class="col-1"></th>
                </tr>
            </thead>
            <tbody >
            <#list books as book>
                <tr class="d-flex">
                    <td style="background: #FFF9D7" class="col-1"><a href="/book/${book.id}"</a>${book.id}</td>
                    <td style="background: #FFF9D7" class="col-2">${book.name}</td>
                    <td style="background: #FFF9D7" class="col-1"><a href="/update/${book.id}">Edit</a></td>
                    <td style="background: #FFF9D7" class="col-1"><a href="/delete/${book.id}">Delete</a></td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>

    <form method="GET" action="/add_book">
        <div>
            <button style="color: #2C0C75" class="btn btn-outline-success my-2 my-sm-0" type="submit">Add book</button>
        </div>
    </form>

</@c.page3>

