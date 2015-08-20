  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xdb9a0
#! rip-offset  0x9b9a0
#! capacity    96 bytes

# Text                                                                                                   #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0x9b9a0  0      OPC=<label>         
  movl %edi, %edi                                                                                        #  1     0x9b9a0  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                       #  2     0x9b9a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                        #  3     0x9b9a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                        #  4     0x9b9a8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                               #  5     0x9b9aa  4      OPC=movl_r32_m32    
  movq %rdx, 0x18(%rsp)                                                                                  #  6     0x9b9ae  5      OPC=movq_m64_r64    
  xorl %edx, %edx                                                                                        #  7     0x9b9b3  2      OPC=xorl_r32_r32    
  movq %rsi, 0x10(%rsp)                                                                                  #  8     0x9b9b5  5      OPC=movq_m64_r64    
  nop                                                                                                    #  9     0x9b9ba  1      OPC=nop             
  nop                                                                                                    #  10    0x9b9bb  1      OPC=nop             
  nop                                                                                                    #  11    0x9b9bc  1      OPC=nop             
  nop                                                                                                    #  12    0x9b9bd  1      OPC=nop             
  nop                                                                                                    #  13    0x9b9be  1      OPC=nop             
  nop                                                                                                    #  14    0x9b9bf  1      OPC=nop             
  movl %eax, %eax                                                                                        #  15    0x9b9c0  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                           #  16    0x9b9c2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                         #  17    0x9b9c7  2      OPC=xchgw_ax_r16    
  nop                                                                                                    #  18    0x9b9c9  1      OPC=nop             
  nop                                                                                                    #  19    0x9b9ca  1      OPC=nop             
  nop                                                                                                    #  20    0x9b9cb  1      OPC=nop             
  nop                                                                                                    #  21    0x9b9cc  1      OPC=nop             
  nop                                                                                                    #  22    0x9b9cd  1      OPC=nop             
  nop                                                                                                    #  23    0x9b9ce  1      OPC=nop             
  nop                                                                                                    #  24    0x9b9cf  1      OPC=nop             
  nop                                                                                                    #  25    0x9b9d0  1      OPC=nop             
  nop                                                                                                    #  26    0x9b9d1  1      OPC=nop             
  nop                                                                                                    #  27    0x9b9d2  1      OPC=nop             
  nop                                                                                                    #  28    0x9b9d3  1      OPC=nop             
  nop                                                                                                    #  29    0x9b9d4  1      OPC=nop             
  nop                                                                                                    #  30    0x9b9d5  1      OPC=nop             
  nop                                                                                                    #  31    0x9b9d6  1      OPC=nop             
  nop                                                                                                    #  32    0x9b9d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                 #  33    0x9b9d8  6      OPC=andl_r32_imm32  
  nop                                                                                                    #  34    0x9b9de  1      OPC=nop             
  nop                                                                                                    #  35    0x9b9df  1      OPC=nop             
  nop                                                                                                    #  36    0x9b9e0  1      OPC=nop             
  addq %r15, %rax                                                                                        #  37    0x9b9e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                             #  38    0x9b9e4  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                       #  39    0x9b9e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                        #  40    0x9b9e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                              #  41    0x9b9ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                #  42    0x9b9ee  7      OPC=andl_r32_imm32  
  nop                                                                                                    #  43    0x9b9f5  1      OPC=nop             
  nop                                                                                                    #  44    0x9b9f6  1      OPC=nop             
  nop                                                                                                    #  45    0x9b9f7  1      OPC=nop             
  nop                                                                                                    #  46    0x9b9f8  1      OPC=nop             
  addq %r15, %r11                                                                                        #  47    0x9b9f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                              #  48    0x9b9fc  3      OPC=jmpq_r64        
  nop                                                                                                    #  49    0x9b9ff  1      OPC=nop             
  nop                                                                                                    #  50    0x9ba00  1      OPC=nop             
  nop                                                                                                    #  51    0x9ba01  1      OPC=nop             
  nop                                                                                                    #  52    0x9ba02  1      OPC=nop             
  nop                                                                                                    #  53    0x9ba03  1      OPC=nop             
  nop                                                                                                    #  54    0x9ba04  1      OPC=nop             
  nop                                                                                                    #  55    0x9ba05  1      OPC=nop             
  nop                                                                                                    #  56    0x9ba06  1      OPC=nop             
  nop                                                                                                    #  57    0x9ba07  1      OPC=nop             
  nop                                                                                                    #  58    0x9ba08  1      OPC=nop             
  nop                                                                                                    #  59    0x9ba09  1      OPC=nop             
  nop                                                                                                    #  60    0x9ba0a  1      OPC=nop             
  nop                                                                                                    #  61    0x9ba0b  1      OPC=nop             
  nop                                                                                                    #  62    0x9ba0c  1      OPC=nop             
                                                                                                                                                      
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode

