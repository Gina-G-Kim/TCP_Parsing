# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.6)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.20)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget PcapPlusPlus::light_pcapng PcapPlusPlus::Packet++ PcapPlusPlus::Pcap++ PcapPlusPlus::Common++ PcapPlusPlus::Arping PcapPlusPlus::ArpSpoofing PcapPlusPlus::DNSResolver PcapPlusPlus::DnsSpoofing PcapPlusPlus::HttpAnalyzer PcapPlusPlus::IcmpFileTransfer-catcher PcapPlusPlus::IcmpFileTransfer-pitcher PcapPlusPlus::IPDefragUtil PcapPlusPlus::IPFragUtil PcapPlusPlus::benchmark PcapPlusPlus::PcapPrinter PcapPlusPlus::PcapSearch PcapPlusPlus::PcapSplitter PcapPlusPlus::SSLAnalyzer PcapPlusPlus::TcpReassembly PcapPlusPlus::TLSFingerprinting)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target PcapPlusPlus::light_pcapng
add_library(PcapPlusPlus::light_pcapng INTERFACE IMPORTED)

set_target_properties(PcapPlusPlus::light_pcapng PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "UNIVERSAL"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
)

# Create imported target PcapPlusPlus::Packet++
add_library(PcapPlusPlus::Packet++ STATIC IMPORTED)

set_target_properties(PcapPlusPlus::Packet++ PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/pcapplusplus"
  INTERFACE_LINK_LIBRARIES "PcapPlusPlus::Common++"
)

# Create imported target PcapPlusPlus::Pcap++
add_library(PcapPlusPlus::Pcap++ STATIC IMPORTED)

set_target_properties(PcapPlusPlus::Pcap++ PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/pcapplusplus"
  INTERFACE_LINK_LIBRARIES "PcapPlusPlus::Common++;PcapPlusPlus::Packet++;\$<\$<BOOL:OFF>:PF_RING::PF_RING>;\$<\$<BOOL:OFF>:DPDK::DPDK>;PCAP::PCAP;Threads::Threads"
)

# Create imported target PcapPlusPlus::Common++
add_library(PcapPlusPlus::Common++ STATIC IMPORTED)

set_target_properties(PcapPlusPlus::Common++ PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/pcapplusplus"
)

# Create imported target PcapPlusPlus::Arping
add_executable(PcapPlusPlus::Arping IMPORTED)

# Create imported target PcapPlusPlus::ArpSpoofing
add_executable(PcapPlusPlus::ArpSpoofing IMPORTED)

# Create imported target PcapPlusPlus::DNSResolver
add_executable(PcapPlusPlus::DNSResolver IMPORTED)

# Create imported target PcapPlusPlus::DnsSpoofing
add_executable(PcapPlusPlus::DnsSpoofing IMPORTED)

# Create imported target PcapPlusPlus::HttpAnalyzer
add_executable(PcapPlusPlus::HttpAnalyzer IMPORTED)

# Create imported target PcapPlusPlus::IcmpFileTransfer-catcher
add_executable(PcapPlusPlus::IcmpFileTransfer-catcher IMPORTED)

# Create imported target PcapPlusPlus::IcmpFileTransfer-pitcher
add_executable(PcapPlusPlus::IcmpFileTransfer-pitcher IMPORTED)

# Create imported target PcapPlusPlus::IPDefragUtil
add_executable(PcapPlusPlus::IPDefragUtil IMPORTED)

# Create imported target PcapPlusPlus::IPFragUtil
add_executable(PcapPlusPlus::IPFragUtil IMPORTED)

# Create imported target PcapPlusPlus::benchmark
add_executable(PcapPlusPlus::benchmark IMPORTED)

# Create imported target PcapPlusPlus::PcapPrinter
add_executable(PcapPlusPlus::PcapPrinter IMPORTED)

# Create imported target PcapPlusPlus::PcapSearch
add_executable(PcapPlusPlus::PcapSearch IMPORTED)

# Create imported target PcapPlusPlus::PcapSplitter
add_executable(PcapPlusPlus::PcapSplitter IMPORTED)

# Create imported target PcapPlusPlus::SSLAnalyzer
add_executable(PcapPlusPlus::SSLAnalyzer IMPORTED)

# Create imported target PcapPlusPlus::TcpReassembly
add_executable(PcapPlusPlus::TcpReassembly IMPORTED)

# Create imported target PcapPlusPlus::TLSFingerprinting
add_executable(PcapPlusPlus::TLSFingerprinting IMPORTED)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/PcapPlusPlusTargets-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)