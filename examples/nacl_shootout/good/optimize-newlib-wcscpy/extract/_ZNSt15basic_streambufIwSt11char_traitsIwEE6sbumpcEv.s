  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv, @function

#! file-offset 0xe92c0
#! rip-offset  0xa92c0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv:  #        0xa92c0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa92c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa92c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx                           #  3     0xa92c4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa92c9  2      OPC=movl_r32_r32    
  cmpl %edx, 0xc(%r15,%rdi,1)                           #  5     0xa92cb  5      OPC=cmpl_m32_r32    
  jbe .L_a9300                                          #  6     0xa92d0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa92d2  2      OPC=popq_r64_1      
  movl %edx, %edx                                       #  8     0xa92d4  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax                              #  9     0xa92d6  4      OPC=movl_r32_m32    
  addl $0x4, %edx                                       #  10    0xa92da  3      OPC=addl_r32_imm8   
  nop                                                   #  11    0xa92dd  1      OPC=nop             
  nop                                                   #  12    0xa92de  1      OPC=nop             
  nop                                                   #  13    0xa92df  1      OPC=nop             
  movl %edi, %edi                                       #  14    0xa92e0  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                           #  15    0xa92e2  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                               #  16    0xa92e7  7      OPC=andl_r32_imm32  
  nop                                                   #  17    0xa92ee  1      OPC=nop             
  nop                                                   #  18    0xa92ef  1      OPC=nop             
  nop                                                   #  19    0xa92f0  1      OPC=nop             
  nop                                                   #  20    0xa92f1  1      OPC=nop             
  addq %r15, %r11                                       #  21    0xa92f2  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  22    0xa92f5  3      OPC=jmpq_r64        
  nop                                                   #  23    0xa92f8  1      OPC=nop             
  nop                                                   #  24    0xa92f9  1      OPC=nop             
  nop                                                   #  25    0xa92fa  1      OPC=nop             
  nop                                                   #  26    0xa92fb  1      OPC=nop             
  nop                                                   #  27    0xa92fc  1      OPC=nop             
  nop                                                   #  28    0xa92fd  1      OPC=nop             
  nop                                                   #  29    0xa92fe  1      OPC=nop             
  nop                                                   #  30    0xa92ff  1      OPC=nop             
  nop                                                   #  31    0xa9300  1      OPC=nop             
  nop                                                   #  32    0xa9301  1      OPC=nop             
  nop                                                   #  33    0xa9302  1      OPC=nop             
  nop                                                   #  34    0xa9303  1      OPC=nop             
  nop                                                   #  35    0xa9304  1      OPC=nop             
  nop                                                   #  36    0xa9305  1      OPC=nop             
  nop                                                   #  37    0xa9306  1      OPC=nop             
.L_a9300:                                               #        0xa9307  0      OPC=<label>         
  movl %edi, %edi                                       #  38    0xa9307  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  39    0xa9309  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  40    0xa930d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  41    0xa930f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  42    0xa9314  6      OPC=andl_r32_imm32  
  nop                                                   #  43    0xa931a  1      OPC=nop             
  nop                                                   #  44    0xa931b  1      OPC=nop             
  nop                                                   #  45    0xa931c  1      OPC=nop             
  addq %r15, %rax                                       #  46    0xa931d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  47    0xa9320  2      OPC=jmpq_r64        
  nop                                                   #  48    0xa9322  1      OPC=nop             
  nop                                                   #  49    0xa9323  1      OPC=nop             
  nop                                                   #  50    0xa9324  1      OPC=nop             
  nop                                                   #  51    0xa9325  1      OPC=nop             
  nop                                                   #  52    0xa9326  1      OPC=nop             
  nop                                                   #  53    0xa9327  1      OPC=nop             
  nop                                                   #  54    0xa9328  1      OPC=nop             
  nop                                                   #  55    0xa9329  1      OPC=nop             
  nop                                                   #  56    0xa932a  1      OPC=nop             
  nop                                                   #  57    0xa932b  1      OPC=nop             
  nop                                                   #  58    0xa932c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv

