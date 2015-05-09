  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v, @function

#! file-offset 0x30740
#! rip-offset  0x30740
#! capacity    288 bytes

# Text                                                          #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v:  #        0x30740  0      
  subl $0x18, %esp                                              #  1     0x30740  3      
  addq %r15, %rsp                                               #  2     0x30743  3      
  cmpb $0x0, 0x100005b3(%rip)                                   #  3     0x30746  7      
  je .L_30780                                                   #  4     0x3074d  6      
  xchgw %ax, %ax                                                #  5     0x30753  3      
  nop                                                           #  6     0x30756  1      
.L_30760:                                                       #        0x30757  0      
  movl 0x100005ab(%rip), %eax                                   #  7     0x30757  6      
  addl $0x18, %esp                                              #  8     0x3075d  3      
  addq %r15, %rsp                                               #  9     0x30760  3      
  popq %r11                                                     #  10    0x30763  3      
  andl $0xffffffe0, %r11d                                       #  11    0x30766  7      
  addq %r15, %r11                                               #  12    0x3076d  3      
  jmpq %r11                                                     #  13    0x30770  3      
  nop                                                           #  14    0x30773  1      
.L_30780:                                                       #        0x30774  0      
  movl $0x10030d00, %edi                                        #  15    0x30774  5      
  nop                                                           #  16    0x30779  1      
  nop                                                           #  17    0x3077a  1      
  callq .__cxa_guard_acquire                                    #  18    0x3077b  5      
  testl %eax, %eax                                              #  19    0x30780  2      
  je .L_30760                                                   #  20    0x30782  6      
  nop                                                           #  21    0x30788  1      
  nop                                                           #  22    0x30789  1      
  callq ._ZN2pp6Module3GetEv                                    #  23    0x3078a  5      
  movl %eax, %edi                                               #  24    0x3078f  2      
  movl $0x10020644, %esi                                        #  25    0x30791  5      
  nop                                                           #  26    0x30796  1      
  nop                                                           #  27    0x30797  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                 #  28    0x30798  5      
  movl $0x10030d00, %edi                                        #  29    0x3079d  5      
  movl %eax, 0x10000560(%rip)                                   #  30    0x307a2  6      
  nop                                                           #  31    0x307a8  1      
  nop                                                           #  32    0x307a9  1      
  callq .__cxa_guard_release                                    #  33    0x307aa  5      
  movl 0x10000553(%rip), %eax                                   #  34    0x307af  6      
  addl $0x18, %esp                                              #  35    0x307b5  3      
  addq %r15, %rsp                                               #  36    0x307b8  3      
  popq %r11                                                     #  37    0x307bb  3      
  andl $0xffffffe0, %r11d                                       #  38    0x307be  7      
  addq %r15, %r11                                               #  39    0x307c5  3      
  jmpq %r11                                                     #  40    0x307c8  3      
  nop                                                           #  41    0x307cb  1      
  movl $0x10030d00, %edi                                        #  42    0x307cc  5      
  movl %eax, 0x8(%rsp)                                          #  43    0x307d1  4      
  nop                                                           #  44    0x307d5  1      
  nop                                                           #  45    0x307d6  1      
  callq .__cxa_guard_abort                                      #  46    0x307d7  5      
  movl 0x8(%rsp), %eax                                          #  47    0x307dc  4      
  movl %eax, %edi                                               #  48    0x307e0  2      
  nop                                                           #  49    0x307e2  1      
  nop                                                           #  50    0x307e3  1      
  callq ._Unwind_Resume                                         #  51    0x307e4  5      
                                                                                         
.size _ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v

