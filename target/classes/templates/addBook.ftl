<#import "parts/common.ftl" as c>

<@c.page3 "#EAE2FC">
    <h3 style="color: #2C0C75;">Please add new Book</h3>

    <form method="POST" action="/add_book">
                <div class="form-group row">
                     <label style="color: #2C0C75" class="col-sm-1,75 col-form-label">Book name: </label>
                    <div class="col-sm-3">
                        <input  type="text" name="name"
                                class="form-control ${(nameError??)?string('is-invalid', '')}"
                                value="<#if message??>${book.name}</#if>" placeholder="name">
                    <#if nameError??>
                        <div class="invalid-feedback">
                            ${nameError}
                        </div>
                    </#if>
                    </div>
                </div>

                <div class="form-group row">
                     <label style="color: #2C0C75" class="col-sm-1,75 col-form-label">Book author: </label>
                     <div class="col-sm-3">
                         <input type="text" name="author"
                                 class="form-control ${(authorError??)?string('is-invalid', '')}"
                                 value="<#if message??>${book.author}</#if>" placeholder="author">
                     <#if authorError??>
                         <div class="invalid-feedback">
                             ${authorError}
                         </div>
                     </#if>
                     </div>
                </div>

                <div class="form-group row">
                     <label style="color: #2C0C75" class="col-sm-1,75 col-form-label">Book price: </label>
                     <div class="col-sm-3">
                         <input  type="text" name="price"
                         class="form-control" value="<#if message??>${book.price}</#if>"
                                placeholder="price">
                     </div>
                </div>

                <div>
                    <button class="btn btn-primary" type="submit">Add book</button>
                </div>
        </form>

</@c.page3>
