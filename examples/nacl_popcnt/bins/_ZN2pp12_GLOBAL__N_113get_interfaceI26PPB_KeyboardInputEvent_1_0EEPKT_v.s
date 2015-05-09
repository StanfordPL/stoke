  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v, @function

#! file-offset 0x35f40
#! rip-offset  0x35f40
#! capacity    288 bytes

# Text                                                                     #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v:  #        0x35f40  0      
  subl $0x18, %esp                                                         #  1     0x35f40  3      
  addq %r15, %rsp                                                          #  2     0x35f43  3      
  cmpb $0x0, 0xfffadf3(%rip)                                               #  3     0x35f46  7      
  je .L_35f80                                                              #  4     0x35f4d  6      
  xchgw %ax, %ax                                                           #  5     0x35f53  3      
  nop                                                                      #  6     0x35f56  1      
.L_35f60:                                                                  #        0x35f57  0      
  movl 0xfffadeb(%rip), %eax                                               #  7     0x35f57  6      
  addl $0x18, %esp                                                         #  8     0x35f5d  3      
  addq %r15, %rsp                                                          #  9     0x35f60  3      
  popq %r11                                                                #  10    0x35f63  3      
  andl $0xffffffe0, %r11d                                                  #  11    0x35f66  7      
  addq %r15, %r11                                                          #  12    0x35f6d  3      
  jmpq %r11                                                                #  13    0x35f70  3      
  nop                                                                      #  14    0x35f73  1      
.L_35f80:                                                                  #        0x35f74  0      
  movl $0x10030d40, %edi                                                   #  15    0x35f74  5      
  nop                                                                      #  16    0x35f79  1      
  nop                                                                      #  17    0x35f7a  1      
  callq .__cxa_guard_acquire                                               #  18    0x35f7b  5      
  testl %eax, %eax                                                         #  19    0x35f80  2      
  je .L_35f60                                                              #  20    0x35f82  6      
  nop                                                                      #  21    0x35f88  1      
  nop                                                                      #  22    0x35f89  1      
  callq ._ZN2pp6Module3GetEv                                               #  23    0x35f8a  5      
  movl %eax, %edi                                                          #  24    0x35f8f  2      
  movl $0x100206a5, %esi                                                   #  25    0x35f91  5      
  nop                                                                      #  26    0x35f96  1      
  nop                                                                      #  27    0x35f97  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                            #  28    0x35f98  5      
  movl $0x10030d40, %edi                                                   #  29    0x35f9d  5      
  movl %eax, 0xfffada0(%rip)                                               #  30    0x35fa2  6      
  nop                                                                      #  31    0x35fa8  1      
  nop                                                                      #  32    0x35fa9  1      
  callq .__cxa_guard_release                                               #  33    0x35faa  5      
  movl 0xfffad93(%rip), %eax                                               #  34    0x35faf  6      
  addl $0x18, %esp                                                         #  35    0x35fb5  3      
  addq %r15, %rsp                                                          #  36    0x35fb8  3      
  popq %r11                                                                #  37    0x35fbb  3      
  andl $0xffffffe0, %r11d                                                  #  38    0x35fbe  7      
  addq %r15, %r11                                                          #  39    0x35fc5  3      
  jmpq %r11                                                                #  40    0x35fc8  3      
  nop                                                                      #  41    0x35fcb  1      
  movl $0x10030d40, %edi                                                   #  42    0x35fcc  5      
  movl %eax, 0x8(%rsp)                                                     #  43    0x35fd1  4      
  nop                                                                      #  44    0x35fd5  1      
  nop                                                                      #  45    0x35fd6  1      
  callq .__cxa_guard_abort                                                 #  46    0x35fd7  5      
  movl 0x8(%rsp), %eax                                                     #  47    0x35fdc  4      
  movl %eax, %edi                                                          #  48    0x35fe0  2      
  nop                                                                      #  49    0x35fe2  1      
  nop                                                                      #  50    0x35fe3  1      
  callq ._Unwind_Resume                                                    #  51    0x35fe4  5      
                                                                                                    
.size _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v

