This repo reproduces a bug in ruby-pg version 1.3.0+ and validates a proposed fix

To run this you need docker. Run the following commands
```
git clone https://github.com/drdrsh/ruby-pg-report0.git 
cd ruby-pg-report0
./run.sh
```

Expected output is

```
ruby-pg-report0-ruby_pg_123-1      | [1.2.3 Response] [{"user_id"=>"1", "username"=>"™™™™™™"}, {"user_id"=>"2", "username"=>"™™™™™™"}]
ruby-pg-report0-ruby_pg_153-1      | [1.5.3 Response] [{"user_id"=>"1", "username"=>"\xE2\x84\xA2\xE2\x84\xA2\xE2\x84\xA2\xE2\x84\xA2\xE2\x84\xA2\xE2\x84\xA2"}, {"user_id"=>"2", "username"=>"\xE2\x84\xA2\xE2\x84\xA2\xE2\x84\xA2\xE2\x84\xA2\xE2\x84\xA2\xE2\x84\xA2"}]
ruby-pg-report0-ruby_pg_153_fix-1  | [1.5.3-fix Response] [{"user_id"=>"1", "username"=>"™™™™™™"}, {"user_id"=>"2", "username"=>"™™™™™™"}]
```
