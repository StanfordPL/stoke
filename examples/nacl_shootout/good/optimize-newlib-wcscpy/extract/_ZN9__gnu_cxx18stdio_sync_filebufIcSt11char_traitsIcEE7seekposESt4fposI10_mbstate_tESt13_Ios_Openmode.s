  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xdb6a0
#! rip-offset  0x9b6a0
#! capacity    96 bytes

# Text                                                                                                   #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0x9b6a0  0      OPC=<label>         
  movl %edi, %edi                                                                                        #  1     0x9b6a0  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                       #  2     0x9b6a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                        #  3     0x9b6a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                        #  4     0x9b6a8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                               #  5     0x9b6aa  4      OPC=movl_r32_m32    
  movq %rdx, 0x18(%rsp)                                                                                  #  6     0x9b6ae  5      OPC=movq_m64_r64    
  xorl %edx, %edx                                                                                        #  7     0x9b6b3  2      OPC=xorl_r32_r32    
  movq %rsi, 0x10(%rsp)                                                                                  #  8     0x9b6b5  5      OPC=movq_m64_r64    
  nop                                                                                                    #  9     0x9b6ba  1      OPC=nop             
  nop                                                                                                    #  10    0x9b6bb  1      OPC=nop             
  nop                                                                                                    #  11    0x9b6bc  1      OPC=nop             
  nop                                                                                                    #  12    0x9b6bd  1      OPC=nop             
  nop                                                                                                    #  13    0x9b6be  1      OPC=nop             
  nop                                                                                                    #  14    0x9b6bf  1      OPC=nop             
  movl %eax, %eax                                                                                        #  15    0x9b6c0  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                           #  16    0x9b6c2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                         #  17    0x9b6c7  2      OPC=xchgw_ax_r16    
  nop                                                                                                    #  18    0x9b6c9  1      OPC=nop             
  nop                                                                                                    #  19    0x9b6ca  1      OPC=nop             
  nop                                                                                                    #  20    0x9b6cb  1      OPC=nop             
  nop                                                                                                    #  21    0x9b6cc  1      OPC=nop             
  nop                                                                                                    #  22    0x9b6cd  1      OPC=nop             
  nop                                                                                                    #  23    0x9b6ce  1      OPC=nop             
  nop                                                                                                    #  24    0x9b6cf  1      OPC=nop             
  nop                                                                                                    #  25    0x9b6d0  1      OPC=nop             
  nop                                                                                                    #  26    0x9b6d1  1      OPC=nop             
  nop                                                                                                    #  27    0x9b6d2  1      OPC=nop             
  nop                                                                                                    #  28    0x9b6d3  1      OPC=nop             
  nop                                                                                                    #  29    0x9b6d4  1      OPC=nop             
  nop                                                                                                    #  30    0x9b6d5  1      OPC=nop             
  nop                                                                                                    #  31    0x9b6d6  1      OPC=nop             
  nop                                                                                                    #  32    0x9b6d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                 #  33    0x9b6d8  6      OPC=andl_r32_imm32  
  nop                                                                                                    #  34    0x9b6de  1      OPC=nop             
  nop                                                                                                    #  35    0x9b6df  1      OPC=nop             
  nop                                                                                                    #  36    0x9b6e0  1      OPC=nop             
  addq %r15, %rax                                                                                        #  37    0x9b6e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                             #  38    0x9b6e4  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                       #  39    0x9b6e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                        #  40    0x9b6e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                              #  41    0x9b6ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                #  42    0x9b6ee  7      OPC=andl_r32_imm32  
  nop                                                                                                    #  43    0x9b6f5  1      OPC=nop             
  nop                                                                                                    #  44    0x9b6f6  1      OPC=nop             
  nop                                                                                                    #  45    0x9b6f7  1      OPC=nop             
  nop                                                                                                    #  46    0x9b6f8  1      OPC=nop             
  addq %r15, %r11                                                                                        #  47    0x9b6f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                              #  48    0x9b6fc  3      OPC=jmpq_r64        
  nop                                                                                                    #  49    0x9b6ff  1      OPC=nop             
  nop                                                                                                    #  50    0x9b700  1      OPC=nop             
  nop                                                                                                    #  51    0x9b701  1      OPC=nop             
  nop                                                                                                    #  52    0x9b702  1      OPC=nop             
  nop                                                                                                    #  53    0x9b703  1      OPC=nop             
  nop                                                                                                    #  54    0x9b704  1      OPC=nop             
  nop                                                                                                    #  55    0x9b705  1      OPC=nop             
  nop                                                                                                    #  56    0x9b706  1      OPC=nop             
  nop                                                                                                    #  57    0x9b707  1      OPC=nop             
  nop                                                                                                    #  58    0x9b708  1      OPC=nop             
  nop                                                                                                    #  59    0x9b709  1      OPC=nop             
  nop                                                                                                    #  60    0x9b70a  1      OPC=nop             
  nop                                                                                                    #  61    0x9b70b  1      OPC=nop             
  nop                                                                                                    #  62    0x9b70c  1      OPC=nop             
                                                                                                                                                      
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode

