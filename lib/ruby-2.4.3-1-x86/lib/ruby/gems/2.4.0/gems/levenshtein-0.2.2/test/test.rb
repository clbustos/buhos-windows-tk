#!/usr/bin/env ruby
# encoding: UTF-8

require "test/unit"
require "levenshtein"

module Levenshtein
  class TestSequence
    def initialize(o)
      @sequence	= o
    end
  
    def each
      @sequence.length.times do |pos|
        yield(@sequence[pos])
      end
    end
  end
  
  class TestElement
    attr_reader :object

    def initialize(o)
      @object	= o
    end

    def hash
      @object.hash
    end
 
    def eql?(other)
      @object.eql?(other.object)
    end
  end
end

class TestLevenshtein < Test::Unit::TestCase
  def test_erik_veenstra
    assert_equal(7, Levenshtein.distance("erik", "veenstra"))
    assert_equal(7, Levenshtein.distance("veenstra", "erik"))

    assert_in_delta(0.875, Levenshtein.normalized_distance("erik", "veenstra"), 0.01)
    assert_in_delta(0.875, Levenshtein.normalized_distance("veenstra", "erik"), 0.01)
  end

  def test_empty_string
    assert_equal(0, Levenshtein.distance("", ""))
    assert_equal(3, Levenshtein.distance("", "foo"))
    assert_equal(3, Levenshtein.distance("foo", ""))

    assert_in_delta(0.0, Levenshtein.normalized_distance("", ""), 0.01)
    assert_in_delta(1.0, Levenshtein.normalized_distance("", "foo"), 0.01)
    assert_in_delta(1.0, Levenshtein.normalized_distance("foo", ""), 0.01)
  end

  def test_same_string
    assert_equal(0, Levenshtein.distance("", ""))
    assert_equal(0, Levenshtein.distance("foo", "foo"))

    assert_in_delta(0.0, Levenshtein.normalized_distance("", ""), 0.01)
    assert_in_delta(0.0, Levenshtein.normalized_distance("foo", "foo"), 0.01)
  end

  def test_threshold
    assert_equal(3, Levenshtein.distance("foo", "foobar"))
    assert_equal(3, Levenshtein.distance("foo", "foobar", 4))
    assert_equal(nil, Levenshtein.distance("foo", "foobar", 2))

    assert_in_delta(0.5, Levenshtein.normalized_distance("foo", "foobar"), 0.01)
    assert_in_delta(0.5, Levenshtein.normalized_distance("foo", "foobar", 0.66), 0.01)
    assert_equal(nil, Levenshtein.normalized_distance("foo", "foobar", 0.30))
  end

  def test_same_head_and_or_tail
    assert_equal(3, Levenshtein.distance("ab123cd", "abxyzcd"))
    assert_equal(3, Levenshtein.distance("ab123", "abxyz"))
    assert_equal(3, Levenshtein.distance("123cd", "xyzcd"))
    assert_equal(5, Levenshtein.distance("123cd123", "123"))

    assert_in_delta(0.42, Levenshtein.normalized_distance("ab123cd", "abxyzcd"), 0.01)
    assert_in_delta(0.6, Levenshtein.normalized_distance("ab123", "abxyz"), 0.01)
    assert_in_delta(0.6, Levenshtein.normalized_distance("123cd", "xyzcd"), 0.01)
    assert_in_delta(0.625, Levenshtein.normalized_distance("123cd123", "123"), 0.01)
  end

  def test_interface
    seq1	= Levenshtein::TestSequence.new("erik".scan(/./).collect{|e| Levenshtein::TestElement.new(e)})
    seq2	= Levenshtein::TestSequence.new("veenstra".scan(/./).collect{|e| Levenshtein::TestElement.new(e)})

    assert_equal(7, Levenshtein.distance(seq1, seq2))
  end
end

class TestLevenshteinFast < Test::Unit::TestCase
  def test_erik_veenstra
    assert_equal(7, Levenshtein.distance("erik", "veenstra", nil, :force_slow=>false))
    assert_equal(7, Levenshtein.distance("veenstra", "erik", nil, :force_slow=>false))
  end

  def test_empty_string
    assert_equal(0, Levenshtein.distance("", "", nil, :force_slow=>false))
    assert_equal(3, Levenshtein.distance("", "foo", nil, :force_slow=>false))
    assert_equal(3, Levenshtein.distance("foo", "", nil, :force_slow=>false))
  end

  def test_same_string
    assert_equal(0, Levenshtein.distance("", "", nil, :force_slow=>false))
    assert_equal(0, Levenshtein.distance("foo", "foo", nil, :force_slow=>false))
  end

  def test_threshold
    assert_equal(3, Levenshtein.distance("foo", "foobar", nil, :force_slow=>false))
    assert_equal(3, Levenshtein.distance("foo", "foobar", 4, :force_slow=>false))
    assert_equal(nil, Levenshtein.distance("foo", "foobar", 2, :force_slow=>false))
  end

  def test_same_head_and_or_tail
    assert_equal(3, Levenshtein.distance("ab123cd", "abxyzcd", nil, :force_slow=>false))
    assert_equal(3, Levenshtein.distance("ab123", "abxyz", nil, :force_slow=>false))
    assert_equal(3, Levenshtein.distance("123cd", "xyzcd", nil, :force_slow=>false))
    assert_equal(5, Levenshtein.distance("123cd123", "123", nil, :force_slow=>false))
  end
end

class TestLevenshteinSlow < Test::Unit::TestCase
  def test_erik_veenstra
    assert_equal(7, Levenshtein.distance("erik", "veenstra", nil, :force_slow=>true))
    assert_equal(7, Levenshtein.distance("veenstra", "erik", nil, :force_slow=>true))
  end

  def test_empty_string
    assert_equal(0, Levenshtein.distance("", "", nil, :force_slow=>true))
    assert_equal(3, Levenshtein.distance("", "foo", nil, :force_slow=>true))
    assert_equal(3, Levenshtein.distance("foo", "", nil, :force_slow=>true))
  end

  def test_same_string
    assert_equal(0, Levenshtein.distance("", "", nil, :force_slow=>true))
    assert_equal(0, Levenshtein.distance("foo", "foo", nil, :force_slow=>true))
  end

  def test_threshold
    assert_equal(3, Levenshtein.distance("foo", "foobar", nil, :force_slow=>true))
    assert_equal(3, Levenshtein.distance("foo", "foobar", 4, :force_slow=>true))
    assert_equal(nil, Levenshtein.distance("foo", "foobar", 2, :force_slow=>true))
  end

  def test_same_head_and_or_tail
    assert_equal(3, Levenshtein.distance("ab123cd", "abxyzcd", nil, :force_slow=>true))
    assert_equal(3, Levenshtein.distance("ab123", "abxyz", nil, :force_slow=>true))
    assert_equal(3, Levenshtein.distance("123cd", "xyzcd", nil, :force_slow=>true))
    assert_equal(5, Levenshtein.distance("123cd123", "123", nil, :force_slow=>true))
  end
end
