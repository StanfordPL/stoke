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

#ifndef UTIL_INTEL_FP_HPP
#define UTIL_INTEL_FP_HPP

#include "fund.hpp"


namespace UTIL {

/*!
 * An 80-bit X87 data register padded out to 128-bits.
 */
union /*<POD>*/ X87REG_PADDED
{
    struct
    {
        FUND::UINT64 _significand;  ///< The floating-point significand.
        FUND::UINT16 _exponent;     ///< The floating-point exponent, top bit is the sign bit.
        FUND::UINT16 _pad[3];
    } _fp;
    struct
    {
        FUND::UINT64 _lo;           ///< Least significant part of value.
        FUND::UINT64 _hi;           ///< Most significant part of value.
    } _raw;
};

/*!
 * A 128-bit XMM register value.
 */
union /*<POD>*/ XMMREG
{
    FUND::UINT8 _vec8[16];      ///< Vector of 16 8-bit elements.
    FUND::UINT16 _vec16[8];     ///< Vector of 8 16-bit elements.
    FUND::UINT32 _vec32[4];     ///< Vector of 4 32-bit elements.
    FUND::UINT64 _vec64[2];     ///< Vector of 2 64-bit elements.
};

/*!
 * The memory format written by the FXSAVE instruction for IA32.
 */
struct /*<POD>*/ FXSAVE_IA32
{
    FUND::UINT16 _fcw;          ///< X87 control word.
    FUND::UINT16 _fsw;          ///< X87 status word.
    FUND::UINT8 _ftw;           ///< Abridged X87 tag value.
    FUND::UINT8 _pad1;
    FUND::UINT16 _fop;          ///< Last X87 non-control instruction opcode.
    FUND::UINT32 _fpuip;        ///< Last X87 non-control instruction address.
    FUND::UINT16 _cs;           ///< Last X87 non-control instruction CS selector.
    FUND::UINT16 _pad2;
    FUND::UINT32 _fpudp;        ///< Last X87 non-control instruction operand address.
    FUND::UINT16 _ds;           ///< Last X87 non-control instruction operand DS selector.
    FUND::UINT16 _pad3;
    FUND::UINT32 _mxcsr;        ///< MXCSR control and status register.
    FUND::UINT32 _mxcsrmask;    ///< Mask of valid MXCSR bits.
    X87REG_PADDED _sts[8];      ///< X87 data registers in top-of-stack order.
    XMMREG _xmms[8];            ///< XMM registers.
    FUND::UINT8 _pad4[224];
};

/*!
 * The memory format written by the FXSAVE instruction for Intel64 (default operand size).
 */
struct /*<POD>*/ FXSAVE_INTEL64_DEFAULT
{
    FUND::UINT16 _fcw;          ///< X87 control word.
    FUND::UINT16 _fsw;          ///< X87 status word.
    FUND::UINT8 _ftw;           ///< Abridged X87 tag value.
    FUND::UINT8 _pad1;
    FUND::UINT16 _fop;          ///< Last X87 non-control instruction opcode.
    FUND::UINT32 _fpuip;        ///< Last X87 non-control instruction segment offset.
    FUND::UINT16 _cs;           ///< Last X87 non-control instruction CS selector.
    FUND::UINT16 _pad2;
    FUND::UINT32 _fpudp;        ///< Last X87 non-control instruction operand segment offset.
    FUND::UINT16 _ds;           ///< Last X87 non-control instruction operand DS selector.
    FUND::UINT16 _pad3;
    FUND::UINT32 _mxcsr;        ///< MXCSR control and status register.
    FUND::UINT32 _mxcsrmask;    ///< Mask of valid MXCSR bits.
    X87REG_PADDED _sts[8];      ///< X87 data registers in top-of-stack order.
    XMMREG _xmms[16];           ///< XMM registers.
    FUND::UINT8 _pad4[96];
};

/*!
 * The memory format written by the FXSAVE instruction for Intel64 (promoted operand size).
 */
struct /*<POD>*/ FXSAVE_INTEL64_PROMOTED
{
    FUND::UINT16 _fcw;          ///< X87 control word.
    FUND::UINT16 _fsw;          ///< X87 status word.
    FUND::UINT8 _ftw;           ///< Abridged X87 tag value.
    FUND::UINT8 _pad1;
    FUND::UINT16 _fop;          ///< Last X87 non-control instruction opcode.
    FUND::UINT64 _fpuip;        ///< Last X87 non-control instruction address.
    FUND::UINT64 _fpudp;        ///< Last X87 non-control operand address.
    FUND::UINT32 _mxcsr;        ///< MXCSR control and status register.
    FUND::UINT32 _mxcsrmask;    ///< Mask of valid MXCSR bits.
    X87REG_PADDED _sts[8];      ///< X87 data registers in top-of-stack order.
    XMMREG _xmms[16];           ///< XMM registers.
    FUND::UINT8 _pad4[96];
};


/*!
 * Convert an X87 tag register value from the 16-bit full form to its 8-bit
 * abridged form (as saved by the FXSAVE instruction).
 *
 *  @param[in] fullTag      The tag value in full form.
 *
 * @return  The tag value in abridged form.
 */
inline FUND::UINT8 GetX87AbridgedTag(FUND::UINT16 fullTag)
{
    const FUND::UINT16 empty = 3;

    FUND::UINT8 tags = 0;
    FUND::UINT16 mask = 3;
    for (int i = 0;  i < 8;  i++)
    {
        FUND::UINT8 tag;
        if ((fullTag & mask) == (empty << 2*i))
            tag = 0;
        else
            tag = 1;
        tags |= (tag << i);
        mask <<= 2;
    }

    return tags;
}


/*!
 * Get the 16-bit "full form" of X87 tag register value from an FXSAVE buffer.
 *
 *  @tparam FXSAVE      One of the three FXSAVE buffer types: FXSAVE_IA32,
 *                       FXSAVE_INTEL64_DEFAULT, or FXSAVE_INTEL64_PROMOTED.
 *  @param[in] fxsave   The FXSAVE buffer data.
 */
template<typename FXSAVE> FUND::UINT16 GetX87FullTag(const FXSAVE *fxsave)
{
    // This algorithm follows the algorithm in the IA-32 Intel Architecture Software Developer's
    // Manual, Volume 2A.  See the section on the FXSAVE instruction.

    FUND::UINT16 tags = 0;
    FUND::UINT8 ftw = fxsave->_ftw;
    unsigned tos = (fxsave->_fsw >> 11) & 0x7;

    const FUND::UINT16 valid = 0;
    const FUND::UINT16 zero = 1;
    const FUND::UINT16 special = 2;
    const FUND::UINT16 empty = 3;
    const FUND::UINT64 jbit = FUND::UINT64(1) << 63;

    for (unsigned i = 0;  i < 8;  i++)
    {
        FUND::UINT16 tag;

        if (!(ftw & 1))
        {
            tag = empty;
        }
        else
        {
            // The tag bits are in physical order, but the ST registers are in top-of-stack order.  Subtract the TOS
            // base to get the corresponding ST register.
            //
            unsigned streg = (i - tos) & 0x7;
            const X87REG_PADDED *reg = &fxsave->_sts[streg];

            FUND::UINT16 exponent = reg->_fp._exponent & 0x7fff;
            if (exponent == 0x7fff)
            {
                tag = special;
            }
            else if (exponent == 0)
            {
                if (!reg->_fp._significand)
                {
                    tag = zero;
                }
                else
                {
                    tag = special;
                }
            }
            else
            {
                if (reg->_fp._significand & jbit)
                    tag = valid;
                else
                    tag = special;
            }
        }

        tags |= (tag << (2*i));
        ftw >>= 1;
    }

    return tags;
}


/*!
 * Get a simplified version of the 16-bit "full form" of the X87 tag register
 * value from the 8-bit "abridged" version.  The simplified version has the
 * 16-bit format, but each tag value is either 00B (valid) or 11B (empty).
 *
 *  @param[in] abridgedTag  The 8-bit arbidged tag value.
 *
 * @return  The simplified version of the 16-bit tag value.
 */
inline FUND::UINT16 GetSimpleX87FullTag(FUND::UINT8 abridgedTag)
{
    const FUND::UINT16 valid = 0;
    const FUND::UINT16 empty = 3;

    FUND::UINT16 tags = 0;
    for (unsigned i = 0;  i < 8;  i++)
    {
        FUND::UINT16 tag = (abridgedTag & 1) ? valid : empty;
        tags |= (tag << (2*i));
        abridgedTag >>= 1;
    }

    return tags;
}


} // namespace
#endif // file guard
