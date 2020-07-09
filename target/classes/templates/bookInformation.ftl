<#import "parts/common.ftl" as c>

<@c.page3 "#EAE2FC">
    <h3 style="color: #2C0C75;">Information about book: </h3>

    <div>
        <table class="table table-bordered" style="height: 100px;">
            <thead class="thead-dark">
                <tr class="d-flex">
                     <th scope="col" class="col-1">Id</th>
                     <th scope="col" class="col-2">Name</th>
                     <th scope="col" class="col-2">Author</th>
                     <th scope="col" class="col-2">Price</th>
                </tr>
            </thead>
            <tbody >
                <tr class="d-flex">
                     <td style="background: #FFF9D7" class="col-1">${book.id}</td>
                     <td style="background: #FFF9D7" class="col-2">${book.name}</td>
                     <td style="background: #FFF9D7" class="col-2">${book.author}</td>
                     <td style="background: #FFF9D7" class="col-2">${book.price} $</td>
                </tr>
            </tbody>
         </table>
     </div>

    <form action="/library" method="GET">
        <button type="submit" class="btn btn-secondary btn-sm">Back</button>
    </form>


</@c.page3>
