if( NOT TARGET Cinder-WebsocketPP )
	
  get_filename_component( CINDER_WEBSOCKETPP_INCLUDE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../websocketpp" ABSOLUTE )

	# Add OSC block as a dependency
	get_filename_component( CINDER_SSL_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../Cinder-SSL/proj/cmake" ABSOLUTE )
	find_package( Cinder-SSL REQUIRED PATHS "${CINDER_SSL_MODULE_PATH}" )
  set( Cinder-HTTP_INCLUDES ${CINDER_WEBSOCKETPP_INCLUDE_PATH} ) 

endif()
