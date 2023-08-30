docker compose down -v
docker compose up -d
docker compose logs --follow ruby_pg_123 ruby_pg_153 ruby_pg_153_fix | grep "Response"

