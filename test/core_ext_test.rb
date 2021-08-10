require 'test_helper'

class CoreExtTest < ActiveSupport::TestCase
  def test_declared_method_gives_a_symbolized_hash
    expected = { a: 1, b: 2, c: 3 }
    p = Person.create data: expected

    assert_equal expected, p.reload.data

    q = Person.create data: { 'a' => 1, 'b' => 2 , 'c' => 3 }

    assert_equal expected, q.data

    r = Person.new data: expected

    assert_equal expected, r.data
  end
end
