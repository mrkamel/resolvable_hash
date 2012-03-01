
require "test/unit"
require File.expand_path("../../lib/resolvable_hash", __FILE__)

class ResolvableHashTest < Test::Unit::TestCase
  def test_resolve
    rh = ResolvableHash.new

    rh["test1"] = "test2"
    rh["test2"] = "test3"
    rh["test3"] = "test4"

    assert_equal "test4", rh.resolve("test1")
    assert_equal "test3", rh.resolve("test1", 2)
  end 

  def test_resolve_all
    rh = ResolvableHash.new

    rh["test1"] = "test2"
    rh["test2"] = "test3"

    rh["test4"] = "test5"
    rh["test5"] = "test6"

    res = { "test1" => "test3", "test2" => "test3", "test4" => "test6", "test5" => "test6" }

    assert_equal res, rh.resolve_all
  end 
end

