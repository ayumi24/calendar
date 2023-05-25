#ブラウザ上の左上時間表示をデフォルトで非表示にする
Rack::MiniProfiler.config.start_hidden = true

if defined?(Rack::MiniProfiler)
  Rack::MiniProfiler.config.auto_inject = false
end