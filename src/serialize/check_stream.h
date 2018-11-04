#ifndef STOKE_SRC_SERIALIZE_CHECK_STREAM_H
#define STOKE_SRC_SERIALIZE_CHECK_STREAM_H

#define CHECK_STREAM(is) { if(is.bad() || is.fail()) { \
                            std::cerr << "parsing failure at "        \
                                      << __FILE__ << ":" << __LINE__  \
                                      << std::endl;                   \
                            exit(1);                                  \
                          } else {                                    \
                            is >> std::dec;                           \
                          } }

#define CHECK_STREAM_RET(is) { if(is.bad() || is.fail()) { \
                            std::cerr << "parsing failure at "        \
                                      << __FILE__ << ":" << __LINE__  \
                                      << std::endl;                   \
                            return(is);                               \
                          } else {                                    \
                            is >> std::dec;                           \
                          } }

#define CHECK_STREAM_RET_VOID(is) { if(is.bad() || is.fail()) { \
                            std::cerr << "parsing failure at "        \
                                      << __FILE__ << ":" << __LINE__  \
                                      << std::endl;                   \
                            return;                                   \
                          } else {                                    \
                            is >> std::dec;                           \
                          } }

#endif
