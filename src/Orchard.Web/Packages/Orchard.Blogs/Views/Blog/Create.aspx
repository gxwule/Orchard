<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Orchard.Blogs.ViewModels.CreateBlogViewModel>" ValidateRequest="false" %>
<%@ Import Namespace="Orchard.Blogs.Extensions"%>
<%@ Import Namespace="Orchard.Security" %>
<%@ Import Namespace="Orchard.Mvc.Html" %>
<% Html.Include("AdminHead"); %>
    <h2>Create a Blog</h2>
    <p><a href="<%=Url.BlogsForAdmin() %>">Manage Blogs</a> &gt; Create a Blog</p>
    <% using (Html.BeginForm()) { %>
        <%=Html.ValidationSummary() %>
        <%=Html.EditorForModel() %>
        <fieldset><input class="button" type="submit" value="Create" /></fieldset>
    <% } %>
<% Html.Include("AdminFoot"); %>