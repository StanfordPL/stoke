  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v, @function

#! file-offset 0x30760
#! rip-offset  0x30760
#! capacity    288 bytes

# Text                                                          #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v:  #        0x30760  0      
  subl $0x18, %esp                                              #  1     0x30760  3      
  addq %r15, %rsp                                               #  2     0x30763  3      
  cmpb $0x0, 0x10000593(%rip)                                   #  3     0x30766  7      
  je .L_307a0                                                   #  4     0x3076d  6      
  xchgw %ax, %ax                                                #  5     0x30773  3      
  nop                                                           #  6     0x30776  1      
.L_30780:                                                       #        0x30777  0      
  movl 0x1000058b(%rip), %eax                                   #  7     0x30777  6      
  addl $0x18, %esp                                              #  8     0x3077d  3      
  addq %r15, %rsp                                               #  9     0x30780  3      
  popq %r11                                                     #  10    0x30783  3      
  andl $0xffffffe0, %r11d                                       #  11    0x30786  7      
  addq %r15, %r11                                               #  12    0x3078d  3      
  jmpq %r11                                                     #  13    0x30790  3      
  nop                                                           #  14    0x30793  1      
.L_307a0:                                                       #        0x30794  0      
  movl $0x10030d00, %edi                                        #  15    0x30794  5      
  nop                                                           #  16    0x30799  1      
  nop                                                           #  17    0x3079a  1      
  callq .__cxa_guard_acquire                                    #  18    0x3079b  5      
  testl %eax, %eax                                              #  19    0x307a0  2      
  je .L_30780                                                   #  20    0x307a2  6      
  nop                                                           #  21    0x307a8  1      
  nop                                                           #  22    0x307a9  1      
  callq ._ZN2pp6Module3GetEv                                    #  23    0x307aa  5      
  movl %eax, %edi                                               #  24    0x307af  2      
  movl $0x10020644, %esi                                        #  25    0x307b1  5      
  nop                                                           #  26    0x307b6  1      
  nop                                                           #  27    0x307b7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                 #  28    0x307b8  5      
  movl $0x10030d00, %edi                                        #  29    0x307bd  5      
  movl %eax, 0x10000540(%rip)                                   #  30    0x307c2  6      
  nop                                                           #  31    0x307c8  1      
  nop                                                           #  32    0x307c9  1      
  callq .__cxa_guard_release                                    #  33    0x307ca  5      
  movl 0x10000533(%rip), %eax                                   #  34    0x307cf  6      
  addl $0x18, %esp                                              #  35    0x307d5  3      
  addq %r15, %rsp                                               #  36    0x307d8  3      
  popq %r11                                                     #  37    0x307db  3      
  andl $0xffffffe0, %r11d                                       #  38    0x307de  7      
  addq %r15, %r11                                               #  39    0x307e5  3      
  jmpq %r11                                                     #  40    0x307e8  3      
  nop                                                           #  41    0x307eb  1      
  movl $0x10030d00, %edi                                        #  42    0x307ec  5      
  movl %eax, 0x8(%rsp)                                          #  43    0x307f1  4      
  nop                                                           #  44    0x307f5  1      
  nop                                                           #  45    0x307f6  1      
  callq .__cxa_guard_abort                                      #  46    0x307f7  5      
  movl 0x8(%rsp), %eax                                          #  47    0x307fc  4      
  movl %eax, %edi                                               #  48    0x30800  2      
  nop                                                           #  49    0x30802  1      
  nop                                                           #  50    0x30803  1      
  callq ._Unwind_Resume                                         #  51    0x30804  5      
                                                                                         
.size _ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v

