defmodule HrSystemWeb.EmployeeApiController do
  alias HrSystem.HumanResources
  use HrSystemWeb, :controller

  def index(conn, _params) do
    employees = HumanResources.list_employees()
    render(conn, :index, employees: employees)
  end

end
