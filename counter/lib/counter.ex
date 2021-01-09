defmodule Counter do
  def start(initial_count) do
    spawn(fn() -> Counter.Server.run(initial_count) end)
  end

  def tick(pid) do
    send(pid, {:tick, self()})
  end
end
