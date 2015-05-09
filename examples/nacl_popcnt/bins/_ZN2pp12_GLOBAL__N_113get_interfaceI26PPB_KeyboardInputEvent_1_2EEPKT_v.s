  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v, @function

#! file-offset 0x35e20
#! rip-offset  0x35e20
#! capacity    288 bytes

# Text                                                                     #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v:  #        0x35e20  0      
  subl $0x18, %esp                                                         #  1     0x35e20  3      
  addq %r15, %rsp                                                          #  2     0x35e23  3      
  cmpb $0x0, 0xfffaf03(%rip)                                               #  3     0x35e26  7      
  je .L_35e60                                                              #  4     0x35e2d  6      
  xchgw %ax, %ax                                                           #  5     0x35e33  3      
  nop                                                                      #  6     0x35e36  1      
.L_35e40:                                                                  #        0x35e37  0      
  movl 0xfffaefb(%rip), %eax                                               #  7     0x35e37  6      
  addl $0x18, %esp                                                         #  8     0x35e3d  3      
  addq %r15, %rsp                                                          #  9     0x35e40  3      
  popq %r11                                                                #  10    0x35e43  3      
  andl $0xffffffe0, %r11d                                                  #  11    0x35e46  7      
  addq %r15, %r11                                                          #  12    0x35e4d  3      
  jmpq %r11                                                                #  13    0x35e50  3      
  nop                                                                      #  14    0x35e53  1      
.L_35e60:                                                                  #        0x35e54  0      
  movl $0x10030d30, %edi                                                   #  15    0x35e54  5      
  nop                                                                      #  16    0x35e59  1      
  nop                                                                      #  17    0x35e5a  1      
  callq .__cxa_guard_acquire                                               #  18    0x35e5b  5      
  testl %eax, %eax                                                         #  19    0x35e60  2      
  je .L_35e40                                                              #  20    0x35e62  6      
  nop                                                                      #  21    0x35e68  1      
  nop                                                                      #  22    0x35e69  1      
  callq ._ZN2pp6Module3GetEv                                               #  23    0x35e6a  5      
  movl %eax, %edi                                                          #  24    0x35e6f  2      
  movl $0x1002068a, %esi                                                   #  25    0x35e71  5      
  nop                                                                      #  26    0x35e76  1      
  nop                                                                      #  27    0x35e77  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                            #  28    0x35e78  5      
  movl $0x10030d30, %edi                                                   #  29    0x35e7d  5      
  movl %eax, 0xfffaeb0(%rip)                                               #  30    0x35e82  6      
  nop                                                                      #  31    0x35e88  1      
  nop                                                                      #  32    0x35e89  1      
  callq .__cxa_guard_release                                               #  33    0x35e8a  5      
  movl 0xfffaea3(%rip), %eax                                               #  34    0x35e8f  6      
  addl $0x18, %esp                                                         #  35    0x35e95  3      
  addq %r15, %rsp                                                          #  36    0x35e98  3      
  popq %r11                                                                #  37    0x35e9b  3      
  andl $0xffffffe0, %r11d                                                  #  38    0x35e9e  7      
  addq %r15, %r11                                                          #  39    0x35ea5  3      
  jmpq %r11                                                                #  40    0x35ea8  3      
  nop                                                                      #  41    0x35eab  1      
  movl $0x10030d30, %edi                                                   #  42    0x35eac  5      
  movl %eax, 0x8(%rsp)                                                     #  43    0x35eb1  4      
  nop                                                                      #  44    0x35eb5  1      
  nop                                                                      #  45    0x35eb6  1      
  callq .__cxa_guard_abort                                                 #  46    0x35eb7  5      
  movl 0x8(%rsp), %eax                                                     #  47    0x35ebc  4      
  movl %eax, %edi                                                          #  48    0x35ec0  2      
  nop                                                                      #  49    0x35ec2  1      
  nop                                                                      #  50    0x35ec3  1      
  callq ._Unwind_Resume                                                    #  51    0x35ec4  5      
                                                                                                    
.size _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v

