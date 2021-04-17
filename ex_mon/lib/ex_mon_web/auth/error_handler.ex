defmodule ExMonWeb.Auth.ErrorHandler do
  import Plug.Conn

  @behaviour ExMonWeb.Plug.ErrorHandler

  def auth_error(conn, {type, _reason}, _opts) do
    body = Jason.encode!(%{message: to_string(type)})
    send_resp(conn, 401, body)
  end
end
