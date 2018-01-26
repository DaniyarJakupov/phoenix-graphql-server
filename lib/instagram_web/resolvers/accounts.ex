defmodule InstagramWeb.Resolvers.Accounts do
  def login(_, %{token: token, provider: provider}, _) do
    case provider do
      :facebook ->
        {:ok, user} = InstagramWeb.Authentication.login(token, "facebook")

        {:ok, token, _} = InstagramWeb.Auth.Guardian.encode_and_sign(resource)

        {:ok, %{token: token}}
  end
end