<#import "parts/common.ftl" as c>

<@c.page3 "#EAE2FC">
    <h3 style="color: #2C0C75;">Edit book:</h3>

    <form method="POST" action="/update/{id}">
         <div class="form-group row">
             <label style="color: #2C0C75" class="col-sm-1.75 col-form-label">Book name: </label>
             <div class="col-sm-3">
                <input class="form-control" type="text" name="name" value="${book.name}">
             </div>
         </div>

         <div class="form-group row">
             <label style="color: #2C0C75" class="col-sm-1.75 col-form-label">Book author: </label>
             <div class="col-sm-3">
                <input class="form-control" type="text" name="author" value="${book.author}">
             </div>
         </div>

         <div class="form-group row">
            <label style="color: #2C0C75" class="col-sm-1.75 col-form-label">Book price: </label>
            <div class="col-sm-3">
               <input class="form-control" type="text" name="price" value="${book.price}">
            </div>
         </div>

         <input  type="hidden" name="bookId" value="${book.id}">

         <div>
         <button class="btn btn-primary" type="submit">Edit</button>
         </div>
    </form>

</@c.page3>
