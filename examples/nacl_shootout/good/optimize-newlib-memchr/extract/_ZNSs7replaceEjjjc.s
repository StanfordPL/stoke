  .text
  .globl _ZNSs7replaceEjjjc
  .type _ZNSs7replaceEjjjc, @function

#! file-offset 0xef080
#! rip-offset  0xaf080
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs7replaceEjjjc:                    #        0xaf080  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaf080  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaf082  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaf085  3      OPC=addq_r64_r64    
  movl %edx, %eax                       #  4     0xaf088  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  5     0xaf08a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx              #  6     0xaf08c  4      OPC=movl_r32_m32    
  subl $0xc, %edx                       #  7     0xaf090  3      OPC=subl_r32_imm8   
  movl %edx, %edx                       #  8     0xaf093  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx              #  9     0xaf095  4      OPC=movl_r32_m32    
  cmpl %edx, %esi                       #  10    0xaf099  2      OPC=cmpl_r32_r32    
  nop                                   #  11    0xaf09b  1      OPC=nop             
  nop                                   #  12    0xaf09c  1      OPC=nop             
  nop                                   #  13    0xaf09d  1      OPC=nop             
  nop                                   #  14    0xaf09e  1      OPC=nop             
  nop                                   #  15    0xaf09f  1      OPC=nop             
  ja .L_af0c0                           #  16    0xaf0a0  2      OPC=ja_label        
  subl %esi, %edx                       #  17    0xaf0a2  2      OPC=subl_r32_r32    
  movsbl %r8b, %r8d                     #  18    0xaf0a4  4      OPC=movsbl_r32_r8   
  cmpl %eax, %edx                       #  19    0xaf0a8  2      OPC=cmpl_r32_r32    
  cmoval %eax, %edx                     #  20    0xaf0aa  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  21    0xaf0ad  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  22    0xaf0b0  3      OPC=addq_r64_r64    
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  23    0xaf0b3  5      OPC=jmpq_label_1    
  nop                                   #  24    0xaf0b8  1      OPC=nop             
  nop                                   #  25    0xaf0b9  1      OPC=nop             
  nop                                   #  26    0xaf0ba  1      OPC=nop             
  nop                                   #  27    0xaf0bb  1      OPC=nop             
  nop                                   #  28    0xaf0bc  1      OPC=nop             
  nop                                   #  29    0xaf0bd  1      OPC=nop             
  nop                                   #  30    0xaf0be  1      OPC=nop             
  nop                                   #  31    0xaf0bf  1      OPC=nop             
.L_af0c0:                               #        0xaf0c0  0      OPC=<label>         
  movl $0x1003bb5d, %edi                #  32    0xaf0c0  5      OPC=movl_r32_imm32  
  nop                                   #  33    0xaf0c5  1      OPC=nop             
  nop                                   #  34    0xaf0c6  1      OPC=nop             
  nop                                   #  35    0xaf0c7  1      OPC=nop             
  nop                                   #  36    0xaf0c8  1      OPC=nop             
  nop                                   #  37    0xaf0c9  1      OPC=nop             
  nop                                   #  38    0xaf0ca  1      OPC=nop             
  nop                                   #  39    0xaf0cb  1      OPC=nop             
  nop                                   #  40    0xaf0cc  1      OPC=nop             
  nop                                   #  41    0xaf0cd  1      OPC=nop             
  nop                                   #  42    0xaf0ce  1      OPC=nop             
  nop                                   #  43    0xaf0cf  1      OPC=nop             
  nop                                   #  44    0xaf0d0  1      OPC=nop             
  nop                                   #  45    0xaf0d1  1      OPC=nop             
  nop                                   #  46    0xaf0d2  1      OPC=nop             
  nop                                   #  47    0xaf0d3  1      OPC=nop             
  nop                                   #  48    0xaf0d4  1      OPC=nop             
  nop                                   #  49    0xaf0d5  1      OPC=nop             
  nop                                   #  50    0xaf0d6  1      OPC=nop             
  nop                                   #  51    0xaf0d7  1      OPC=nop             
  nop                                   #  52    0xaf0d8  1      OPC=nop             
  nop                                   #  53    0xaf0d9  1      OPC=nop             
  nop                                   #  54    0xaf0da  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  55    0xaf0db  5      OPC=callq_label     
                                                                                     
.size _ZNSs7replaceEjjjc, .-_ZNSs7replaceEjjjc

