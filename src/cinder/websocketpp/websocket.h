//
//  websocket.h
//  Test
//
//  Created by Ryan Bartley on 10/28/16.
//
//

#pragma once

#if ! defined( ASIO_STANDALONE )
#define ASIO_STANDALONE 1
#endif

#define _WEBSOCKETPP_INITIALIZER_LISTS_
#define _WEBSOCKETPP_NULLPTR_
#define _WEBSOCKETPP_CPP11_FUNCTIONAL_
#define _WEBSOCKETPP_CPP11_SYSTEM_ERROR_
#define _WEBSOCKETPP_CPP11_MEMORY_
#define _WEBSOCKETPP_CPP11_THREAD_
#define _WEBSOCKETPP_CPP11_RANDOM_DEVICE_
#define _WEBSOCKETPP_CPP11_TYPE_TRAITS_
#define _WEBSOCKETPP_CPP11_CHRONO_
#define _WEBSOCKETPP_CPP11_FUNCTIONAL_

#include "websocketpp/config/asio_client.hpp"
#include "websocketpp/client.hpp"

namespace cinder {
namespace websocket {
	using client_ssl = websocketpp::client<::websocketpp::config::asio_tls_client>;
	using client = websocketpp::client<::websocketpp::config::asio_client>;
}
}