  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc, @function

#! file-offset 0x1171a0
#! rip-offset  0xd71a0
#! capacity    96 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc:  #        0xd71a0  0      OPC=<label>         
  movl %edi, %edi                                 #  1     0xd71a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                 #  2     0xd71a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                 #  3     0xd71a5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                 #  4     0xd71a8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                 #  5     0xd71aa  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                        #  6     0xd71ac  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                 #  7     0xd71b0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                 #  8     0xd71b3  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi                        #  9     0xd71b5  4      OPC=cmpl_r32_m32    
  ja .L_d71e0                                     #  10    0xd71b9  2      OPC=ja_label        
  nop                                             #  11    0xd71bb  1      OPC=nop             
  nop                                             #  12    0xd71bc  1      OPC=nop             
  nop                                             #  13    0xd71bd  1      OPC=nop             
  nop                                             #  14    0xd71be  1      OPC=nop             
  nop                                             #  15    0xd71bf  1      OPC=nop             
  addl $0x8, %esp                                 #  16    0xd71c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                 #  17    0xd71c3  3      OPC=addq_r64_r64    
  movl %esi, %eax                                 #  18    0xd71c6  2      OPC=movl_r32_r32    
  popq %r11                                       #  19    0xd71c8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                         #  20    0xd71ca  7      OPC=andl_r32_imm32  
  nop                                             #  21    0xd71d1  1      OPC=nop             
  nop                                             #  22    0xd71d2  1      OPC=nop             
  nop                                             #  23    0xd71d3  1      OPC=nop             
  nop                                             #  24    0xd71d4  1      OPC=nop             
  addq %r15, %r11                                 #  25    0xd71d5  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  26    0xd71d8  3      OPC=jmpq_r64        
  nop                                             #  27    0xd71db  1      OPC=nop             
  nop                                             #  28    0xd71dc  1      OPC=nop             
  nop                                             #  29    0xd71dd  1      OPC=nop             
  nop                                             #  30    0xd71de  1      OPC=nop             
  nop                                             #  31    0xd71df  1      OPC=nop             
  nop                                             #  32    0xd71e0  1      OPC=nop             
  nop                                             #  33    0xd71e1  1      OPC=nop             
  nop                                             #  34    0xd71e2  1      OPC=nop             
  nop                                             #  35    0xd71e3  1      OPC=nop             
  nop                                             #  36    0xd71e4  1      OPC=nop             
  nop                                             #  37    0xd71e5  1      OPC=nop             
  nop                                             #  38    0xd71e6  1      OPC=nop             
.L_d71e0:                                         #        0xd71e7  0      OPC=<label>         
  movl %edx, %edi                                 #  39    0xd71e7  2      OPC=movl_r32_r32    
  nop                                             #  40    0xd71e9  1      OPC=nop             
  nop                                             #  41    0xd71ea  1      OPC=nop             
  nop                                             #  42    0xd71eb  1      OPC=nop             
  nop                                             #  43    0xd71ec  1      OPC=nop             
  nop                                             #  44    0xd71ed  1      OPC=nop             
  nop                                             #  45    0xd71ee  1      OPC=nop             
  nop                                             #  46    0xd71ef  1      OPC=nop             
  nop                                             #  47    0xd71f0  1      OPC=nop             
  nop                                             #  48    0xd71f1  1      OPC=nop             
  nop                                             #  49    0xd71f2  1      OPC=nop             
  nop                                             #  50    0xd71f3  1      OPC=nop             
  nop                                             #  51    0xd71f4  1      OPC=nop             
  nop                                             #  52    0xd71f5  1      OPC=nop             
  nop                                             #  53    0xd71f6  1      OPC=nop             
  nop                                             #  54    0xd71f7  1      OPC=nop             
  nop                                             #  55    0xd71f8  1      OPC=nop             
  nop                                             #  56    0xd71f9  1      OPC=nop             
  nop                                             #  57    0xd71fa  1      OPC=nop             
  nop                                             #  58    0xd71fb  1      OPC=nop             
  nop                                             #  59    0xd71fc  1      OPC=nop             
  nop                                             #  60    0xd71fd  1      OPC=nop             
  nop                                             #  61    0xd71fe  1      OPC=nop             
  nop                                             #  62    0xd71ff  1      OPC=nop             
  nop                                             #  63    0xd7200  1      OPC=nop             
  nop                                             #  64    0xd7201  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc            #  65    0xd7202  5      OPC=callq_label     
                                                                                               
.size _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc, .-_ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc

