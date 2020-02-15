defmodule PlanningPokerWeb.Betting do
  use Phoenix.LiveComponent

  def render(assigns) do
    points = String.split(assigns.points, ",", trim: true)

    ~L"""
    <div class="w-full flex flex-col rounded border bg-white text-gray-900 shadow">
      <div class="m-3">
        <div class="flex flex-wrap items-center">
          <span class="border-b-2 -mx-3 px-3 pb-1 uppercase tracking-wider">Place your bet</span>
          <div class="flex w-full flex-wrap mt-3 justify-between">
            <%= for point_val <- points do %>
              <button class="btn btn-blue px-2 mb-2 mr-2 flex-grow" type="button" phx-click="bet" phx-value-bet="<%= point_val %>">
                <%= point_val %>
              </button>
            <% end %>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
