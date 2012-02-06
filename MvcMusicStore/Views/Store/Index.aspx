<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcMusicStore.ViewModels.StoreIndexViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Store Genres
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Browse Genres</h2>
    <p>Select from <%: Model.NumberOfGenres %> genres:</p>
    <ul>
    <% foreach (string genreName in Model.Genres) { %>
    <li>
    <a href= "/Store/Browse?genre=<%: genreName %>"><%: genreName %></a>
    </li>
    <% } %>
    </ul>
</asp:Content>

