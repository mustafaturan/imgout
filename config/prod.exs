use Mix.Config

config :memcache_client,
  host: System.get_env("MEMCACHE_SERVER"),
  port: (System.get_env("MEMCACHE_PORT") || "11211") |> String.to_integer,
  auth_method: :none,
  username: System.get_env("MEMCACHE_USERNAME"),
  password: System.get_env("MEMCACHE_PASSWORD"),
  pool_size: (System.get_env("MEMCACHE_POOL_SIZE") || "50") |> String.to_integer,
  pool_max_overflow: (System.get_env("MEMCACHE_POOL_MAX_OVERFLOW") || "0") |> String.to_integer

config :imgout,
  acceptors: (System.get_env("SERVER_ACCEPTORS") || "50") |> String.to_integer,
  remote_storage_url: System.get_env("REMOTE_STORAGE_URL")
