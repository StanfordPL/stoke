
#ifndef STOKE_TOOLS_COMMON_VERSION_INFO_H
#define STOKE_TOOLS_COMMON_VERSION_INFO_H

namespace stoke {

  const char version_info[] = {
    #include "git-version.inc"
  };

}

#endif
