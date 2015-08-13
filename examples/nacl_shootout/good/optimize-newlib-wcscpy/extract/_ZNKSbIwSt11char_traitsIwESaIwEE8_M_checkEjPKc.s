  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc, @function

#! file-offset 0x116780
#! rip-offset  0xd6780
#! capacity    96 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc:  #        0xd6780  0      OPC=<label>         
  movl %edi, %edi                                 #  1     0xd6780  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                 #  2     0xd6782  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                 #  3     0xd6785  3      OPC=addq_r64_r64    
  movl %edx, %edx                                 #  4     0xd6788  2      OPC=movl_r32_r32    
  movl %edi, %edi                                 #  5     0xd678a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                        #  6     0xd678c  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                 #  7     0xd6790  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                 #  8     0xd6793  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi                        #  9     0xd6795  4      OPC=cmpl_r32_m32    
  ja .L_d67c0                                     #  10    0xd6799  2      OPC=ja_label        
  nop                                             #  11    0xd679b  1      OPC=nop             
  nop                                             #  12    0xd679c  1      OPC=nop             
  nop                                             #  13    0xd679d  1      OPC=nop             
  nop                                             #  14    0xd679e  1      OPC=nop             
  nop                                             #  15    0xd679f  1      OPC=nop             
  addl $0x8, %esp                                 #  16    0xd67a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                 #  17    0xd67a3  3      OPC=addq_r64_r64    
  movl %esi, %eax                                 #  18    0xd67a6  2      OPC=movl_r32_r32    
  popq %r11                                       #  19    0xd67a8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                         #  20    0xd67aa  7      OPC=andl_r32_imm32  
  nop                                             #  21    0xd67b1  1      OPC=nop             
  nop                                             #  22    0xd67b2  1      OPC=nop             
  nop                                             #  23    0xd67b3  1      OPC=nop             
  nop                                             #  24    0xd67b4  1      OPC=nop             
  addq %r15, %r11                                 #  25    0xd67b5  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  26    0xd67b8  3      OPC=jmpq_r64        
  nop                                             #  27    0xd67bb  1      OPC=nop             
  nop                                             #  28    0xd67bc  1      OPC=nop             
  nop                                             #  29    0xd67bd  1      OPC=nop             
  nop                                             #  30    0xd67be  1      OPC=nop             
  nop                                             #  31    0xd67bf  1      OPC=nop             
  nop                                             #  32    0xd67c0  1      OPC=nop             
  nop                                             #  33    0xd67c1  1      OPC=nop             
  nop                                             #  34    0xd67c2  1      OPC=nop             
  nop                                             #  35    0xd67c3  1      OPC=nop             
  nop                                             #  36    0xd67c4  1      OPC=nop             
  nop                                             #  37    0xd67c5  1      OPC=nop             
  nop                                             #  38    0xd67c6  1      OPC=nop             
.L_d67c0:                                         #        0xd67c7  0      OPC=<label>         
  movl %edx, %edi                                 #  39    0xd67c7  2      OPC=movl_r32_r32    
  nop                                             #  40    0xd67c9  1      OPC=nop             
  nop                                             #  41    0xd67ca  1      OPC=nop             
  nop                                             #  42    0xd67cb  1      OPC=nop             
  nop                                             #  43    0xd67cc  1      OPC=nop             
  nop                                             #  44    0xd67cd  1      OPC=nop             
  nop                                             #  45    0xd67ce  1      OPC=nop             
  nop                                             #  46    0xd67cf  1      OPC=nop             
  nop                                             #  47    0xd67d0  1      OPC=nop             
  nop                                             #  48    0xd67d1  1      OPC=nop             
  nop                                             #  49    0xd67d2  1      OPC=nop             
  nop                                             #  50    0xd67d3  1      OPC=nop             
  nop                                             #  51    0xd67d4  1      OPC=nop             
  nop                                             #  52    0xd67d5  1      OPC=nop             
  nop                                             #  53    0xd67d6  1      OPC=nop             
  nop                                             #  54    0xd67d7  1      OPC=nop             
  nop                                             #  55    0xd67d8  1      OPC=nop             
  nop                                             #  56    0xd67d9  1      OPC=nop             
  nop                                             #  57    0xd67da  1      OPC=nop             
  nop                                             #  58    0xd67db  1      OPC=nop             
  nop                                             #  59    0xd67dc  1      OPC=nop             
  nop                                             #  60    0xd67dd  1      OPC=nop             
  nop                                             #  61    0xd67de  1      OPC=nop             
  nop                                             #  62    0xd67df  1      OPC=nop             
  nop                                             #  63    0xd67e0  1      OPC=nop             
  nop                                             #  64    0xd67e1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc            #  65    0xd67e2  5      OPC=callq_label     
                                                                                               
.size _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc, .-_ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc

