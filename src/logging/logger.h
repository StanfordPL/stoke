

#ifndef __STOKE_LOGGER_H
#define __STOKE_LOGGER_H

#include <string>
#include <chrono>
#include <unistd.h>
#include <exception>

#define HOSTNAME_MAX_LEN 128

class Logger {

  public:

    Logger() {

      // log the start time
      start_time_ = get_time();      

      // get the hostname from the system
      char hostname[HOSTNAME_MAX_LEN];
      int err = gethostname(&hostname, HOSTNAME_MAX_LEN);
      if (err != 0) 
        throw runtime_exception("logger failed to get hostname; aborting");
      hostname[HOSTNAME_MAX_LEN-1] = 0;

      hostname_ = string(hostname);

      // get the repository version
      #ifndef STOKE_REPO_VERSION
        throw runtime_exception("logger failed to get version information from git"); 
      #else
        repository_version_ = string(STOKE_REPO_VERSION);
      #endif

      // make initial log entry
      log_tool_started();

        
    }

    virtual void log_tool_started() = 0;
    virtual void log_tool_ended() = 0;

  private:

    uint64_t get_time() {
        auto now = std::high_resolution_clock::now();
        return duraction_cast<nanoseconds>(now.time_since_epoch()).count();
    }

    std::string hostname_;
    std::string tool_name_;
    std::string repository_version_;

    uint64_t start_time_;
}

#endif
