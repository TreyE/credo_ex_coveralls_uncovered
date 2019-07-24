defmodule CredoExCoverallsUncovered do
  import Credo.Plugin

  @added_config """
  %{
    configs: [
      %{
        name: "default",
        checks: [
          {Credo.Check.Warning.ExCoverallsUncovered, []}
        ]
      }
    ]
  }
  """

  def init(exec) do
    exec
      |> append_task(:initialize_plugins, Credo.Tasks.StartCoverageService)
      |> append_task(:halt_execution, Credo.Tasks.StopCoverageService)
      |> register_default_config(@added_config)
  end
end
