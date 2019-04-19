log_level = "info"
reload_signal = "SIGHUP"
kill_signal = "SIGTERM"
max_stale = "30s"

wait {
  min = "1m"
  max = "5m"
}

consul {
  retry {
    enabled     = true
    attempts    = 15
    backoff     = "250ms"
    max_backoff = "10s"
  }
}

template {
	source      = "/local/in.tpl"
	destination = "/local/out.txt"
}

template {
	source      = "/local/in2.tpl"
	destination = "/local/out2.txt"
}

exec {
	command = "/local/test.sh"
}
