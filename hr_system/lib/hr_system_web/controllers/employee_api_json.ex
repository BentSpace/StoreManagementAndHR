defmodule HrSystemWeb.EmployeeApiJSON do

  def index(%{employees: employees}) do
    %{data:
      for(employee <- employees) do
        %{employee_id: employee.employee_id,
        last_name: employee.last_name,
        first_name: employee.first_name,
        date_of_hire: employee.date_of_hire,
        department: employee.department}
      end
    }
  end
end
