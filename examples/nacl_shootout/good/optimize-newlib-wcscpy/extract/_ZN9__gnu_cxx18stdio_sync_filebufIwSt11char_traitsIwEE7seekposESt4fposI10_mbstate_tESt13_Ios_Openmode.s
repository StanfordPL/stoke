  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xdb720
#! rip-offset  0x9b720
#! capacity    96 bytes

# Text                                                                                                   #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0x9b720  0      OPC=<label>         
  movl %edi, %edi                                                                                        #  1     0x9b720  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                       #  2     0x9b722  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                        #  3     0x9b725  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                        #  4     0x9b728  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                               #  5     0x9b72a  4      OPC=movl_r32_m32    
  movq %rdx, 0x18(%rsp)                                                                                  #  6     0x9b72e  5      OPC=movq_m64_r64    
  xorl %edx, %edx                                                                                        #  7     0x9b733  2      OPC=xorl_r32_r32    
  movq %rsi, 0x10(%rsp)                                                                                  #  8     0x9b735  5      OPC=movq_m64_r64    
  nop                                                                                                    #  9     0x9b73a  1      OPC=nop             
  nop                                                                                                    #  10    0x9b73b  1      OPC=nop             
  nop                                                                                                    #  11    0x9b73c  1      OPC=nop             
  nop                                                                                                    #  12    0x9b73d  1      OPC=nop             
  nop                                                                                                    #  13    0x9b73e  1      OPC=nop             
  nop                                                                                                    #  14    0x9b73f  1      OPC=nop             
  movl %eax, %eax                                                                                        #  15    0x9b740  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                           #  16    0x9b742  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                         #  17    0x9b747  2      OPC=xchgw_ax_r16    
  nop                                                                                                    #  18    0x9b749  1      OPC=nop             
  nop                                                                                                    #  19    0x9b74a  1      OPC=nop             
  nop                                                                                                    #  20    0x9b74b  1      OPC=nop             
  nop                                                                                                    #  21    0x9b74c  1      OPC=nop             
  nop                                                                                                    #  22    0x9b74d  1      OPC=nop             
  nop                                                                                                    #  23    0x9b74e  1      OPC=nop             
  nop                                                                                                    #  24    0x9b74f  1      OPC=nop             
  nop                                                                                                    #  25    0x9b750  1      OPC=nop             
  nop                                                                                                    #  26    0x9b751  1      OPC=nop             
  nop                                                                                                    #  27    0x9b752  1      OPC=nop             
  nop                                                                                                    #  28    0x9b753  1      OPC=nop             
  nop                                                                                                    #  29    0x9b754  1      OPC=nop             
  nop                                                                                                    #  30    0x9b755  1      OPC=nop             
  nop                                                                                                    #  31    0x9b756  1      OPC=nop             
  nop                                                                                                    #  32    0x9b757  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                 #  33    0x9b758  6      OPC=andl_r32_imm32  
  nop                                                                                                    #  34    0x9b75e  1      OPC=nop             
  nop                                                                                                    #  35    0x9b75f  1      OPC=nop             
  nop                                                                                                    #  36    0x9b760  1      OPC=nop             
  addq %r15, %rax                                                                                        #  37    0x9b761  3      OPC=addq_r64_r64    
  callq %rax                                                                                             #  38    0x9b764  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                       #  39    0x9b766  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                        #  40    0x9b769  3      OPC=addq_r64_r64    
  popq %r11                                                                                              #  41    0x9b76c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                #  42    0x9b76e  7      OPC=andl_r32_imm32  
  nop                                                                                                    #  43    0x9b775  1      OPC=nop             
  nop                                                                                                    #  44    0x9b776  1      OPC=nop             
  nop                                                                                                    #  45    0x9b777  1      OPC=nop             
  nop                                                                                                    #  46    0x9b778  1      OPC=nop             
  addq %r15, %r11                                                                                        #  47    0x9b779  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                              #  48    0x9b77c  3      OPC=jmpq_r64        
  nop                                                                                                    #  49    0x9b77f  1      OPC=nop             
  nop                                                                                                    #  50    0x9b780  1      OPC=nop             
  nop                                                                                                    #  51    0x9b781  1      OPC=nop             
  nop                                                                                                    #  52    0x9b782  1      OPC=nop             
  nop                                                                                                    #  53    0x9b783  1      OPC=nop             
  nop                                                                                                    #  54    0x9b784  1      OPC=nop             
  nop                                                                                                    #  55    0x9b785  1      OPC=nop             
  nop                                                                                                    #  56    0x9b786  1      OPC=nop             
  nop                                                                                                    #  57    0x9b787  1      OPC=nop             
  nop                                                                                                    #  58    0x9b788  1      OPC=nop             
  nop                                                                                                    #  59    0x9b789  1      OPC=nop             
  nop                                                                                                    #  60    0x9b78a  1      OPC=nop             
  nop                                                                                                    #  61    0x9b78b  1      OPC=nop             
  nop                                                                                                    #  62    0x9b78c  1      OPC=nop             
                                                                                                                                                      
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode

