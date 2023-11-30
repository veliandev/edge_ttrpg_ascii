defmodule TTRPG.Application do
  use Application

  def start(_, _) do
    Supervisor.start_link(children(), strategy: :one_for_one, name: TTRPG.Supervisor)
  end

  def children() do
    [
      {
        Ratatouille.Runtime.Supervisor,
        runtime: [app: TTRPG.App]
      }
    ]
  end
end
