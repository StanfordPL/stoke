  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v, @function

#! file-offset 0x35ec0
#! rip-offset  0x35ec0
#! capacity    288 bytes

# Text                                                                     #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v:  #        0x35ec0  0      
  subl $0x18, %esp                                                         #  1     0x35ec0  3      
  addq %r15, %rsp                                                          #  2     0x35ec3  3      
  cmpb $0x0, 0xfffae63(%rip)                                               #  3     0x35ec6  7      
  je .L_35f00                                                              #  4     0x35ecd  6      
  xchgw %ax, %ax                                                           #  5     0x35ed3  3      
  nop                                                                      #  6     0x35ed6  1      
.L_35ee0:                                                                  #        0x35ed7  0      
  movl 0xfffae5b(%rip), %eax                                               #  7     0x35ed7  6      
  addl $0x18, %esp                                                         #  8     0x35edd  3      
  addq %r15, %rsp                                                          #  9     0x35ee0  3      
  popq %r11                                                                #  10    0x35ee3  3      
  andl $0xffffffe0, %r11d                                                  #  11    0x35ee6  7      
  addq %r15, %r11                                                          #  12    0x35eed  3      
  jmpq %r11                                                                #  13    0x35ef0  3      
  nop                                                                      #  14    0x35ef3  1      
.L_35f00:                                                                  #        0x35ef4  0      
  movl $0x10030d30, %edi                                                   #  15    0x35ef4  5      
  nop                                                                      #  16    0x35ef9  1      
  nop                                                                      #  17    0x35efa  1      
  callq .__cxa_guard_acquire                                               #  18    0x35efb  5      
  testl %eax, %eax                                                         #  19    0x35f00  2      
  je .L_35ee0                                                              #  20    0x35f02  6      
  nop                                                                      #  21    0x35f08  1      
  nop                                                                      #  22    0x35f09  1      
  callq ._ZN2pp6Module3GetEv                                               #  23    0x35f0a  5      
  movl %eax, %edi                                                          #  24    0x35f0f  2      
  movl $0x1002068a, %esi                                                   #  25    0x35f11  5      
  nop                                                                      #  26    0x35f16  1      
  nop                                                                      #  27    0x35f17  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                            #  28    0x35f18  5      
  movl $0x10030d30, %edi                                                   #  29    0x35f1d  5      
  movl %eax, 0xfffae10(%rip)                                               #  30    0x35f22  6      
  nop                                                                      #  31    0x35f28  1      
  nop                                                                      #  32    0x35f29  1      
  callq .__cxa_guard_release                                               #  33    0x35f2a  5      
  movl 0xfffae03(%rip), %eax                                               #  34    0x35f2f  6      
  addl $0x18, %esp                                                         #  35    0x35f35  3      
  addq %r15, %rsp                                                          #  36    0x35f38  3      
  popq %r11                                                                #  37    0x35f3b  3      
  andl $0xffffffe0, %r11d                                                  #  38    0x35f3e  7      
  addq %r15, %r11                                                          #  39    0x35f45  3      
  jmpq %r11                                                                #  40    0x35f48  3      
  nop                                                                      #  41    0x35f4b  1      
  movl $0x10030d30, %edi                                                   #  42    0x35f4c  5      
  movl %eax, 0x8(%rsp)                                                     #  43    0x35f51  4      
  nop                                                                      #  44    0x35f55  1      
  nop                                                                      #  45    0x35f56  1      
  callq .__cxa_guard_abort                                                 #  46    0x35f57  5      
  movl 0x8(%rsp), %eax                                                     #  47    0x35f5c  4      
  movl %eax, %edi                                                          #  48    0x35f60  2      
  nop                                                                      #  49    0x35f62  1      
  nop                                                                      #  50    0x35f63  1      
  callq ._Unwind_Resume                                                    #  51    0x35f64  5      
                                                                                                    
.size _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v

