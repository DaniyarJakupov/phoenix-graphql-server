defmodule InstagramWeb.Resolvers.Accounts do
  def login(_, %{token: token, provider: provider}, _) do
    case provider do
      :facebook ->
        {:ok, user} = InstagramWeb.Authentication.login(token, "facebook")
  end
end