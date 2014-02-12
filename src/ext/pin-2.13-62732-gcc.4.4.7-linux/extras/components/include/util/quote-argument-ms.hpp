/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2013 Intel Corporation. All rights reserved.
 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
// <ORIGINAL-AUTHOR>: Greg Lueck
// <COMPONENT>: util
// <FILE-TYPE>: component public header

#ifndef UTIL_QUOTE_ARGUMENT_MS_HPP
#define UTIL_QUOTE_ARGUMENT_MS_HPP


namespace UTIL {

/*!
 * This is a base class.  Use QUOTE_ARGUMENT_MS or QUOTE_ARGUMENT_MS_WIDE.
 */
template <typename T> class /*<UTILITY>*/ QUOTE_ARGUMENT_MS_BASE
{
private:
    typedef std::basic_string<T> STRING;
    STRING _quoted;

protected:
    /*!
     * @param[in] arg           The string that needs to be quoted.
     * @param[in] whitespace    The set of characters that are considered whitespace.
     */
    QUOTE_ARGUMENT_MS_BASE(const STRING &arg, const T *whitespace)
    {
        // Quoting is only necessary if the argument contains whitespace or a quote (").
        //
        _quoted = arg;
        if (_quoted.find_first_of(whitespace) != STRING::npos ||
            _quoted.find_first_of('"') != STRING::npos)
        {
            EscapeBackSlashes();
            EscapeQuotes();
            AddQuotes(whitespace);
        }
    }

    /*!
     * @return  The quoted string.
     */
    STRING Get()   {return _quoted;}

private:
    /*!
     * Add escaping to each sequence of backslashes that immediately precedes
     * a quote character.  Each backslash in such a sequence must be escaped
     * with another backslash.  Note that backslashes that are not part of a
     * sequence that immediately precedes a quote are NOT escaped.  E.g.:
     *
     *  \a" -> \a"
     *  foo\bar"baz\\"fum -> foo\bar"baz\\\\"fum
     */
    void EscapeBackSlashes()
    {
        size_t quote = _quoted.find_first_of('"', 1);
        while (quote != STRING::npos)
        {
            size_t numSlashes = 0;
            size_t notSlash = _quoted.find_last_not_of('\\', quote-1);
            if (notSlash != quote-1)
            {
                if (notSlash == STRING::npos)
                    numSlashes = quote;
                else
                    numSlashes = quote - notSlash - 1;
                _quoted.insert(quote, numSlashes, '\\');
            }
            quote = _quoted.find_first_of('"', quote + numSlashes + 1);
        }
    }

    /*!
     * Add escaping to each quote character (") by preceding it with a backslash (\).
     */
    void EscapeQuotes()
    {
        size_t quote = _quoted.find_first_of('"');
        while (quote != STRING::npos)
        {
            _quoted.insert(quote, 1, '\\');
            quote = _quoted.find_first_of('"', quote + 2);
        }
    }

    /*!
     * Add quotes around the string if it contains any whitespace.
     */
    void AddQuotes(const T *whitespace)
    {
        if (_quoted.find_first_of(whitespace) != STRING::npos)
        {
            _quoted.insert(0, 1, '"');
            _quoted.append(1, '"');

            // If the last character (prior to adding the quotes) was a backslash,
            // it needs to be escaped now because it precedes a quote.
            //
            size_t quote = _quoted.size() - 1;
            if (_quoted[quote-1] == '\\')
            {
                size_t notSlash = _quoted.find_last_not_of('\\', quote-2);
                size_t numSlashes = quote - notSlash - 1;
                _quoted.insert(quote, numSlashes, '\\');
            }
        }
    }
};


/*!
 * Utility that adds quoting to a string that is necessary in order to pass it
 * as an argument to a C/C++ program on Microsoft Windows.  The quoting handles
 * internal spaces, embedded quote characters, etc.
 */
class /*<UTILITY>*/ QUOTE_ARGUMENT_MS : private QUOTE_ARGUMENT_MS_BASE<char>
{
public:
    /*!
     * @param[in] arg           The string that needs to be quoted.
     * @param[in] whitespace    The set of characters that are considered whitespace.
     */
    QUOTE_ARGUMENT_MS(std::string str, const char *ws = " \t") : QUOTE_ARGUMENT_MS_BASE<char>(str, ws) {}

    /*!
     * @return  The quoted string.
     */
    std::string Get() {return QUOTE_ARGUMENT_MS_BASE<char>::Get();}
};


// In Android ndk7 wstring is not defined. We may be able to remove this when we will build with newer versions of the NDK.
# if !defined(FUND_TARGET_ANDROID)

/*!
 * A wide-character version of QUOTE_ARGUMENT_MS.  Adds quoting to a string, allowing
 * it to be passed as an argument to a C/C++ program on Microsoft Windows.
 */
class /*<UTILITY>*/ QUOTE_ARGUMENT_MS_WIDE : private QUOTE_ARGUMENT_MS_BASE<wchar_t>
{
public:
    /*!
     * @param[in] arg           The string that needs to be quoted.
     * @param[in] whitespace    The set of characters that are considered whitespace.
     */
    QUOTE_ARGUMENT_MS_WIDE(std::wstring str, const wchar_t *ws = L" \t") : QUOTE_ARGUMENT_MS_BASE<wchar_t>(str, ws) {}

    /*!
     * @return  The quoted string.
     */
    std::wstring Get() {return QUOTE_ARGUMENT_MS_BASE<wchar_t>::Get();}
};

#endif

} // namespace
#endif // file guard
