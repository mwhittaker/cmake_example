add_executable(single_printer single_printer.cc)
target_link_libraries(single_printer printer proto protobuf)

add_executable(multi_printer multi_printer.cc)
target_link_libraries(multi_printer printer proto protobuf)
