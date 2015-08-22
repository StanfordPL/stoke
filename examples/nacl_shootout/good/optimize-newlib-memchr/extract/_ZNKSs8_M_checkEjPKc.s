  .text
  .globl _ZNKSs8_M_checkEjPKc
  .type _ZNKSs8_M_checkEjPKc, @function

#! file-offset 0xeb8e0
#! rip-offset  0xab8e0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs8_M_checkEjPKc:                  #        0xab8e0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xab8e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xab8e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xab8e5  3      OPC=addq_r64_r64    
  movl %edx, %edx                       #  4     0xab8e8  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  5     0xab8ea  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  6     0xab8ec  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  7     0xab8f0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  8     0xab8f3  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi              #  9     0xab8f5  4      OPC=cmpl_r32_m32    
  ja .L_ab920                           #  10    0xab8f9  2      OPC=ja_label        
  nop                                   #  11    0xab8fb  1      OPC=nop             
  nop                                   #  12    0xab8fc  1      OPC=nop             
  nop                                   #  13    0xab8fd  1      OPC=nop             
  nop                                   #  14    0xab8fe  1      OPC=nop             
  nop                                   #  15    0xab8ff  1      OPC=nop             
  addl $0x8, %esp                       #  16    0xab900  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  17    0xab903  3      OPC=addq_r64_r64    
  movl %esi, %eax                       #  18    0xab906  2      OPC=movl_r32_r32    
  popq %r11                             #  19    0xab908  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  20    0xab90a  7      OPC=andl_r32_imm32  
  nop                                   #  21    0xab911  1      OPC=nop             
  nop                                   #  22    0xab912  1      OPC=nop             
  nop                                   #  23    0xab913  1      OPC=nop             
  nop                                   #  24    0xab914  1      OPC=nop             
  addq %r15, %r11                       #  25    0xab915  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0xab918  3      OPC=jmpq_r64        
  nop                                   #  27    0xab91b  1      OPC=nop             
  nop                                   #  28    0xab91c  1      OPC=nop             
  nop                                   #  29    0xab91d  1      OPC=nop             
  nop                                   #  30    0xab91e  1      OPC=nop             
  nop                                   #  31    0xab91f  1      OPC=nop             
  nop                                   #  32    0xab920  1      OPC=nop             
  nop                                   #  33    0xab921  1      OPC=nop             
  nop                                   #  34    0xab922  1      OPC=nop             
  nop                                   #  35    0xab923  1      OPC=nop             
  nop                                   #  36    0xab924  1      OPC=nop             
  nop                                   #  37    0xab925  1      OPC=nop             
  nop                                   #  38    0xab926  1      OPC=nop             
.L_ab920:                               #        0xab927  0      OPC=<label>         
  movl %edx, %edi                       #  39    0xab927  2      OPC=movl_r32_r32    
  nop                                   #  40    0xab929  1      OPC=nop             
  nop                                   #  41    0xab92a  1      OPC=nop             
  nop                                   #  42    0xab92b  1      OPC=nop             
  nop                                   #  43    0xab92c  1      OPC=nop             
  nop                                   #  44    0xab92d  1      OPC=nop             
  nop                                   #  45    0xab92e  1      OPC=nop             
  nop                                   #  46    0xab92f  1      OPC=nop             
  nop                                   #  47    0xab930  1      OPC=nop             
  nop                                   #  48    0xab931  1      OPC=nop             
  nop                                   #  49    0xab932  1      OPC=nop             
  nop                                   #  50    0xab933  1      OPC=nop             
  nop                                   #  51    0xab934  1      OPC=nop             
  nop                                   #  52    0xab935  1      OPC=nop             
  nop                                   #  53    0xab936  1      OPC=nop             
  nop                                   #  54    0xab937  1      OPC=nop             
  nop                                   #  55    0xab938  1      OPC=nop             
  nop                                   #  56    0xab939  1      OPC=nop             
  nop                                   #  57    0xab93a  1      OPC=nop             
  nop                                   #  58    0xab93b  1      OPC=nop             
  nop                                   #  59    0xab93c  1      OPC=nop             
  nop                                   #  60    0xab93d  1      OPC=nop             
  nop                                   #  61    0xab93e  1      OPC=nop             
  nop                                   #  62    0xab93f  1      OPC=nop             
  nop                                   #  63    0xab940  1      OPC=nop             
  nop                                   #  64    0xab941  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  65    0xab942  5      OPC=callq_label     
                                                                                     
.size _ZNKSs8_M_checkEjPKc, .-_ZNKSs8_M_checkEjPKc

