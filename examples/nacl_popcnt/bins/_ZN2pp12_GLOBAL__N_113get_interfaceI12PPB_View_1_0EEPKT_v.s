  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v, @function

#! file-offset 0x2d6a0
#! rip-offset  0x2d6a0
#! capacity    288 bytes

# Text                                                       #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v:  #        0x2d6a0  0      
  subl $0x18, %esp                                           #  1     0x2d6a0  3      
  addq %r15, %rsp                                            #  2     0x2d6a3  3      
  cmpb $0x0, 0x10003623(%rip)                                #  3     0x2d6a6  7      
  je .L_2d6e0                                                #  4     0x2d6ad  6      
  xchgw %ax, %ax                                             #  5     0x2d6b3  3      
  nop                                                        #  6     0x2d6b6  1      
.L_2d6c0:                                                    #        0x2d6b7  0      
  movl 0x1000361b(%rip), %eax                                #  7     0x2d6b7  6      
  addl $0x18, %esp                                           #  8     0x2d6bd  3      
  addq %r15, %rsp                                            #  9     0x2d6c0  3      
  popq %r11                                                  #  10    0x2d6c3  3      
  andl $0xffffffe0, %r11d                                    #  11    0x2d6c6  7      
  addq %r15, %r11                                            #  12    0x2d6cd  3      
  jmpq %r11                                                  #  13    0x2d6d0  3      
  nop                                                        #  14    0x2d6d3  1      
.L_2d6e0:                                                    #        0x2d6d4  0      
  movl $0x10030cd0, %edi                                     #  15    0x2d6d4  5      
  nop                                                        #  16    0x2d6d9  1      
  nop                                                        #  17    0x2d6da  1      
  callq .__cxa_guard_acquire                                 #  18    0x2d6db  5      
  testl %eax, %eax                                           #  19    0x2d6e0  2      
  je .L_2d6c0                                                #  20    0x2d6e2  6      
  nop                                                        #  21    0x2d6e8  1      
  nop                                                        #  22    0x2d6e9  1      
  callq ._ZN2pp6Module3GetEv                                 #  23    0x2d6ea  5      
  movl %eax, %edi                                            #  24    0x2d6ef  2      
  movl $0x10020618, %esi                                     #  25    0x2d6f1  5      
  nop                                                        #  26    0x2d6f6  1      
  nop                                                        #  27    0x2d6f7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc              #  28    0x2d6f8  5      
  movl $0x10030cd0, %edi                                     #  29    0x2d6fd  5      
  movl %eax, 0x100035d0(%rip)                                #  30    0x2d702  6      
  nop                                                        #  31    0x2d708  1      
  nop                                                        #  32    0x2d709  1      
  callq .__cxa_guard_release                                 #  33    0x2d70a  5      
  movl 0x100035c3(%rip), %eax                                #  34    0x2d70f  6      
  addl $0x18, %esp                                           #  35    0x2d715  3      
  addq %r15, %rsp                                            #  36    0x2d718  3      
  popq %r11                                                  #  37    0x2d71b  3      
  andl $0xffffffe0, %r11d                                    #  38    0x2d71e  7      
  addq %r15, %r11                                            #  39    0x2d725  3      
  jmpq %r11                                                  #  40    0x2d728  3      
  nop                                                        #  41    0x2d72b  1      
  movl $0x10030cd0, %edi                                     #  42    0x2d72c  5      
  movl %eax, 0x8(%rsp)                                       #  43    0x2d731  4      
  nop                                                        #  44    0x2d735  1      
  nop                                                        #  45    0x2d736  1      
  callq .__cxa_guard_abort                                   #  46    0x2d737  5      
  movl 0x8(%rsp), %eax                                       #  47    0x2d73c  4      
  movl %eax, %edi                                            #  48    0x2d740  2      
  nop                                                        #  49    0x2d742  1      
  nop                                                        #  50    0x2d743  1      
  callq ._Unwind_Resume                                      #  51    0x2d744  5      
                                                                                      
.size _ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v

