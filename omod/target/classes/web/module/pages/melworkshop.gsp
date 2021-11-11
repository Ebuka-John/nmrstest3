<% ui.decorateWith("appui", "standardEmrPage") %>

Hello, world.

<% if (context.authenticated) { %>
    And a special hello to you eddie, $context.authenticatedUser.personName.fullName.
    Your roles are:
    <% context.authenticatedUser.roles.findAll { !it.retired }.each { %>
        $it.role ($it.description)
    <% } %>
<% } else { %>
    You are not logged in Ebuka.
<% } %>

${ ui.includeFragment("melworkshop", "users") }