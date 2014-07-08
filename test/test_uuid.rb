require 'test_helper'
require 'torid/uuid'

module Torid
  class UUIDTest < ::Minitest::Test

    def setup
      @timestamp = 1404617330909742
      @node_id   = 42
      @bytes     = [ @timestamp >> 32, @timestamp & 0xFFFF_FFFF,
                     @node_id   >> 32, @node_id   & 0XFFFF_FFFF ].pack("NNNN")
      @guid      = "0004fd7d-f50d-e22e-0000-00000000002a"
    end

    def test_round_trips_bytes
      uuid = ::Torid::UUID.from( @bytes)
      assert_equal( @bytes, uuid.bytes )
    end

    def test_extracts_timestamp_from_bytes
      uuid = ::Torid::UUID.from( @bytes)
      assert_equal( @timestamp, uuid.timestamp )
    end

    def test_extracts_node_id_from_bytes
      uuid = ::Torid::UUID.from( @bytes)
      assert_equal( @node_id , uuid.node_id )
    end

    def test_round_trips_guid_string
      uuid = ::Torid::UUID.from( @guid )
      assert_equal( uuid.to_s, uuid.to_s )
    end

    def test_extracts_timestamp_from_guid
      uuid = ::Torid::UUID.from( @guid )
      assert_equal( @timestamp, uuid.timestamp )
    end

    def test_extracts_node_id_from_guid
      uuid = ::Torid::UUID.from( @guid )
      assert_equal( @node_id , uuid.node_id )
    end

    def test_create_from_raises_error
      assert_raises( ArgumentError ) do
        ::Torid::UUID.from( "abcdef" ) 
      end
    end

    def test_creates_a_time_from_uuid
      time = Time.at( @timestamp / 1_000_000.0 )
      uuid = ::Torid::UUID.from( @guid )
      assert_equal( time, uuid.time )
    end

  end
end
