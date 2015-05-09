  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v, @function

#! file-offset 0x35d00
#! rip-offset  0x35d00
#! capacity    288 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v:  #        0x35d00  0      
  subl $0x18, %esp                                                    #  1     0x35d00  3      
  addq %r15, %rsp                                                     #  2     0x35d03  3      
  cmpb $0x0, 0xfffb003(%rip)                                          #  3     0x35d06  7      
  je .L_35d40                                                         #  4     0x35d0d  6      
  xchgw %ax, %ax                                                      #  5     0x35d13  3      
  nop                                                                 #  6     0x35d16  1      
.L_35d20:                                                             #        0x35d17  0      
  movl 0xfffaffb(%rip), %eax                                          #  7     0x35d17  6      
  addl $0x18, %esp                                                    #  8     0x35d1d  3      
  addq %r15, %rsp                                                     #  9     0x35d20  3      
  popq %r11                                                           #  10    0x35d23  3      
  andl $0xffffffe0, %r11d                                             #  11    0x35d26  7      
  addq %r15, %r11                                                     #  12    0x35d2d  3      
  jmpq %r11                                                           #  13    0x35d30  3      
  nop                                                                 #  14    0x35d33  1      
.L_35d40:                                                             #        0x35d34  0      
  movl $0x10030d10, %edi                                              #  15    0x35d34  5      
  nop                                                                 #  16    0x35d39  1      
  nop                                                                 #  17    0x35d3a  1      
  callq .__cxa_guard_acquire                                          #  18    0x35d3b  5      
  testl %eax, %eax                                                    #  19    0x35d40  2      
  je .L_35d20                                                         #  20    0x35d42  6      
  nop                                                                 #  21    0x35d48  1      
  nop                                                                 #  22    0x35d49  1      
  callq ._ZN2pp6Module3GetEv                                          #  23    0x35d4a  5      
  movl %eax, %edi                                                     #  24    0x35d4f  2      
  movl $0x10020674, %esi                                              #  25    0x35d51  5      
  nop                                                                 #  26    0x35d56  1      
  nop                                                                 #  27    0x35d57  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  28    0x35d58  5      
  movl $0x10030d10, %edi                                              #  29    0x35d5d  5      
  movl %eax, 0xfffafb0(%rip)                                          #  30    0x35d62  6      
  nop                                                                 #  31    0x35d68  1      
  nop                                                                 #  32    0x35d69  1      
  callq .__cxa_guard_release                                          #  33    0x35d6a  5      
  movl 0xfffafa3(%rip), %eax                                          #  34    0x35d6f  6      
  addl $0x18, %esp                                                    #  35    0x35d75  3      
  addq %r15, %rsp                                                     #  36    0x35d78  3      
  popq %r11                                                           #  37    0x35d7b  3      
  andl $0xffffffe0, %r11d                                             #  38    0x35d7e  7      
  addq %r15, %r11                                                     #  39    0x35d85  3      
  jmpq %r11                                                           #  40    0x35d88  3      
  nop                                                                 #  41    0x35d8b  1      
  movl $0x10030d10, %edi                                              #  42    0x35d8c  5      
  movl %eax, 0x8(%rsp)                                                #  43    0x35d91  4      
  nop                                                                 #  44    0x35d95  1      
  nop                                                                 #  45    0x35d96  1      
  callq .__cxa_guard_abort                                            #  46    0x35d97  5      
  movl 0x8(%rsp), %eax                                                #  47    0x35d9c  4      
  movl %eax, %edi                                                     #  48    0x35da0  2      
  nop                                                                 #  49    0x35da2  1      
  nop                                                                 #  50    0x35da3  1      
  callq ._Unwind_Resume                                               #  51    0x35da4  5      
                                                                                               
.size _ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v

