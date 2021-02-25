-define(COMMAND_DECLARE_PUBLISHER, 0).
-define(COMMAND_PUBLISH, 1).
-define(COMMAND_PUBLISH_CONFIRM, 2).
-define(COMMAND_PUBLISH_ERROR, 3).
-define(COMMAND_QUERY_PUBLISHER_SEQUENCE, 4).
-define(COMMAND_DELETE_PUBLISHER, 5).
-define(COMMAND_SUBSCRIBE, 6).
-define(COMMAND_DELIVER, 7).
-define(COMMAND_CREDIT, 8).
-define(COMMAND_COMMIT_OFFSET, 9).
-define(COMMAND_QUERY_OFFSET, 10).
-define(COMMAND_UNSUBSCRIBE, 11).
-define(COMMAND_CREATE_STREAM, 12).
-define(COMMAND_DELETE_STREAM, 13).
-define(COMMAND_METADATA, 14).
-define(COMMAND_METADATA_UPDATE, 15).
-define(COMMAND_PEER_PROPERTIES, 16).
-define(COMMAND_SASL_HANDSHAKE, 17).
-define(COMMAND_SASL_AUTHENTICATE, 18).
-define(COMMAND_TUNE, 19).
-define(COMMAND_OPEN, 20).
-define(COMMAND_CLOSE, 21).
-define(COMMAND_HEARTBEAT, 22).
-define(COMMAND_ROUTE, 23).
-define(COMMAND_PARTITIONS, 24).

-define(VERSION_0, 0).

-define(RESPONSE_CODE_OK, 0).
-define(RESPONSE_CODE_STREAM_DOES_NOT_EXIST, 1).
-define(RESPONSE_CODE_SUBSCRIPTION_ID_ALREADY_EXISTS, 2).
-define(RESPONSE_CODE_SUBSCRIPTION_ID_DOES_NOT_EXIST, 3).
-define(RESPONSE_CODE_STREAM_ALREADY_EXISTS, 4).
-define(RESPONSE_CODE_STREAM_NOT_AVAILABLE, 5).
-define(RESPONSE_SASL_MECHANISM_NOT_SUPPORTED, 6).
-define(RESPONSE_AUTHENTICATION_FAILURE, 7).
-define(RESPONSE_SASL_ERROR, 8).
-define(RESPONSE_SASL_CHALLENGE, 9).
-define(RESPONSE_SASL_AUTHENTICATION_FAILURE_LOOPBACK, 10).
-define(RESPONSE_VHOST_ACCESS_FAILURE, 11).
-define(RESPONSE_CODE_UNKNOWN_FRAME, 12).
-define(RESPONSE_CODE_FRAME_TOO_LARGE, 13).
-define(RESPONSE_CODE_INTERNAL_ERROR, 14).
-define(RESPONSE_CODE_ACCESS_REFUSED, 15).
-define(RESPONSE_CODE_PRECONDITION_FAILED, 16).
-define(RESPONSE_CODE_PUBLISHER_DOES_NOT_EXIST, 17).

-define(OFFSET_TYPE_FIRST, 0).
-define(OFFSET_TYPE_LAST, 1).
-define(OFFSET_TYPE_NEXT, 2).
-define(OFFSET_TYPE_OFFSET, 3).
-define(OFFSET_TYPE_TIMESTAMP, 4).

-define(DEFAULT_INITIAL_CREDITS, 50000).
-define(DEFAULT_CREDITS_REQUIRED_FOR_UNBLOCKING, 12500).
-define(DEFAULT_FRAME_MAX, 1048576). %% 1 MiB
-define(DEFAULT_HEARTBEAT, 60). %% 60 seconds

-define(INFO_ITEMS,
  [conn_name,
    port,
    peer_port,
    host,
    peer_host,
    user,
    vhost,
    subscriptions,
    connection_state,
    auth_mechanism,
    heartbeat,
    frame_max,
    client_properties,
    connected_at
    ]).

-define(CONSUMER_INFO_ITEMS, [
  stream,
  connection_pid,
  subscription_id,
  credits,
  messages,
  offset
  ]).

-define(PUBLISHER_INFO_ITEMS, [
  stream,
  connection_pid,
  publisher_id,
  reference,
  messages_published,
  messages_confirmed,
  messages_errored
  ]).

-define(STREAM_GUIDE_URL, <<"https://rabbitmq.com/stream.html">>).