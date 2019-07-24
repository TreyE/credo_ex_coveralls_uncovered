defmodule Credo.Tasks.StartCoverageService do
  use Credo.Execution.Task

  def call(exec, _opts) do
    Credo.Service.ExcoverallsMissingCoverage.start_link()
    exec
  end

end
