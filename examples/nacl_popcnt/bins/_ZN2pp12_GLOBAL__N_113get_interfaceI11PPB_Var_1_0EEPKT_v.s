  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v, @function

#! file-offset 0x29cc0
#! rip-offset  0x29cc0
#! capacity    288 bytes

# Text                                                      #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v:  #        0x29cc0  0      
  subl $0x18, %esp                                          #  1     0x29cc0  3      
  addq %r15, %rsp                                           #  2     0x29cc3  3      
  cmpb $0x0, 0x10006fd3(%rip)                               #  3     0x29cc6  7      
  je .L_29d00                                               #  4     0x29ccd  6      
  xchgw %ax, %ax                                            #  5     0x29cd3  3      
  nop                                                       #  6     0x29cd6  1      
.L_29ce0:                                                   #        0x29cd7  0      
  movl 0x10006fcb(%rip), %eax                               #  7     0x29cd7  6      
  addl $0x18, %esp                                          #  8     0x29cdd  3      
  addq %r15, %rsp                                           #  9     0x29ce0  3      
  popq %r11                                                 #  10    0x29ce3  3      
  andl $0xffffffe0, %r11d                                   #  11    0x29ce6  7      
  addq %r15, %r11                                           #  12    0x29ced  3      
  jmpq %r11                                                 #  13    0x29cf0  3      
  nop                                                       #  14    0x29cf3  1      
.L_29d00:                                                   #        0x29cf4  0      
  movl $0x10030ca0, %edi                                    #  15    0x29cf4  5      
  nop                                                       #  16    0x29cf9  1      
  nop                                                       #  17    0x29cfa  1      
  callq .__cxa_guard_acquire                                #  18    0x29cfb  5      
  testl %eax, %eax                                          #  19    0x29d00  2      
  je .L_29ce0                                               #  20    0x29d02  6      
  nop                                                       #  21    0x29d08  1      
  nop                                                       #  22    0x29d09  1      
  callq ._ZN2pp6Module3GetEv                                #  23    0x29d0a  5      
  movl %eax, %edi                                           #  24    0x29d0f  2      
  movl $0x1002050a, %esi                                    #  25    0x29d11  5      
  nop                                                       #  26    0x29d16  1      
  nop                                                       #  27    0x29d17  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc             #  28    0x29d18  5      
  movl $0x10030ca0, %edi                                    #  29    0x29d1d  5      
  movl %eax, 0x10006f80(%rip)                               #  30    0x29d22  6      
  nop                                                       #  31    0x29d28  1      
  nop                                                       #  32    0x29d29  1      
  callq .__cxa_guard_release                                #  33    0x29d2a  5      
  movl 0x10006f73(%rip), %eax                               #  34    0x29d2f  6      
  addl $0x18, %esp                                          #  35    0x29d35  3      
  addq %r15, %rsp                                           #  36    0x29d38  3      
  popq %r11                                                 #  37    0x29d3b  3      
  andl $0xffffffe0, %r11d                                   #  38    0x29d3e  7      
  addq %r15, %r11                                           #  39    0x29d45  3      
  jmpq %r11                                                 #  40    0x29d48  3      
  nop                                                       #  41    0x29d4b  1      
  movl $0x10030ca0, %edi                                    #  42    0x29d4c  5      
  movl %eax, 0x8(%rsp)                                      #  43    0x29d51  4      
  nop                                                       #  44    0x29d55  1      
  nop                                                       #  45    0x29d56  1      
  callq .__cxa_guard_abort                                  #  46    0x29d57  5      
  movl 0x8(%rsp), %eax                                      #  47    0x29d5c  4      
  movl %eax, %edi                                           #  48    0x29d60  2      
  nop                                                       #  49    0x29d62  1      
  nop                                                       #  50    0x29d63  1      
  callq ._Unwind_Resume                                     #  51    0x29d64  5      
                                                                                     
.size _ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v

