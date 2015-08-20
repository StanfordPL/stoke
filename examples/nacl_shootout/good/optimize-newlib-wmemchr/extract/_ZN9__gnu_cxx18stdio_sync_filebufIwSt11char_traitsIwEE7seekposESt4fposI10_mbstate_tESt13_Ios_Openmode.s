  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xdba20
#! rip-offset  0x9ba20
#! capacity    96 bytes

# Text                                                                                                   #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0x9ba20  0      OPC=<label>         
  movl %edi, %edi                                                                                        #  1     0x9ba20  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                       #  2     0x9ba22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                        #  3     0x9ba25  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                        #  4     0x9ba28  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                               #  5     0x9ba2a  4      OPC=movl_r32_m32    
  movq %rdx, 0x18(%rsp)                                                                                  #  6     0x9ba2e  5      OPC=movq_m64_r64    
  xorl %edx, %edx                                                                                        #  7     0x9ba33  2      OPC=xorl_r32_r32    
  movq %rsi, 0x10(%rsp)                                                                                  #  8     0x9ba35  5      OPC=movq_m64_r64    
  nop                                                                                                    #  9     0x9ba3a  1      OPC=nop             
  nop                                                                                                    #  10    0x9ba3b  1      OPC=nop             
  nop                                                                                                    #  11    0x9ba3c  1      OPC=nop             
  nop                                                                                                    #  12    0x9ba3d  1      OPC=nop             
  nop                                                                                                    #  13    0x9ba3e  1      OPC=nop             
  nop                                                                                                    #  14    0x9ba3f  1      OPC=nop             
  movl %eax, %eax                                                                                        #  15    0x9ba40  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                           #  16    0x9ba42  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                         #  17    0x9ba47  2      OPC=xchgw_ax_r16    
  nop                                                                                                    #  18    0x9ba49  1      OPC=nop             
  nop                                                                                                    #  19    0x9ba4a  1      OPC=nop             
  nop                                                                                                    #  20    0x9ba4b  1      OPC=nop             
  nop                                                                                                    #  21    0x9ba4c  1      OPC=nop             
  nop                                                                                                    #  22    0x9ba4d  1      OPC=nop             
  nop                                                                                                    #  23    0x9ba4e  1      OPC=nop             
  nop                                                                                                    #  24    0x9ba4f  1      OPC=nop             
  nop                                                                                                    #  25    0x9ba50  1      OPC=nop             
  nop                                                                                                    #  26    0x9ba51  1      OPC=nop             
  nop                                                                                                    #  27    0x9ba52  1      OPC=nop             
  nop                                                                                                    #  28    0x9ba53  1      OPC=nop             
  nop                                                                                                    #  29    0x9ba54  1      OPC=nop             
  nop                                                                                                    #  30    0x9ba55  1      OPC=nop             
  nop                                                                                                    #  31    0x9ba56  1      OPC=nop             
  nop                                                                                                    #  32    0x9ba57  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                 #  33    0x9ba58  6      OPC=andl_r32_imm32  
  nop                                                                                                    #  34    0x9ba5e  1      OPC=nop             
  nop                                                                                                    #  35    0x9ba5f  1      OPC=nop             
  nop                                                                                                    #  36    0x9ba60  1      OPC=nop             
  addq %r15, %rax                                                                                        #  37    0x9ba61  3      OPC=addq_r64_r64    
  callq %rax                                                                                             #  38    0x9ba64  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                       #  39    0x9ba66  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                        #  40    0x9ba69  3      OPC=addq_r64_r64    
  popq %r11                                                                                              #  41    0x9ba6c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                #  42    0x9ba6e  7      OPC=andl_r32_imm32  
  nop                                                                                                    #  43    0x9ba75  1      OPC=nop             
  nop                                                                                                    #  44    0x9ba76  1      OPC=nop             
  nop                                                                                                    #  45    0x9ba77  1      OPC=nop             
  nop                                                                                                    #  46    0x9ba78  1      OPC=nop             
  addq %r15, %r11                                                                                        #  47    0x9ba79  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                              #  48    0x9ba7c  3      OPC=jmpq_r64        
  nop                                                                                                    #  49    0x9ba7f  1      OPC=nop             
  nop                                                                                                    #  50    0x9ba80  1      OPC=nop             
  nop                                                                                                    #  51    0x9ba81  1      OPC=nop             
  nop                                                                                                    #  52    0x9ba82  1      OPC=nop             
  nop                                                                                                    #  53    0x9ba83  1      OPC=nop             
  nop                                                                                                    #  54    0x9ba84  1      OPC=nop             
  nop                                                                                                    #  55    0x9ba85  1      OPC=nop             
  nop                                                                                                    #  56    0x9ba86  1      OPC=nop             
  nop                                                                                                    #  57    0x9ba87  1      OPC=nop             
  nop                                                                                                    #  58    0x9ba88  1      OPC=nop             
  nop                                                                                                    #  59    0x9ba89  1      OPC=nop             
  nop                                                                                                    #  60    0x9ba8a  1      OPC=nop             
  nop                                                                                                    #  61    0x9ba8b  1      OPC=nop             
  nop                                                                                                    #  62    0x9ba8c  1      OPC=nop             
                                                                                                                                                      
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode

