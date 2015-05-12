  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v, @function

#! file-offset 0x35d20
#! rip-offset  0x35d20
#! capacity    288 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v:  #        0x35d20  0      
  subl $0x18, %esp                                                    #  1     0x35d20  3      
  addq %r15, %rsp                                                     #  2     0x35d23  3      
  cmpb $0x0, 0xfffafe3(%rip)                                          #  3     0x35d26  7      
  je .L_35d60                                                         #  4     0x35d2d  6      
  xchgw %ax, %ax                                                      #  5     0x35d33  3      
  nop                                                                 #  6     0x35d36  1      
.L_35d40:                                                             #        0x35d37  0      
  movl 0xfffafdb(%rip), %eax                                          #  7     0x35d37  6      
  addl $0x18, %esp                                                    #  8     0x35d3d  3      
  addq %r15, %rsp                                                     #  9     0x35d40  3      
  popq %r11                                                           #  10    0x35d43  3      
  andl $0xffffffe0, %r11d                                             #  11    0x35d46  7      
  addq %r15, %r11                                                     #  12    0x35d4d  3      
  jmpq %r11                                                           #  13    0x35d50  3      
  nop                                                                 #  14    0x35d53  1      
.L_35d60:                                                             #        0x35d54  0      
  movl $0x10030d10, %edi                                              #  15    0x35d54  5      
  nop                                                                 #  16    0x35d59  1      
  nop                                                                 #  17    0x35d5a  1      
  callq .__cxa_guard_acquire                                          #  18    0x35d5b  5      
  testl %eax, %eax                                                    #  19    0x35d60  2      
  je .L_35d40                                                         #  20    0x35d62  6      
  nop                                                                 #  21    0x35d68  1      
  nop                                                                 #  22    0x35d69  1      
  callq ._ZN2pp6Module3GetEv                                          #  23    0x35d6a  5      
  movl %eax, %edi                                                     #  24    0x35d6f  2      
  movl $0x10020674, %esi                                              #  25    0x35d71  5      
  nop                                                                 #  26    0x35d76  1      
  nop                                                                 #  27    0x35d77  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  28    0x35d78  5      
  movl $0x10030d10, %edi                                              #  29    0x35d7d  5      
  movl %eax, 0xfffaf90(%rip)                                          #  30    0x35d82  6      
  nop                                                                 #  31    0x35d88  1      
  nop                                                                 #  32    0x35d89  1      
  callq .__cxa_guard_release                                          #  33    0x35d8a  5      
  movl 0xfffaf83(%rip), %eax                                          #  34    0x35d8f  6      
  addl $0x18, %esp                                                    #  35    0x35d95  3      
  addq %r15, %rsp                                                     #  36    0x35d98  3      
  popq %r11                                                           #  37    0x35d9b  3      
  andl $0xffffffe0, %r11d                                             #  38    0x35d9e  7      
  addq %r15, %r11                                                     #  39    0x35da5  3      
  jmpq %r11                                                           #  40    0x35da8  3      
  nop                                                                 #  41    0x35dab  1      
  movl $0x10030d10, %edi                                              #  42    0x35dac  5      
  movl %eax, 0x8(%rsp)                                                #  43    0x35db1  4      
  nop                                                                 #  44    0x35db5  1      
  nop                                                                 #  45    0x35db6  1      
  callq .__cxa_guard_abort                                            #  46    0x35db7  5      
  movl 0x8(%rsp), %eax                                                #  47    0x35dbc  4      
  movl %eax, %edi                                                     #  48    0x35dc0  2      
  nop                                                                 #  49    0x35dc2  1      
  nop                                                                 #  50    0x35dc3  1      
  callq ._Unwind_Resume                                               #  51    0x35dc4  5      
                                                                                               
.size _ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v

