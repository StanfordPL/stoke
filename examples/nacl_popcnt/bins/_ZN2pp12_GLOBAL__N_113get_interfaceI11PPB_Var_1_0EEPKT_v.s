  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v, @function

#! file-offset 0x29ce0
#! rip-offset  0x29ce0
#! capacity    288 bytes

# Text                                                      #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v:  #        0x29ce0  0      
  subl $0x18, %esp                                          #  1     0x29ce0  3      
  addq %r15, %rsp                                           #  2     0x29ce3  3      
  cmpb $0x0, 0x10006fb3(%rip)                               #  3     0x29ce6  7      
  je .L_29d20                                               #  4     0x29ced  6      
  xchgw %ax, %ax                                            #  5     0x29cf3  3      
  nop                                                       #  6     0x29cf6  1      
.L_29d00:                                                   #        0x29cf7  0      
  movl 0x10006fab(%rip), %eax                               #  7     0x29cf7  6      
  addl $0x18, %esp                                          #  8     0x29cfd  3      
  addq %r15, %rsp                                           #  9     0x29d00  3      
  popq %r11                                                 #  10    0x29d03  3      
  andl $0xffffffe0, %r11d                                   #  11    0x29d06  7      
  addq %r15, %r11                                           #  12    0x29d0d  3      
  jmpq %r11                                                 #  13    0x29d10  3      
  nop                                                       #  14    0x29d13  1      
.L_29d20:                                                   #        0x29d14  0      
  movl $0x10030ca0, %edi                                    #  15    0x29d14  5      
  nop                                                       #  16    0x29d19  1      
  nop                                                       #  17    0x29d1a  1      
  callq .__cxa_guard_acquire                                #  18    0x29d1b  5      
  testl %eax, %eax                                          #  19    0x29d20  2      
  je .L_29d00                                               #  20    0x29d22  6      
  nop                                                       #  21    0x29d28  1      
  nop                                                       #  22    0x29d29  1      
  callq ._ZN2pp6Module3GetEv                                #  23    0x29d2a  5      
  movl %eax, %edi                                           #  24    0x29d2f  2      
  movl $0x1002050a, %esi                                    #  25    0x29d31  5      
  nop                                                       #  26    0x29d36  1      
  nop                                                       #  27    0x29d37  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc             #  28    0x29d38  5      
  movl $0x10030ca0, %edi                                    #  29    0x29d3d  5      
  movl %eax, 0x10006f60(%rip)                               #  30    0x29d42  6      
  nop                                                       #  31    0x29d48  1      
  nop                                                       #  32    0x29d49  1      
  callq .__cxa_guard_release                                #  33    0x29d4a  5      
  movl 0x10006f53(%rip), %eax                               #  34    0x29d4f  6      
  addl $0x18, %esp                                          #  35    0x29d55  3      
  addq %r15, %rsp                                           #  36    0x29d58  3      
  popq %r11                                                 #  37    0x29d5b  3      
  andl $0xffffffe0, %r11d                                   #  38    0x29d5e  7      
  addq %r15, %r11                                           #  39    0x29d65  3      
  jmpq %r11                                                 #  40    0x29d68  3      
  nop                                                       #  41    0x29d6b  1      
  movl $0x10030ca0, %edi                                    #  42    0x29d6c  5      
  movl %eax, 0x8(%rsp)                                      #  43    0x29d71  4      
  nop                                                       #  44    0x29d75  1      
  nop                                                       #  45    0x29d76  1      
  callq .__cxa_guard_abort                                  #  46    0x29d77  5      
  movl 0x8(%rsp), %eax                                      #  47    0x29d7c  4      
  movl %eax, %edi                                           #  48    0x29d80  2      
  nop                                                       #  49    0x29d82  1      
  nop                                                       #  50    0x29d83  1      
  callq ._Unwind_Resume                                     #  51    0x29d84  5      
                                                                                     
.size _ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v

