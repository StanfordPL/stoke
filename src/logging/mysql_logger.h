
#ifndef __STOKE_LOGGER_MYSQL_LOGGER_H
#define __STOKE_LOGGER_MYSQL_LOGGER_H

#include "src/logger/logger.h"

class MySQLLogger : public Logger {

  public:
    MySQLLogger() : Logger() {

    }

    void log_tool_started();

    void log_tool_ended();

}

#endif
