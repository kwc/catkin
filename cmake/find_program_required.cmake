function(find_program_required ARG_VAR ARG_PROGRAM_NAME)
  parse_arguments(ARG "PATHS" "" ${ARGN})
  find_program(${ARG_VAR} ${ARG_PROGRAM_NAME} PATHS ${ARG_PATHS})
  if(NOT ${ARG_VAR})
    message(FATAL_ERROR "${ARG_PROGRAM_NAME} not found")
  else()
    log(1 "${ARG_PROGRAM_NAME} was found at ${${ARG_VAR}}")
  endif()
endfunction()

