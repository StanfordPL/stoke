  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v, @function

#! file-offset 0x2d720
#! rip-offset  0x2d720
#! capacity    288 bytes

# Text                                                       #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v:  #        0x2d720  0      
  subl $0x18, %esp                                           #  1     0x2d720  3      
  addq %r15, %rsp                                            #  2     0x2d723  3      
  cmpb $0x0, 0x100035a3(%rip)                                #  3     0x2d726  7      
  je .L_2d760                                                #  4     0x2d72d  6      
  xchgw %ax, %ax                                             #  5     0x2d733  3      
  nop                                                        #  6     0x2d736  1      
.L_2d740:                                                    #        0x2d737  0      
  movl 0x1000359b(%rip), %eax                                #  7     0x2d737  6      
  addl $0x18, %esp                                           #  8     0x2d73d  3      
  addq %r15, %rsp                                            #  9     0x2d740  3      
  popq %r11                                                  #  10    0x2d743  3      
  andl $0xffffffe0, %r11d                                    #  11    0x2d746  7      
  addq %r15, %r11                                            #  12    0x2d74d  3      
  jmpq %r11                                                  #  13    0x2d750  3      
  nop                                                        #  14    0x2d753  1      
.L_2d760:                                                    #        0x2d754  0      
  movl $0x10030cd0, %edi                                     #  15    0x2d754  5      
  nop                                                        #  16    0x2d759  1      
  nop                                                        #  17    0x2d75a  1      
  callq .__cxa_guard_acquire                                 #  18    0x2d75b  5      
  testl %eax, %eax                                           #  19    0x2d760  2      
  je .L_2d740                                                #  20    0x2d762  6      
  nop                                                        #  21    0x2d768  1      
  nop                                                        #  22    0x2d769  1      
  callq ._ZN2pp6Module3GetEv                                 #  23    0x2d76a  5      
  movl %eax, %edi                                            #  24    0x2d76f  2      
  movl $0x10020618, %esi                                     #  25    0x2d771  5      
  nop                                                        #  26    0x2d776  1      
  nop                                                        #  27    0x2d777  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc              #  28    0x2d778  5      
  movl $0x10030cd0, %edi                                     #  29    0x2d77d  5      
  movl %eax, 0x10003550(%rip)                                #  30    0x2d782  6      
  nop                                                        #  31    0x2d788  1      
  nop                                                        #  32    0x2d789  1      
  callq .__cxa_guard_release                                 #  33    0x2d78a  5      
  movl 0x10003543(%rip), %eax                                #  34    0x2d78f  6      
  addl $0x18, %esp                                           #  35    0x2d795  3      
  addq %r15, %rsp                                            #  36    0x2d798  3      
  popq %r11                                                  #  37    0x2d79b  3      
  andl $0xffffffe0, %r11d                                    #  38    0x2d79e  7      
  addq %r15, %r11                                            #  39    0x2d7a5  3      
  jmpq %r11                                                  #  40    0x2d7a8  3      
  nop                                                        #  41    0x2d7ab  1      
  movl $0x10030cd0, %edi                                     #  42    0x2d7ac  5      
  movl %eax, 0x8(%rsp)                                       #  43    0x2d7b1  4      
  nop                                                        #  44    0x2d7b5  1      
  nop                                                        #  45    0x2d7b6  1      
  callq .__cxa_guard_abort                                   #  46    0x2d7b7  5      
  movl 0x8(%rsp), %eax                                       #  47    0x2d7bc  4      
  movl %eax, %edi                                            #  48    0x2d7c0  2      
  nop                                                        #  49    0x2d7c2  1      
  nop                                                        #  50    0x2d7c3  1      
  callq ._Unwind_Resume                                      #  51    0x2d7c4  5      
                                                                                      
.size _ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v

