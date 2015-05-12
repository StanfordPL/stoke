@echo off

:: Copyright (c) 2011 The Native Client Authors. All rights reserved.
:: Use of this source code is governed by a BSD-style license that can be
:: found in the LICENSE file.

setlocal

set NACL_SDK_ROOT=D:/native_client_sdk_0_5_1031

:: Set the PYTHONPATH so we can import SCons modules
set PYTHONPATH=%NACL_SDK_ROOT%\third_party\scons-2.0.1\engine

:: We have to do this because scons overrides PYTHONPATH and does not preserve
:: what is provided by the OS.  The custom variable name won't be overwritten.
set PYMOX=%NACL_SDK_ROOT%\third_party\pymox

:: Run the included copy of scons.
python -O -OO "%NACL_SDK_ROOT%\third_party\scons-2.0.1\script\scons" ^
--file=build.scons ^
--site-dir="%NACL_SDK_ROOT%\build_tools\nacl_sdk_scons" %*
