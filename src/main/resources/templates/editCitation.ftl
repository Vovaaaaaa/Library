<#import "parts/common.ftl" as c>

<@c.page3 "#F6FFD2">
    <h3 style="color: #324304;">Edit citation:</h3>

    <form method="POST" action="/library/vip_user/update/{id}">
         <div class="form-group row">
             <label style="color: #324304" class="col-sm-2 col-form-label">Book name: </label>
             <div class="col-sm-3">
                <input class="form-control" type="text" name="bookName" value="${citation.bookName}">
             </div>
         </div>

         <div class="form-group row">
             <label style="color: #324304" class="col-sm-2 col-form-label">Theme: </label>
             <div class="col-sm-3">
                <input class="form-control" type="text" name="theme" value="${citation.theme}">
             </div>
         </div>

         <div class="form-group row">
            <label style="color: #324304" class="col-sm-2 col-form-label">Text: </label>
            <div class="col-sm-3">
               <input class="form-control" type="text" name="text" value="${citation.text}">
            </div>
         </div>

         <input  type="hidden" name="citationId" value="${citation.id}">

         <div>
         <button class="btn btn-primary" type="submit">Edit</button>
         </div>
    </form>

</@c.page3>