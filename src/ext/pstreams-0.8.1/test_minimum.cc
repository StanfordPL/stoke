#include "pstream.h"

#include <iostream>

// TODO   abstract process creation and control to a process class.

template class redi::basic_pstreambuf<char>;
template class redi::pstream_common<char>;
template class redi::basic_pstream<char>;
template class redi::basic_ipstream<char>;
template class redi::basic_opstream<char>;
template class redi::basic_rpstream<char>;

int main()
{
    using namespace redi;

    char c;
    ipstream who("id -un");
    if (!(who >> c))
        return 1;

    redi::opstream cat("cat");
    if (!(cat << c))
        return 2;

    while (who >> c)
        cat << c;

    cat << '\n' << peof;

    pstream fail("ghghghg", pstreambuf::pstderr);
    std::string s;
    if (!std::getline(fail, s))
        return 3;
    std::cerr << s << '\n';
    
    rpstream who2("id -un");
    if (!(who2.out() >> c))
        return 4;
}

