  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v, @function

#! file-offset 0x307e0
#! rip-offset  0x307e0
#! capacity    288 bytes

# Text                                                          #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v:  #        0x307e0  0      
  subl $0x18, %esp                                              #  1     0x307e0  3      
  addq %r15, %rsp                                               #  2     0x307e3  3      
  cmpb $0x0, 0x10000513(%rip)                                   #  3     0x307e6  7      
  je .L_30820                                                   #  4     0x307ed  6      
  xchgw %ax, %ax                                                #  5     0x307f3  3      
  nop                                                           #  6     0x307f6  1      
.L_30800:                                                       #        0x307f7  0      
  movl 0x1000050b(%rip), %eax                                   #  7     0x307f7  6      
  addl $0x18, %esp                                              #  8     0x307fd  3      
  addq %r15, %rsp                                               #  9     0x30800  3      
  popq %r11                                                     #  10    0x30803  3      
  andl $0xffffffe0, %r11d                                       #  11    0x30806  7      
  addq %r15, %r11                                               #  12    0x3080d  3      
  jmpq %r11                                                     #  13    0x30810  3      
  nop                                                           #  14    0x30813  1      
.L_30820:                                                       #        0x30814  0      
  movl $0x10030d00, %edi                                        #  15    0x30814  5      
  nop                                                           #  16    0x30819  1      
  nop                                                           #  17    0x3081a  1      
  callq .__cxa_guard_acquire                                    #  18    0x3081b  5      
  testl %eax, %eax                                              #  19    0x30820  2      
  je .L_30800                                                   #  20    0x30822  6      
  nop                                                           #  21    0x30828  1      
  nop                                                           #  22    0x30829  1      
  callq ._ZN2pp6Module3GetEv                                    #  23    0x3082a  5      
  movl %eax, %edi                                               #  24    0x3082f  2      
  movl $0x10020644, %esi                                        #  25    0x30831  5      
  nop                                                           #  26    0x30836  1      
  nop                                                           #  27    0x30837  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                 #  28    0x30838  5      
  movl $0x10030d00, %edi                                        #  29    0x3083d  5      
  movl %eax, 0x100004c0(%rip)                                   #  30    0x30842  6      
  nop                                                           #  31    0x30848  1      
  nop                                                           #  32    0x30849  1      
  callq .__cxa_guard_release                                    #  33    0x3084a  5      
  movl 0x100004b3(%rip), %eax                                   #  34    0x3084f  6      
  addl $0x18, %esp                                              #  35    0x30855  3      
  addq %r15, %rsp                                               #  36    0x30858  3      
  popq %r11                                                     #  37    0x3085b  3      
  andl $0xffffffe0, %r11d                                       #  38    0x3085e  7      
  addq %r15, %r11                                               #  39    0x30865  3      
  jmpq %r11                                                     #  40    0x30868  3      
  nop                                                           #  41    0x3086b  1      
  movl $0x10030d00, %edi                                        #  42    0x3086c  5      
  movl %eax, 0x8(%rsp)                                          #  43    0x30871  4      
  nop                                                           #  44    0x30875  1      
  nop                                                           #  45    0x30876  1      
  callq .__cxa_guard_abort                                      #  46    0x30877  5      
  movl 0x8(%rsp), %eax                                          #  47    0x3087c  4      
  movl %eax, %edi                                               #  48    0x30880  2      
  nop                                                           #  49    0x30882  1      
  nop                                                           #  50    0x30883  1      
  callq ._Unwind_Resume                                         #  51    0x30884  5      
                                                                                         
.size _ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v

