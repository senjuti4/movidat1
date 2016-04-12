<table>
<tr>
<th>Title</th>
<th>Text</th>
<th colspan="2"></th>
</tr>

<% @movies.each do |movie| %>
  <tr>
  <td><%= movie.title %></td>
  <td><%= movie.text %></td>
  <td><%= link_to 'Show', movie_path(movie) %></td>
  <td><%= link_to 'Edit', edit_movie_path(movie) %></td>
  </tr>
  <% end %>
  </table>
