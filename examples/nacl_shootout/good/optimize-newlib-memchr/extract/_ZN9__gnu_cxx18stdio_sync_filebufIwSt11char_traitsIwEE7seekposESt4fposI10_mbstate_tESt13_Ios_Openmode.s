  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xdc140
#! rip-offset  0x9c140
#! capacity    96 bytes

# Text                                                                                                   #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0x9c140  0      OPC=<label>         
  movl %edi, %edi                                                                                        #  1     0x9c140  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                       #  2     0x9c142  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                        #  3     0x9c145  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                        #  4     0x9c148  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                               #  5     0x9c14a  4      OPC=movl_r32_m32    
  movq %rdx, 0x18(%rsp)                                                                                  #  6     0x9c14e  5      OPC=movq_m64_r64    
  xorl %edx, %edx                                                                                        #  7     0x9c153  2      OPC=xorl_r32_r32    
  movq %rsi, 0x10(%rsp)                                                                                  #  8     0x9c155  5      OPC=movq_m64_r64    
  nop                                                                                                    #  9     0x9c15a  1      OPC=nop             
  nop                                                                                                    #  10    0x9c15b  1      OPC=nop             
  nop                                                                                                    #  11    0x9c15c  1      OPC=nop             
  nop                                                                                                    #  12    0x9c15d  1      OPC=nop             
  nop                                                                                                    #  13    0x9c15e  1      OPC=nop             
  nop                                                                                                    #  14    0x9c15f  1      OPC=nop             
  movl %eax, %eax                                                                                        #  15    0x9c160  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                           #  16    0x9c162  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                         #  17    0x9c167  2      OPC=xchgw_ax_r16    
  nop                                                                                                    #  18    0x9c169  1      OPC=nop             
  nop                                                                                                    #  19    0x9c16a  1      OPC=nop             
  nop                                                                                                    #  20    0x9c16b  1      OPC=nop             
  nop                                                                                                    #  21    0x9c16c  1      OPC=nop             
  nop                                                                                                    #  22    0x9c16d  1      OPC=nop             
  nop                                                                                                    #  23    0x9c16e  1      OPC=nop             
  nop                                                                                                    #  24    0x9c16f  1      OPC=nop             
  nop                                                                                                    #  25    0x9c170  1      OPC=nop             
  nop                                                                                                    #  26    0x9c171  1      OPC=nop             
  nop                                                                                                    #  27    0x9c172  1      OPC=nop             
  nop                                                                                                    #  28    0x9c173  1      OPC=nop             
  nop                                                                                                    #  29    0x9c174  1      OPC=nop             
  nop                                                                                                    #  30    0x9c175  1      OPC=nop             
  nop                                                                                                    #  31    0x9c176  1      OPC=nop             
  nop                                                                                                    #  32    0x9c177  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                 #  33    0x9c178  6      OPC=andl_r32_imm32  
  nop                                                                                                    #  34    0x9c17e  1      OPC=nop             
  nop                                                                                                    #  35    0x9c17f  1      OPC=nop             
  nop                                                                                                    #  36    0x9c180  1      OPC=nop             
  addq %r15, %rax                                                                                        #  37    0x9c181  3      OPC=addq_r64_r64    
  callq %rax                                                                                             #  38    0x9c184  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                       #  39    0x9c186  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                        #  40    0x9c189  3      OPC=addq_r64_r64    
  popq %r11                                                                                              #  41    0x9c18c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                #  42    0x9c18e  7      OPC=andl_r32_imm32  
  nop                                                                                                    #  43    0x9c195  1      OPC=nop             
  nop                                                                                                    #  44    0x9c196  1      OPC=nop             
  nop                                                                                                    #  45    0x9c197  1      OPC=nop             
  nop                                                                                                    #  46    0x9c198  1      OPC=nop             
  addq %r15, %r11                                                                                        #  47    0x9c199  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                              #  48    0x9c19c  3      OPC=jmpq_r64        
  nop                                                                                                    #  49    0x9c19f  1      OPC=nop             
  nop                                                                                                    #  50    0x9c1a0  1      OPC=nop             
  nop                                                                                                    #  51    0x9c1a1  1      OPC=nop             
  nop                                                                                                    #  52    0x9c1a2  1      OPC=nop             
  nop                                                                                                    #  53    0x9c1a3  1      OPC=nop             
  nop                                                                                                    #  54    0x9c1a4  1      OPC=nop             
  nop                                                                                                    #  55    0x9c1a5  1      OPC=nop             
  nop                                                                                                    #  56    0x9c1a6  1      OPC=nop             
  nop                                                                                                    #  57    0x9c1a7  1      OPC=nop             
  nop                                                                                                    #  58    0x9c1a8  1      OPC=nop             
  nop                                                                                                    #  59    0x9c1a9  1      OPC=nop             
  nop                                                                                                    #  60    0x9c1aa  1      OPC=nop             
  nop                                                                                                    #  61    0x9c1ab  1      OPC=nop             
  nop                                                                                                    #  62    0x9c1ac  1      OPC=nop             
                                                                                                                                                      
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode

