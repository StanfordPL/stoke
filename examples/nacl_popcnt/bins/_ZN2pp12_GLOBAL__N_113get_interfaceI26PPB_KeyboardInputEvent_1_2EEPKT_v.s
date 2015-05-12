  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v, @function

#! file-offset 0x35e40
#! rip-offset  0x35e40
#! capacity    288 bytes

# Text                                                                     #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v:  #        0x35e40  0      
  subl $0x18, %esp                                                         #  1     0x35e40  3      
  addq %r15, %rsp                                                          #  2     0x35e43  3      
  cmpb $0x0, 0xfffaee3(%rip)                                               #  3     0x35e46  7      
  je .L_35e80                                                              #  4     0x35e4d  6      
  xchgw %ax, %ax                                                           #  5     0x35e53  3      
  nop                                                                      #  6     0x35e56  1      
.L_35e60:                                                                  #        0x35e57  0      
  movl 0xfffaedb(%rip), %eax                                               #  7     0x35e57  6      
  addl $0x18, %esp                                                         #  8     0x35e5d  3      
  addq %r15, %rsp                                                          #  9     0x35e60  3      
  popq %r11                                                                #  10    0x35e63  3      
  andl $0xffffffe0, %r11d                                                  #  11    0x35e66  7      
  addq %r15, %r11                                                          #  12    0x35e6d  3      
  jmpq %r11                                                                #  13    0x35e70  3      
  nop                                                                      #  14    0x35e73  1      
.L_35e80:                                                                  #        0x35e74  0      
  movl $0x10030d30, %edi                                                   #  15    0x35e74  5      
  nop                                                                      #  16    0x35e79  1      
  nop                                                                      #  17    0x35e7a  1      
  callq .__cxa_guard_acquire                                               #  18    0x35e7b  5      
  testl %eax, %eax                                                         #  19    0x35e80  2      
  je .L_35e60                                                              #  20    0x35e82  6      
  nop                                                                      #  21    0x35e88  1      
  nop                                                                      #  22    0x35e89  1      
  callq ._ZN2pp6Module3GetEv                                               #  23    0x35e8a  5      
  movl %eax, %edi                                                          #  24    0x35e8f  2      
  movl $0x1002068a, %esi                                                   #  25    0x35e91  5      
  nop                                                                      #  26    0x35e96  1      
  nop                                                                      #  27    0x35e97  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                            #  28    0x35e98  5      
  movl $0x10030d30, %edi                                                   #  29    0x35e9d  5      
  movl %eax, 0xfffae90(%rip)                                               #  30    0x35ea2  6      
  nop                                                                      #  31    0x35ea8  1      
  nop                                                                      #  32    0x35ea9  1      
  callq .__cxa_guard_release                                               #  33    0x35eaa  5      
  movl 0xfffae83(%rip), %eax                                               #  34    0x35eaf  6      
  addl $0x18, %esp                                                         #  35    0x35eb5  3      
  addq %r15, %rsp                                                          #  36    0x35eb8  3      
  popq %r11                                                                #  37    0x35ebb  3      
  andl $0xffffffe0, %r11d                                                  #  38    0x35ebe  7      
  addq %r15, %r11                                                          #  39    0x35ec5  3      
  jmpq %r11                                                                #  40    0x35ec8  3      
  nop                                                                      #  41    0x35ecb  1      
  movl $0x10030d30, %edi                                                   #  42    0x35ecc  5      
  movl %eax, 0x8(%rsp)                                                     #  43    0x35ed1  4      
  nop                                                                      #  44    0x35ed5  1      
  nop                                                                      #  45    0x35ed6  1      
  callq .__cxa_guard_abort                                                 #  46    0x35ed7  5      
  movl 0x8(%rsp), %eax                                                     #  47    0x35edc  4      
  movl %eax, %edi                                                          #  48    0x35ee0  2      
  nop                                                                      #  49    0x35ee2  1      
  nop                                                                      #  50    0x35ee3  1      
  callq ._Unwind_Resume                                                    #  51    0x35ee4  5      
                                                                                                    
.size _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v

