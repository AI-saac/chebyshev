require 'test_helper'

class ChebyshevTest < Minitest::Test
  def test_main
    assert_equal "test testtest test\n", Chebyshev.expand("test/files/testfile", "test/files/test.yml")
  end
end
