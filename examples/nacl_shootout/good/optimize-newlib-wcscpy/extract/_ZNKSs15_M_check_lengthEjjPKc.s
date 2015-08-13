  .text
  .globl _ZNKSs15_M_check_lengthEjjPKc
  .type _ZNKSs15_M_check_lengthEjjPKc, @function

#! file-offset 0xeaae0
#! rip-offset  0xaaae0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs15_M_check_lengthEjjPKc:         #        0xaaae0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaaae0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaaae2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaaae5  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                       #  4     0xaaae8  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  5     0xaaaea  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  6     0xaaaec  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  7     0xaaaf0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  8     0xaaaf3  2      OPC=movl_r32_r32    
  subl (%r15,%rax,1), %esi              #  9     0xaaaf5  4      OPC=subl_r32_m32    
  addl $0x3ffffffc, %esi                #  10    0xaaaf9  6      OPC=addl_r32_imm32  
  nop                                   #  11    0xaaaff  1      OPC=nop             
  cmpl %edx, %esi                       #  12    0xaab00  2      OPC=cmpl_r32_r32    
  jb .L_aab20                           #  13    0xaab02  2      OPC=jb_label        
  addl $0x8, %esp                       #  14    0xaab04  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  15    0xaab07  3      OPC=addq_r64_r64    
  popq %r11                             #  16    0xaab0a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  17    0xaab0c  7      OPC=andl_r32_imm32  
  nop                                   #  18    0xaab13  1      OPC=nop             
  nop                                   #  19    0xaab14  1      OPC=nop             
  nop                                   #  20    0xaab15  1      OPC=nop             
  nop                                   #  21    0xaab16  1      OPC=nop             
  addq %r15, %r11                       #  22    0xaab17  3      OPC=addq_r64_r64    
  jmpq %r11                             #  23    0xaab1a  3      OPC=jmpq_r64        
  nop                                   #  24    0xaab1d  1      OPC=nop             
  nop                                   #  25    0xaab1e  1      OPC=nop             
  nop                                   #  26    0xaab1f  1      OPC=nop             
  nop                                   #  27    0xaab20  1      OPC=nop             
  nop                                   #  28    0xaab21  1      OPC=nop             
  nop                                   #  29    0xaab22  1      OPC=nop             
  nop                                   #  30    0xaab23  1      OPC=nop             
  nop                                   #  31    0xaab24  1      OPC=nop             
  nop                                   #  32    0xaab25  1      OPC=nop             
  nop                                   #  33    0xaab26  1      OPC=nop             
.L_aab20:                               #        0xaab27  0      OPC=<label>         
  movl %ecx, %edi                       #  34    0xaab27  2      OPC=movl_r32_r32    
  nop                                   #  35    0xaab29  1      OPC=nop             
  nop                                   #  36    0xaab2a  1      OPC=nop             
  nop                                   #  37    0xaab2b  1      OPC=nop             
  nop                                   #  38    0xaab2c  1      OPC=nop             
  nop                                   #  39    0xaab2d  1      OPC=nop             
  nop                                   #  40    0xaab2e  1      OPC=nop             
  nop                                   #  41    0xaab2f  1      OPC=nop             
  nop                                   #  42    0xaab30  1      OPC=nop             
  nop                                   #  43    0xaab31  1      OPC=nop             
  nop                                   #  44    0xaab32  1      OPC=nop             
  nop                                   #  45    0xaab33  1      OPC=nop             
  nop                                   #  46    0xaab34  1      OPC=nop             
  nop                                   #  47    0xaab35  1      OPC=nop             
  nop                                   #  48    0xaab36  1      OPC=nop             
  nop                                   #  49    0xaab37  1      OPC=nop             
  nop                                   #  50    0xaab38  1      OPC=nop             
  nop                                   #  51    0xaab39  1      OPC=nop             
  nop                                   #  52    0xaab3a  1      OPC=nop             
  nop                                   #  53    0xaab3b  1      OPC=nop             
  nop                                   #  54    0xaab3c  1      OPC=nop             
  nop                                   #  55    0xaab3d  1      OPC=nop             
  nop                                   #  56    0xaab3e  1      OPC=nop             
  nop                                   #  57    0xaab3f  1      OPC=nop             
  nop                                   #  58    0xaab40  1      OPC=nop             
  nop                                   #  59    0xaab41  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc  #  60    0xaab42  5      OPC=callq_label     
                                                                                     
.size _ZNKSs15_M_check_lengthEjjPKc, .-_ZNKSs15_M_check_lengthEjjPKc

