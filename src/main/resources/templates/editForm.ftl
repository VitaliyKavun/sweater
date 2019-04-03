<#import "parts/common.ftl" as c>

<@c.page>
    User Edit Page

    <form action="/user" methpd="post">
        <input type="text" name="username" value="${user.username}"/>
        <#list roles as role>
            <label><input type="checkbox" name="${role} ${user.roles?seq_contains(role)?string("checked", "")}"/></label>
        </#list>
        <input type="hidden" name="userId" value="${user.id}" />
        <input type="hidden" value="${_csrf.token}" name="${_csrf}"/>
        <button type="submit">Save</button>

    </form>

</@c.page>