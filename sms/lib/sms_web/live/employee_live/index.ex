defmodule SmsWeb.EmployeeLive.Index do
  use SmsWeb, :live_view

  alias Sms.HumanResources

  @impl true
  def mount(_params, _session, socket) do
    {:ok, stream(socket, :employees, HumanResources.list_employees())}
  end

end
