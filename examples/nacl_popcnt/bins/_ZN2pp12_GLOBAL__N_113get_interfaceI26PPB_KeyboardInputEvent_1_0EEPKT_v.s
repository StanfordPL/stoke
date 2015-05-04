  .text
  .globl _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v
  .type _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v, @function

#! file-offset 0x35fe0
#! rip-offset  0x35fe0
#! capacity    288 bytes

# Text                                                                     #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v:  #        0x35fe0  0      
  subl $0x18, %esp                                                         #  1     0x35fe0  3      
  addq %r15, %rsp                                                          #  2     0x35fe3  3      
  cmpb $0x0, 0xfffad53(%rip)                                               #  3     0x35fe6  7      
  je .L_36020                                                              #  4     0x35fed  6      
  xchgw %ax, %ax                                                           #  5     0x35ff3  3      
  nop                                                                      #  6     0x35ff6  1      
.L_36000:                                                                  #        0x35ff7  0      
  movl 0xfffad4b(%rip), %eax                                               #  7     0x35ff7  6      
  addl $0x18, %esp                                                         #  8     0x35ffd  3      
  addq %r15, %rsp                                                          #  9     0x36000  3      
  popq %r11                                                                #  10    0x36003  3      
  andl $0xffffffe0, %r11d                                                  #  11    0x36006  7      
  addq %r15, %r11                                                          #  12    0x3600d  3      
  jmpq %r11                                                                #  13    0x36010  3      
  nop                                                                      #  14    0x36013  1      
.L_36020:                                                                  #        0x36014  0      
  movl $0x10030d40, %edi                                                   #  15    0x36014  5      
  nop                                                                      #  16    0x36019  1      
  nop                                                                      #  17    0x3601a  1      
  callq .__cxa_guard_acquire                                               #  18    0x3601b  5      
  testl %eax, %eax                                                         #  19    0x36020  2      
  je .L_36000                                                              #  20    0x36022  6      
  nop                                                                      #  21    0x36028  1      
  nop                                                                      #  22    0x36029  1      
  callq ._ZN2pp6Module3GetEv                                               #  23    0x3602a  5      
  movl %eax, %edi                                                          #  24    0x3602f  2      
  movl $0x100206a5, %esi                                                   #  25    0x36031  5      
  nop                                                                      #  26    0x36036  1      
  nop                                                                      #  27    0x36037  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                            #  28    0x36038  5      
  movl $0x10030d40, %edi                                                   #  29    0x3603d  5      
  movl %eax, 0xfffad00(%rip)                                               #  30    0x36042  6      
  nop                                                                      #  31    0x36048  1      
  nop                                                                      #  32    0x36049  1      
  callq .__cxa_guard_release                                               #  33    0x3604a  5      
  movl 0xfffacf3(%rip), %eax                                               #  34    0x3604f  6      
  addl $0x18, %esp                                                         #  35    0x36055  3      
  addq %r15, %rsp                                                          #  36    0x36058  3      
  popq %r11                                                                #  37    0x3605b  3      
  andl $0xffffffe0, %r11d                                                  #  38    0x3605e  7      
  addq %r15, %r11                                                          #  39    0x36065  3      
  jmpq %r11                                                                #  40    0x36068  3      
  nop                                                                      #  41    0x3606b  1      
  movl $0x10030d40, %edi                                                   #  42    0x3606c  5      
  movl %eax, 0x8(%rsp)                                                     #  43    0x36071  4      
  nop                                                                      #  44    0x36075  1      
  nop                                                                      #  45    0x36076  1      
  callq .__cxa_guard_abort                                                 #  46    0x36077  5      
  movl 0x8(%rsp), %eax                                                     #  47    0x3607c  4      
  movl %eax, %edi                                                          #  48    0x36080  2      
  nop                                                                      #  49    0x36082  1      
  nop                                                                      #  50    0x36083  1      
  callq ._Unwind_Resume                                                    #  51    0x36084  5      
                                                                                                    
.size _ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v, .-_ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v

