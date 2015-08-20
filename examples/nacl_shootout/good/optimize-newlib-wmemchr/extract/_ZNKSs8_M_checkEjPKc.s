  .text
  .globl _ZNKSs8_M_checkEjPKc
  .type _ZNKSs8_M_checkEjPKc, @function

#! file-offset 0xeb1c0
#! rip-offset  0xab1c0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs8_M_checkEjPKc:                  #        0xab1c0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xab1c0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xab1c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xab1c5  3      OPC=addq_r64_r64    
  movl %edx, %edx                       #  4     0xab1c8  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  5     0xab1ca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  6     0xab1cc  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  7     0xab1d0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  8     0xab1d3  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi              #  9     0xab1d5  4      OPC=cmpl_r32_m32    
  ja .L_ab200                           #  10    0xab1d9  2      OPC=ja_label        
  nop                                   #  11    0xab1db  1      OPC=nop             
  nop                                   #  12    0xab1dc  1      OPC=nop             
  nop                                   #  13    0xab1dd  1      OPC=nop             
  nop                                   #  14    0xab1de  1      OPC=nop             
  nop                                   #  15    0xab1df  1      OPC=nop             
  addl $0x8, %esp                       #  16    0xab1e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  17    0xab1e3  3      OPC=addq_r64_r64    
  movl %esi, %eax                       #  18    0xab1e6  2      OPC=movl_r32_r32    
  popq %r11                             #  19    0xab1e8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  20    0xab1ea  7      OPC=andl_r32_imm32  
  nop                                   #  21    0xab1f1  1      OPC=nop             
  nop                                   #  22    0xab1f2  1      OPC=nop             
  nop                                   #  23    0xab1f3  1      OPC=nop             
  nop                                   #  24    0xab1f4  1      OPC=nop             
  addq %r15, %r11                       #  25    0xab1f5  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0xab1f8  3      OPC=jmpq_r64        
  nop                                   #  27    0xab1fb  1      OPC=nop             
  nop                                   #  28    0xab1fc  1      OPC=nop             
  nop                                   #  29    0xab1fd  1      OPC=nop             
  nop                                   #  30    0xab1fe  1      OPC=nop             
  nop                                   #  31    0xab1ff  1      OPC=nop             
  nop                                   #  32    0xab200  1      OPC=nop             
  nop                                   #  33    0xab201  1      OPC=nop             
  nop                                   #  34    0xab202  1      OPC=nop             
  nop                                   #  35    0xab203  1      OPC=nop             
  nop                                   #  36    0xab204  1      OPC=nop             
  nop                                   #  37    0xab205  1      OPC=nop             
  nop                                   #  38    0xab206  1      OPC=nop             
.L_ab200:                               #        0xab207  0      OPC=<label>         
  movl %edx, %edi                       #  39    0xab207  2      OPC=movl_r32_r32    
  nop                                   #  40    0xab209  1      OPC=nop             
  nop                                   #  41    0xab20a  1      OPC=nop             
  nop                                   #  42    0xab20b  1      OPC=nop             
  nop                                   #  43    0xab20c  1      OPC=nop             
  nop                                   #  44    0xab20d  1      OPC=nop             
  nop                                   #  45    0xab20e  1      OPC=nop             
  nop                                   #  46    0xab20f  1      OPC=nop             
  nop                                   #  47    0xab210  1      OPC=nop             
  nop                                   #  48    0xab211  1      OPC=nop             
  nop                                   #  49    0xab212  1      OPC=nop             
  nop                                   #  50    0xab213  1      OPC=nop             
  nop                                   #  51    0xab214  1      OPC=nop             
  nop                                   #  52    0xab215  1      OPC=nop             
  nop                                   #  53    0xab216  1      OPC=nop             
  nop                                   #  54    0xab217  1      OPC=nop             
  nop                                   #  55    0xab218  1      OPC=nop             
  nop                                   #  56    0xab219  1      OPC=nop             
  nop                                   #  57    0xab21a  1      OPC=nop             
  nop                                   #  58    0xab21b  1      OPC=nop             
  nop                                   #  59    0xab21c  1      OPC=nop             
  nop                                   #  60    0xab21d  1      OPC=nop             
  nop                                   #  61    0xab21e  1      OPC=nop             
  nop                                   #  62    0xab21f  1      OPC=nop             
  nop                                   #  63    0xab220  1      OPC=nop             
  nop                                   #  64    0xab221  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  65    0xab222  5      OPC=callq_label     
                                                                                     
.size _ZNKSs8_M_checkEjPKc, .-_ZNKSs8_M_checkEjPKc

