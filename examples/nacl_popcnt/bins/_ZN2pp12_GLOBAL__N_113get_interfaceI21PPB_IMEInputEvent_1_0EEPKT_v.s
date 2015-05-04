  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v, @function

#! file-offset 0x35da0
#! rip-offset  0x35da0
#! capacity    288 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v:  #        0x35da0  0      
  subl $0x18, %esp                                                    #  1     0x35da0  3      
  addq %r15, %rsp                                                     #  2     0x35da3  3      
  cmpb $0x0, 0xfffaf63(%rip)                                          #  3     0x35da6  7      
  je .L_35de0                                                         #  4     0x35dad  6      
  xchgw %ax, %ax                                                      #  5     0x35db3  3      
  nop                                                                 #  6     0x35db6  1      
.L_35dc0:                                                             #        0x35db7  0      
  movl 0xfffaf5b(%rip), %eax                                          #  7     0x35db7  6      
  addl $0x18, %esp                                                    #  8     0x35dbd  3      
  addq %r15, %rsp                                                     #  9     0x35dc0  3      
  popq %r11                                                           #  10    0x35dc3  3      
  andl $0xffffffe0, %r11d                                             #  11    0x35dc6  7      
  addq %r15, %r11                                                     #  12    0x35dcd  3      
  jmpq %r11                                                           #  13    0x35dd0  3      
  nop                                                                 #  14    0x35dd3  1      
.L_35de0:                                                             #        0x35dd4  0      
  movl $0x10030d10, %edi                                              #  15    0x35dd4  5      
  nop                                                                 #  16    0x35dd9  1      
  nop                                                                 #  17    0x35dda  1      
  callq .__cxa_guard_acquire                                          #  18    0x35ddb  5      
  testl %eax, %eax                                                    #  19    0x35de0  2      
  je .L_35dc0                                                         #  20    0x35de2  6      
  nop                                                                 #  21    0x35de8  1      
  nop                                                                 #  22    0x35de9  1      
  callq ._ZN2pp6Module3GetEv                                          #  23    0x35dea  5      
  movl %eax, %edi                                                     #  24    0x35def  2      
  movl $0x10020674, %esi                                              #  25    0x35df1  5      
  nop                                                                 #  26    0x35df6  1      
  nop                                                                 #  27    0x35df7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  28    0x35df8  5      
  movl $0x10030d10, %edi                                              #  29    0x35dfd  5      
  movl %eax, 0xfffaf10(%rip)                                          #  30    0x35e02  6      
  nop                                                                 #  31    0x35e08  1      
  nop                                                                 #  32    0x35e09  1      
  callq .__cxa_guard_release                                          #  33    0x35e0a  5      
  movl 0xfffaf03(%rip), %eax                                          #  34    0x35e0f  6      
  addl $0x18, %esp                                                    #  35    0x35e15  3      
  addq %r15, %rsp                                                     #  36    0x35e18  3      
  popq %r11                                                           #  37    0x35e1b  3      
  andl $0xffffffe0, %r11d                                             #  38    0x35e1e  7      
  addq %r15, %r11                                                     #  39    0x35e25  3      
  jmpq %r11                                                           #  40    0x35e28  3      
  nop                                                                 #  41    0x35e2b  1      
  movl $0x10030d10, %edi                                              #  42    0x35e2c  5      
  movl %eax, 0x8(%rsp)                                                #  43    0x35e31  4      
  nop                                                                 #  44    0x35e35  1      
  nop                                                                 #  45    0x35e36  1      
  callq .__cxa_guard_abort                                            #  46    0x35e37  5      
  movl 0x8(%rsp), %eax                                                #  47    0x35e3c  4      
  movl %eax, %edi                                                     #  48    0x35e40  2      
  nop                                                                 #  49    0x35e42  1      
  nop                                                                 #  50    0x35e43  1      
  callq ._Unwind_Resume                                               #  51    0x35e44  5      
                                                                                               
.size _ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v

