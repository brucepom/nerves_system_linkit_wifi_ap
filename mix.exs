defmodule NervesSystemLinkitWifiAp.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_linkit_wifi_ap,
     version: @version,
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_package],
     description: description(),
     package: package(),
     deps: deps(),
     aliases: ["deps.precompile": ["nerves.env", "deps.precompile"]]]
  end

  def application do
    []
  end

  defp deps do
    [{:nerves, "~> 0.4"},
     {:nerves_system_br, "~> 0.9.4"},
     {:nerves_toolchain_mipsel_unknown_linux_musl, "~> 0.10.0"}]
  end

  defp description do
    """
    Nerves System - LinkIt Smart with WIFI AP Mode
    """
  end

  defp package do
    [maintainers: ["Bruce Pomeroy"],
     files: ["rootfs-additions", "LICENSE", "mix.exs", "nerves_defconfig",
       "nerves.exs", "README.md", "VERSION", "rootfs-additions", "Config.in",
       "external.mk", "package", "post-createfs.sh", "fwup.conf", "linux-4.4",
       "busybox.config", "linux-backports.defconfig"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/brucepom/nerves_system_linkit_wifi_ap"}]
  end
end
