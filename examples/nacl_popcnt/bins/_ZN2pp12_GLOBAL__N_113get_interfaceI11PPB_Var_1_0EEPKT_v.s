  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v, @function

#! file-offset 0x29d60
#! rip-offset  0x29d60
#! capacity    288 bytes

# Text                                                      #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v:  #        0x29d60  0      
  subl $0x18, %esp                                          #  1     0x29d60  3      
  addq %r15, %rsp                                           #  2     0x29d63  3      
  cmpb $0x0, 0x10006f33(%rip)                               #  3     0x29d66  7      
  je .L_29da0                                               #  4     0x29d6d  6      
  xchgw %ax, %ax                                            #  5     0x29d73  3      
  nop                                                       #  6     0x29d76  1      
.L_29d80:                                                   #        0x29d77  0      
  movl 0x10006f2b(%rip), %eax                               #  7     0x29d77  6      
  addl $0x18, %esp                                          #  8     0x29d7d  3      
  addq %r15, %rsp                                           #  9     0x29d80  3      
  popq %r11                                                 #  10    0x29d83  3      
  andl $0xffffffe0, %r11d                                   #  11    0x29d86  7      
  addq %r15, %r11                                           #  12    0x29d8d  3      
  jmpq %r11                                                 #  13    0x29d90  3      
  nop                                                       #  14    0x29d93  1      
.L_29da0:                                                   #        0x29d94  0      
  movl $0x10030ca0, %edi                                    #  15    0x29d94  5      
  nop                                                       #  16    0x29d99  1      
  nop                                                       #  17    0x29d9a  1      
  callq .__cxa_guard_acquire                                #  18    0x29d9b  5      
  testl %eax, %eax                                          #  19    0x29da0  2      
  je .L_29d80                                               #  20    0x29da2  6      
  nop                                                       #  21    0x29da8  1      
  nop                                                       #  22    0x29da9  1      
  callq ._ZN2pp6Module3GetEv                                #  23    0x29daa  5      
  movl %eax, %edi                                           #  24    0x29daf  2      
  movl $0x1002050a, %esi                                    #  25    0x29db1  5      
  nop                                                       #  26    0x29db6  1      
  nop                                                       #  27    0x29db7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc             #  28    0x29db8  5      
  movl $0x10030ca0, %edi                                    #  29    0x29dbd  5      
  movl %eax, 0x10006ee0(%rip)                               #  30    0x29dc2  6      
  nop                                                       #  31    0x29dc8  1      
  nop                                                       #  32    0x29dc9  1      
  callq .__cxa_guard_release                                #  33    0x29dca  5      
  movl 0x10006ed3(%rip), %eax                               #  34    0x29dcf  6      
  addl $0x18, %esp                                          #  35    0x29dd5  3      
  addq %r15, %rsp                                           #  36    0x29dd8  3      
  popq %r11                                                 #  37    0x29ddb  3      
  andl $0xffffffe0, %r11d                                   #  38    0x29dde  7      
  addq %r15, %r11                                           #  39    0x29de5  3      
  jmpq %r11                                                 #  40    0x29de8  3      
  nop                                                       #  41    0x29deb  1      
  movl $0x10030ca0, %edi                                    #  42    0x29dec  5      
  movl %eax, 0x8(%rsp)                                      #  43    0x29df1  4      
  nop                                                       #  44    0x29df5  1      
  nop                                                       #  45    0x29df6  1      
  callq .__cxa_guard_abort                                  #  46    0x29df7  5      
  movl 0x8(%rsp), %eax                                      #  47    0x29dfc  4      
  movl %eax, %edi                                           #  48    0x29e00  2      
  nop                                                       #  49    0x29e02  1      
  nop                                                       #  50    0x29e03  1      
  callq ._Unwind_Resume                                     #  51    0x29e04  5      
                                                                                     
.size _ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI11PPB_Var_1_0EEPKT_v

