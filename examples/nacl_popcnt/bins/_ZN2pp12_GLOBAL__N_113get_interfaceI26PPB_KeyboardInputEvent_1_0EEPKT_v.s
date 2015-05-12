  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v, @function

#! file-offset 0x35f60
#! rip-offset  0x35f60
#! capacity    288 bytes

# Text                                                                     #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v:  #        0x35f60  0      
  subl $0x18, %esp                                                         #  1     0x35f60  3      
  addq %r15, %rsp                                                          #  2     0x35f63  3      
  cmpb $0x0, 0xfffadd3(%rip)                                               #  3     0x35f66  7      
  je .L_35fa0                                                              #  4     0x35f6d  6      
  xchgw %ax, %ax                                                           #  5     0x35f73  3      
  nop                                                                      #  6     0x35f76  1      
.L_35f80:                                                                  #        0x35f77  0      
  movl 0xfffadcb(%rip), %eax                                               #  7     0x35f77  6      
  addl $0x18, %esp                                                         #  8     0x35f7d  3      
  addq %r15, %rsp                                                          #  9     0x35f80  3      
  popq %r11                                                                #  10    0x35f83  3      
  andl $0xffffffe0, %r11d                                                  #  11    0x35f86  7      
  addq %r15, %r11                                                          #  12    0x35f8d  3      
  jmpq %r11                                                                #  13    0x35f90  3      
  nop                                                                      #  14    0x35f93  1      
.L_35fa0:                                                                  #        0x35f94  0      
  movl $0x10030d40, %edi                                                   #  15    0x35f94  5      
  nop                                                                      #  16    0x35f99  1      
  nop                                                                      #  17    0x35f9a  1      
  callq .__cxa_guard_acquire                                               #  18    0x35f9b  5      
  testl %eax, %eax                                                         #  19    0x35fa0  2      
  je .L_35f80                                                              #  20    0x35fa2  6      
  nop                                                                      #  21    0x35fa8  1      
  nop                                                                      #  22    0x35fa9  1      
  callq ._ZN2pp6Module3GetEv                                               #  23    0x35faa  5      
  movl %eax, %edi                                                          #  24    0x35faf  2      
  movl $0x100206a5, %esi                                                   #  25    0x35fb1  5      
  nop                                                                      #  26    0x35fb6  1      
  nop                                                                      #  27    0x35fb7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                            #  28    0x35fb8  5      
  movl $0x10030d40, %edi                                                   #  29    0x35fbd  5      
  movl %eax, 0xfffad80(%rip)                                               #  30    0x35fc2  6      
  nop                                                                      #  31    0x35fc8  1      
  nop                                                                      #  32    0x35fc9  1      
  callq .__cxa_guard_release                                               #  33    0x35fca  5      
  movl 0xfffad73(%rip), %eax                                               #  34    0x35fcf  6      
  addl $0x18, %esp                                                         #  35    0x35fd5  3      
  addq %r15, %rsp                                                          #  36    0x35fd8  3      
  popq %r11                                                                #  37    0x35fdb  3      
  andl $0xffffffe0, %r11d                                                  #  38    0x35fde  7      
  addq %r15, %r11                                                          #  39    0x35fe5  3      
  jmpq %r11                                                                #  40    0x35fe8  3      
  nop                                                                      #  41    0x35feb  1      
  movl $0x10030d40, %edi                                                   #  42    0x35fec  5      
  movl %eax, 0x8(%rsp)                                                     #  43    0x35ff1  4      
  nop                                                                      #  44    0x35ff5  1      
  nop                                                                      #  45    0x35ff6  1      
  callq .__cxa_guard_abort                                                 #  46    0x35ff7  5      
  movl 0x8(%rsp), %eax                                                     #  47    0x35ffc  4      
  movl %eax, %edi                                                          #  48    0x36000  2      
  nop                                                                      #  49    0x36002  1      
  nop                                                                      #  50    0x36003  1      
  callq ._Unwind_Resume                                                    #  51    0x36004  5      
                                                                                                    
.size _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v

