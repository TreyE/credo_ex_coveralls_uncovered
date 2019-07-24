defmodule Credo.Tasks.StopCoverageService do
  use Credo.Execution.Task

  def call(exec, _opts) do
    Credo.Service.ExcoverallsMissingCoverage.stop()
    exec
  end

end
