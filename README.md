
# ResolvableHash

Resolve references within a hash

<pre>
>> resolvable_hash = ResolvableHash.new
=> {}
>> resolvable_hash[:test1] = :test2
=> :test2
>> resolvable_hash[:test2] = :test3
=> :test3
>> resolvable_hash.resolve_all
=> {:test1=>:test3, :test2=>:test3}
</pre>

