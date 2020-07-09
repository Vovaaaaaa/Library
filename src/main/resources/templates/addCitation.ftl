<#import "parts/common.ftl" as c>

<@c.page3 "#F6FFD2">
    <h3 style="color: #324304;">Add new citation</h3>

    <form method="POST" action="/library/vip_user/add_citation">
                <div class="form-group row">
                    <label style="color: #324304" class="col-sm-2 col-form-label">Book name: </label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" name="bookName" placeholder="book name">
                    </div>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="status">
                    <label class="form-check-label">
                       DEAD
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="status">
                    <label class="form-check-label">
                       LOVE
                    </label>
                </div>

                <div class="form-group row">
                     <label style="color: #324304" class="col-sm-2 col-form-label">Write citation: </label>
                     <div class="col-sm-3">
                         <input class="form-control" type="text" name="text" placeholder="write citation">
                     </div>
                </div>

                <div>
                    <button class="btn btn-primary" type="submit">Add citation</button>
                </div>
        </form>

</@c.page3>