require 'pg'

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

conn_path = "postgres://postgres:postgres@0.0.0.0:6432/test_db"
Thread.new do
  conn0 = PG.connect(conn_path)
  conn0.async_exec("SELECT pg_sleep(2)")
  conn0.close
end
sleep(1)
conn = PG.connect(conn_path)
sleep(1.5)
puts "[#{PG::VERSION} Response] " + conn.async_exec("SELECT * FROM accounts").to_a.inspect
