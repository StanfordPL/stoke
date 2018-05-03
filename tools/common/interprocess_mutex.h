
#include <pthread.h>
#include <exception>

#ifndef STOKE_TOOLS_COMMON_MUTEX_H
#define STOKE_TOOLS_COMMON_MUTEX_H

namespace stoke {

struct ThreadException : public std::exception
{
   std::string s;
   ThreadException(std::string ss) : s(ss) {}
   ~ThreadException() throw () {} // Updated
   const char* what() const throw() { return s.c_str(); }
};

class InterprocessMutex {
private:
    pthread_mutex_t mutex_;

public:
    InterprocessMutex(const InterprocessMutex& other) = delete;

    InterprocessMutex(bool recursive =false);
    virtual ~InterprocessMutex();

    void lock();
    void unlock();
    bool tryLock();
};

InterprocessMutex::InterprocessMutex(bool recursive)
{
    pthread_mutexattr_t attr;
    ::pthread_mutexattr_init(&attr);
    ::pthread_mutexattr_setpshared(&attr, PTHREAD_PROCESS_SHARED);
    ::pthread_mutexattr_settype(&attr, recursive ? PTHREAD_MUTEX_RECURSIVE_NP : PTHREAD_MUTEX_FAST_NP);

    if (::pthread_mutex_init(&mutex_, &attr) == -1) {
        throw ThreadException("Unable to create mutex");
    }
}

InterprocessMutex::~InterprocessMutex()
{
    ::pthread_mutex_destroy(&mutex_);
}

void InterprocessMutex::lock()
{
    if (::pthread_mutex_lock(&mutex_) != 0) {
        throw ThreadException("Unable to lock mutex");
    }
}

void InterprocessMutex::unlock()
{
    if (::pthread_mutex_unlock(&mutex_) != 0) {
        throw ThreadException("Unable to unlock mutex");
    }
}

bool InterprocessMutex::tryLock()
{
    int tryResult = ::pthread_mutex_trylock(&mutex_);
    if (tryResult != 0) {
        if (EBUSY == tryResult) return false;
        throw ThreadException("Unable to lock mutex");
    }
    return true;
}

}

#endif
