  .text
  .globl _ZNKSs8_M_checkEjPKc
  .type _ZNKSs8_M_checkEjPKc, @function

#! file-offset 0xeaec0
#! rip-offset  0xaaec0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs8_M_checkEjPKc:                  #        0xaaec0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaaec0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaaec2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaaec5  3      OPC=addq_r64_r64    
  movl %edx, %edx                       #  4     0xaaec8  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  5     0xaaeca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  6     0xaaecc  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  7     0xaaed0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  8     0xaaed3  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi              #  9     0xaaed5  4      OPC=cmpl_r32_m32    
  ja .L_aaf00                           #  10    0xaaed9  2      OPC=ja_label        
  nop                                   #  11    0xaaedb  1      OPC=nop             
  nop                                   #  12    0xaaedc  1      OPC=nop             
  nop                                   #  13    0xaaedd  1      OPC=nop             
  nop                                   #  14    0xaaede  1      OPC=nop             
  nop                                   #  15    0xaaedf  1      OPC=nop             
  addl $0x8, %esp                       #  16    0xaaee0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  17    0xaaee3  3      OPC=addq_r64_r64    
  movl %esi, %eax                       #  18    0xaaee6  2      OPC=movl_r32_r32    
  popq %r11                             #  19    0xaaee8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  20    0xaaeea  7      OPC=andl_r32_imm32  
  nop                                   #  21    0xaaef1  1      OPC=nop             
  nop                                   #  22    0xaaef2  1      OPC=nop             
  nop                                   #  23    0xaaef3  1      OPC=nop             
  nop                                   #  24    0xaaef4  1      OPC=nop             
  addq %r15, %r11                       #  25    0xaaef5  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0xaaef8  3      OPC=jmpq_r64        
  nop                                   #  27    0xaaefb  1      OPC=nop             
  nop                                   #  28    0xaaefc  1      OPC=nop             
  nop                                   #  29    0xaaefd  1      OPC=nop             
  nop                                   #  30    0xaaefe  1      OPC=nop             
  nop                                   #  31    0xaaeff  1      OPC=nop             
  nop                                   #  32    0xaaf00  1      OPC=nop             
  nop                                   #  33    0xaaf01  1      OPC=nop             
  nop                                   #  34    0xaaf02  1      OPC=nop             
  nop                                   #  35    0xaaf03  1      OPC=nop             
  nop                                   #  36    0xaaf04  1      OPC=nop             
  nop                                   #  37    0xaaf05  1      OPC=nop             
  nop                                   #  38    0xaaf06  1      OPC=nop             
.L_aaf00:                               #        0xaaf07  0      OPC=<label>         
  movl %edx, %edi                       #  39    0xaaf07  2      OPC=movl_r32_r32    
  nop                                   #  40    0xaaf09  1      OPC=nop             
  nop                                   #  41    0xaaf0a  1      OPC=nop             
  nop                                   #  42    0xaaf0b  1      OPC=nop             
  nop                                   #  43    0xaaf0c  1      OPC=nop             
  nop                                   #  44    0xaaf0d  1      OPC=nop             
  nop                                   #  45    0xaaf0e  1      OPC=nop             
  nop                                   #  46    0xaaf0f  1      OPC=nop             
  nop                                   #  47    0xaaf10  1      OPC=nop             
  nop                                   #  48    0xaaf11  1      OPC=nop             
  nop                                   #  49    0xaaf12  1      OPC=nop             
  nop                                   #  50    0xaaf13  1      OPC=nop             
  nop                                   #  51    0xaaf14  1      OPC=nop             
  nop                                   #  52    0xaaf15  1      OPC=nop             
  nop                                   #  53    0xaaf16  1      OPC=nop             
  nop                                   #  54    0xaaf17  1      OPC=nop             
  nop                                   #  55    0xaaf18  1      OPC=nop             
  nop                                   #  56    0xaaf19  1      OPC=nop             
  nop                                   #  57    0xaaf1a  1      OPC=nop             
  nop                                   #  58    0xaaf1b  1      OPC=nop             
  nop                                   #  59    0xaaf1c  1      OPC=nop             
  nop                                   #  60    0xaaf1d  1      OPC=nop             
  nop                                   #  61    0xaaf1e  1      OPC=nop             
  nop                                   #  62    0xaaf1f  1      OPC=nop             
  nop                                   #  63    0xaaf20  1      OPC=nop             
  nop                                   #  64    0xaaf21  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  65    0xaaf22  5      OPC=callq_label     
                                                                                     
.size _ZNKSs8_M_checkEjPKc, .-_ZNKSs8_M_checkEjPKc

