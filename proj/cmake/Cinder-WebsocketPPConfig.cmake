if( NOT TARGET Cinder-WebsocketPP )
	
  get_filename_component( BLOCKS_PATH "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE )
  get_filename_component( CINDER_PATH "${BLOCKS_PATH}/../../include" ABSOLUTE )
  get_filename_component( ASIO_PATH "${CINDER_PATH}/asio" ABSOLUTE )
  get_filename_component( WEBSOCKETPP_INCLUDE_PATH "${BLOCKS_PATH}/websocketpp" ABSOLUTE )
  get_filename_component( CINDER_WEBSOCKETPP_INCLUDE_PATH "${BLOCKS_PATH}/src" ABSOLUTE )

	# Add OSC block as a dependency
	get_filename_component( CINDER_SSL_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../Cinder-SSL/proj/cmake" ABSOLUTE )
	find_package( Cinder-SSL REQUIRED PATHS "${CINDER_SSL_MODULE_PATH}" )
  set( Cinder-WebsocketPP_INCLUDES 
    ${WEBSOCKETPP_INCLUDE_PATH} 
    ${CINDER_PATH} 
    ${ASIO_PATH} 
    ${CINDER_WEBSOCKETPP_INCLUDE_PATH}  
    ) 

endif()
