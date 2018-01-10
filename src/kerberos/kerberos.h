
#include <cstdlib>
#include <iostream>

namespace stoke {

/** On kerberos systems with AFS, we have problems where we loose permissions during
  long-running jobs.  If we run these commands before any file I/O, the risk of this
  is much less. */

void renew_kerberos_permissions() {

#ifdef STOKE_ENABLE_KERBEROS_RENEW

  /* Renew ticket granting ticket */
  auto code = system("kinit -R");
  if (code) {
    std::cerr << "kinit -R failed" << std::endl;
  }

  /* Renew AFS ticket */
  code = system("aklog");
  if (code) {
    std::cerr << "aklog failed" << std::endl;
  }

#endif

}

}
