<h2>Assign <%= @brand.logo %></h2>

<form action="/brand/store/assign/<%= @brand_id %>" method="post">
  <label for="store_id">Select a Brand</label>
  <br>
  <input name="_method" type="hidden" value="#{<%= @brand.id %>}">
  <select id='store_id' name='store_id' type='text'>
    # <% @stores.each()  do |store| %>
    #   <option value="<%= store.id()%>"> <%= store.name() %> </option>
    # <% end %>
  </select>
  <br>

  <button class="btn btn-success" type="submit">Add brand</button>
</form>

<br>
<h3>View all recipes that include this ingredient</h3>
<ul>
  <% @ingredient.recipes.each do |recipe| %>
    <h5> <%= recipe.name %></a></h5>
  <% end %>
</ul>
