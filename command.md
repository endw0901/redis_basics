* コマンド

https://www.udemy.com/course/redis-bootcamp-for-beginners/learn/lecture/14381726

Keys Command Cheat Sheet


· Set Key value

· Get Key

· DEL key1 key2 key3 (To delete a key).

· EXISTS key1 key2 (To check a key exist or not).

· TTL key  (To check time to live).

· EXPIRE key 10(in seconds).

· PTTL mykey (to check time in millisecond).

· PEXPIRE mykey 1500 (Time in Milliseconds).

· PERSIST mykey (Remove EXPIRATION from the key)

· KEYS a?? (Returns all keys matching pattern)


· RANDOMKEY (Return a random key from the currently selected database)

· RENAME mykey myotherkey

· RENAMENX mykey myotherkey (Renames key to newkey if newkey does not yet exist)

· TOUCH key1 key2 (Alters the last access time of a key(s).

· UNLINK key1 key2 key3 (The actual removal will happen later asynchronously.)

· TYPE key1 (Return Type of Value)

· DUMP mykey (Serialize the value stored at key in a Redis-specific format)

· RESTORE mykey 0 "\n\x17\x17\x00\x00\x00\x12\x00\x00\x00\x03\x00\”

