defmodule BosCLI.Main do
  use Nexus

  defcommand(:broker, type: :null, doc: "broker subcommands.") do
    defcommand(:start, default: "", doc: "start a broker in the foreground.")
    defcommand(:stop, default: "", doc: "stop a running broker.")
    defcommand(:join, default: "", doc: "join a cluster of brokers.")

    defcommand(:leave, default: "", doc: "leave the current cluster of brokers.")

    defcommand(:status, default: "", doc: "display the status of the broker.")
  end

  defcommand(:cluster, type: :null, doc: "cluster subcommands.") do
    defcommand(:status, default: "", doc: "display the status of the cluster.")
  end

  defcommand(:help, type: :null, doc: "Prints this help message.")

  @impl Nexus.CLI
  def version, do: "0.0.1"

  @impl Nexus.CLI
  def banner, do: "universal cli for bos"

  @impl Nexus.CLI
  def handle_input(:broker, %{value: value, subcommand: :start}) do
    IO.puts("TODO 'broker start'")
    IO.inspect(value, label: :value)
    :ok
  end

  def handle_input(:broker, %{value: value, subcommand: :stop}) do
    IO.puts("TODO 'broker stop'")
    IO.inspect(value, label: :value)
    System.halt(0)
    :ok
  end

  def handle_input(:broker, args) do
    IO.puts("TODO 'broker catch all'")
    IO.inspect(args, label: :args)
    System.halt(0)
    :ok
  end

  # def handle_input(:help, _args) do
  #   __MODULE__
  #   |> Nexus.help()
  #   |> IO.puts()
  # end

  # @impl Nexus.CLI
  # def handle_input(:help) do
  #   IO.puts(Nexus.help(__MODULE__))
  #   System.halt(0)
  #   :ok
  # end
  #
  # def handle_input(catch_all) do
  #   IO.puts("CATCH all/1: #{inspect(catch_all)}")
  #   System.halt(0)
  #   :ok
  # end

  Nexus.help()
  Nexus.parse()
end

# defmodule BosCLI.Main do
#   use Clide
#
#   defcommand :main do
#     doc("TODO#broker...")
#     delegate("broker start")
#   end
#
#   defcommand "broker" do
#     doc("TODO#broker...")
#     help("TODO#broker help...")
#
#     defcommand "init" do
#       doc("TODO#broker init...")
#       help("TODO#broker init help...")
#     end
#
#     defcommand "start" do
#       doc("TODO#broker start...")
#       help("TODO#broker start help...")
#
#       # arg "cluster", type: {:list, Clide.URI}
#       # opt "cluster", type: {:list, Clide.URI}, required: false, default: nil
#       opt "cluster", type: {:list, Clide.URI}, required: false
#     end
#
#     defcommand "stop" do
#       doc("TODO#broker stop...")
#       help("TODO#broker stop help...")
#
#       arg "endpoint", type: Clide.URI
#     end
#
#     defcommand "join" do
#       doc("TODO#broker join...")
#       help("TODO#broker join help...")
#
#       arg "endpoint", type: Clide.URI
#     end
#
#     defcommand "leave" do
#       doc("TODO#broker leave...")
#       help("TODO#broker leave help...")
#     end
#
#     defcommand "status" do
#       doc("TODO#broker status...")
#       help("TODO#broker status help...")
#     end
#   end
#
#   defcommand "cluster" do
#     doc("TODO#cluster...")
#     help("TODO#cluster help...")
#
#     defcommand "status" do
#       doc("TODO#cluster status...")
#       help("TODO#cluster status help...")
#     end
#   end
#
#   defcommand "console" do
#     doc("TODO#console...")
#     help("TODO#console help...")
#
#     defcommand "start" do
#       doc("TODO#console start...")
#       help("TODO#console start help...")
#     end
#
#     defcommand "stop" do
#       doc("TODO#console stop...")
#       help("TODO#console stop help...")
#     end
#   end
#
#   defcommand "produce" do
#     doc("TODO#produce...")
#     help("TODO#produce help...")
#   end
#
#   defcommand "consume" do
#     doc("TODO#consume...")
#     help("TODO#consume help...")
#   end
# end
