<#import "parts/common.ftl" as c>

<@c.page3 "#EAE2FC">
    <h2 style="color: #2C0C75;">Hello, user! </h2>

    </br>
    <h4 style="color: #2C0C75;">Search book: </h4>

    <form method="POST" action="/library/users_own_page/filter">
    <div class="form-inline">
        <input class="form-control mr-sm-2" type="search" name="book" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </div>
    </form>

</@c.page3>