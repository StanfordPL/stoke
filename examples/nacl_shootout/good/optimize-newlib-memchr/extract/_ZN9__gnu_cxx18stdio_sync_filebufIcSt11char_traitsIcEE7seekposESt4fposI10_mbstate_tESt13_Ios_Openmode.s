  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xdc0c0
#! rip-offset  0x9c0c0
#! capacity    96 bytes

# Text                                                                                                   #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0x9c0c0  0      OPC=<label>         
  movl %edi, %edi                                                                                        #  1     0x9c0c0  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                       #  2     0x9c0c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                        #  3     0x9c0c5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                        #  4     0x9c0c8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                               #  5     0x9c0ca  4      OPC=movl_r32_m32    
  movq %rdx, 0x18(%rsp)                                                                                  #  6     0x9c0ce  5      OPC=movq_m64_r64    
  xorl %edx, %edx                                                                                        #  7     0x9c0d3  2      OPC=xorl_r32_r32    
  movq %rsi, 0x10(%rsp)                                                                                  #  8     0x9c0d5  5      OPC=movq_m64_r64    
  nop                                                                                                    #  9     0x9c0da  1      OPC=nop             
  nop                                                                                                    #  10    0x9c0db  1      OPC=nop             
  nop                                                                                                    #  11    0x9c0dc  1      OPC=nop             
  nop                                                                                                    #  12    0x9c0dd  1      OPC=nop             
  nop                                                                                                    #  13    0x9c0de  1      OPC=nop             
  nop                                                                                                    #  14    0x9c0df  1      OPC=nop             
  movl %eax, %eax                                                                                        #  15    0x9c0e0  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                           #  16    0x9c0e2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                         #  17    0x9c0e7  2      OPC=xchgw_ax_r16    
  nop                                                                                                    #  18    0x9c0e9  1      OPC=nop             
  nop                                                                                                    #  19    0x9c0ea  1      OPC=nop             
  nop                                                                                                    #  20    0x9c0eb  1      OPC=nop             
  nop                                                                                                    #  21    0x9c0ec  1      OPC=nop             
  nop                                                                                                    #  22    0x9c0ed  1      OPC=nop             
  nop                                                                                                    #  23    0x9c0ee  1      OPC=nop             
  nop                                                                                                    #  24    0x9c0ef  1      OPC=nop             
  nop                                                                                                    #  25    0x9c0f0  1      OPC=nop             
  nop                                                                                                    #  26    0x9c0f1  1      OPC=nop             
  nop                                                                                                    #  27    0x9c0f2  1      OPC=nop             
  nop                                                                                                    #  28    0x9c0f3  1      OPC=nop             
  nop                                                                                                    #  29    0x9c0f4  1      OPC=nop             
  nop                                                                                                    #  30    0x9c0f5  1      OPC=nop             
  nop                                                                                                    #  31    0x9c0f6  1      OPC=nop             
  nop                                                                                                    #  32    0x9c0f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                 #  33    0x9c0f8  6      OPC=andl_r32_imm32  
  nop                                                                                                    #  34    0x9c0fe  1      OPC=nop             
  nop                                                                                                    #  35    0x9c0ff  1      OPC=nop             
  nop                                                                                                    #  36    0x9c100  1      OPC=nop             
  addq %r15, %rax                                                                                        #  37    0x9c101  3      OPC=addq_r64_r64    
  callq %rax                                                                                             #  38    0x9c104  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                       #  39    0x9c106  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                        #  40    0x9c109  3      OPC=addq_r64_r64    
  popq %r11                                                                                              #  41    0x9c10c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                #  42    0x9c10e  7      OPC=andl_r32_imm32  
  nop                                                                                                    #  43    0x9c115  1      OPC=nop             
  nop                                                                                                    #  44    0x9c116  1      OPC=nop             
  nop                                                                                                    #  45    0x9c117  1      OPC=nop             
  nop                                                                                                    #  46    0x9c118  1      OPC=nop             
  addq %r15, %r11                                                                                        #  47    0x9c119  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                              #  48    0x9c11c  3      OPC=jmpq_r64        
  nop                                                                                                    #  49    0x9c11f  1      OPC=nop             
  nop                                                                                                    #  50    0x9c120  1      OPC=nop             
  nop                                                                                                    #  51    0x9c121  1      OPC=nop             
  nop                                                                                                    #  52    0x9c122  1      OPC=nop             
  nop                                                                                                    #  53    0x9c123  1      OPC=nop             
  nop                                                                                                    #  54    0x9c124  1      OPC=nop             
  nop                                                                                                    #  55    0x9c125  1      OPC=nop             
  nop                                                                                                    #  56    0x9c126  1      OPC=nop             
  nop                                                                                                    #  57    0x9c127  1      OPC=nop             
  nop                                                                                                    #  58    0x9c128  1      OPC=nop             
  nop                                                                                                    #  59    0x9c129  1      OPC=nop             
  nop                                                                                                    #  60    0x9c12a  1      OPC=nop             
  nop                                                                                                    #  61    0x9c12b  1      OPC=nop             
  nop                                                                                                    #  62    0x9c12c  1      OPC=nop             
                                                                                                                                                      
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE7seekposESt4fposI10_mbstate_tESt13_Ios_Openmode

