// Copyright 2013-2015 Stanford University
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "ppapi/cpp/instance.h"
#include "ppapi/cpp/module.h"
#include "ppapi/cpp/var.h"

#define N 20000

namespace {

// The expected string sent by the browser.
const char* const kHelloString = "hello";
// The string sent back to the browser upon receipt of a message
// containing "hello".
const char* const kReplyString = "hello from NaCl";

}  // namespace


size_t compute(size_t input) {
  size_t output = 0;
  for(size_t i = 0; i < input; ++i) {
    size_t j = i;
    while(j) {
      if(j & 1)
        output++;
      j = j >> 1;
    }
  }
  return output;
}


class HelloTutorialInstance : public pp::Instance {
public:
  explicit HelloTutorialInstance(PP_Instance instance)
    : pp::Instance(instance) {}
  virtual ~HelloTutorialInstance() {}

  virtual void HandleMessage(const pp::Var& var_message) {
    // Ignore the message if it is not a string.
    if (!var_message.is_int())
      return;

    size_t input = (size_t)var_message.AsInt();

    pp::Var var_reply((int)compute(input));
    PostMessage(var_reply);
  }

};

class HelloTutorialModule : public pp::Module {
public:
  HelloTutorialModule() : pp::Module() {}
  virtual ~HelloTutorialModule() {}

  virtual pp::Instance* CreateInstance(PP_Instance instance) {
    return new HelloTutorialInstance(instance);
  }
};

namespace pp {

Module* CreateModule() {
  return new HelloTutorialModule();
}

}  // namespace pp



