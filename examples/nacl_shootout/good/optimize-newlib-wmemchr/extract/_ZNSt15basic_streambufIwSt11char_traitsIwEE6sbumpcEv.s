  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv, @function

#! file-offset 0xe95c0
#! rip-offset  0xa95c0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv:  #        0xa95c0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa95c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa95c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx                           #  3     0xa95c4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa95c9  2      OPC=movl_r32_r32    
  cmpl %edx, 0xc(%r15,%rdi,1)                           #  5     0xa95cb  5      OPC=cmpl_m32_r32    
  jbe .L_a9600                                          #  6     0xa95d0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa95d2  2      OPC=popq_r64_1      
  movl %edx, %edx                                       #  8     0xa95d4  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax                              #  9     0xa95d6  4      OPC=movl_r32_m32    
  addl $0x4, %edx                                       #  10    0xa95da  3      OPC=addl_r32_imm8   
  nop                                                   #  11    0xa95dd  1      OPC=nop             
  nop                                                   #  12    0xa95de  1      OPC=nop             
  nop                                                   #  13    0xa95df  1      OPC=nop             
  movl %edi, %edi                                       #  14    0xa95e0  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                           #  15    0xa95e2  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                               #  16    0xa95e7  7      OPC=andl_r32_imm32  
  nop                                                   #  17    0xa95ee  1      OPC=nop             
  nop                                                   #  18    0xa95ef  1      OPC=nop             
  nop                                                   #  19    0xa95f0  1      OPC=nop             
  nop                                                   #  20    0xa95f1  1      OPC=nop             
  addq %r15, %r11                                       #  21    0xa95f2  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  22    0xa95f5  3      OPC=jmpq_r64        
  nop                                                   #  23    0xa95f8  1      OPC=nop             
  nop                                                   #  24    0xa95f9  1      OPC=nop             
  nop                                                   #  25    0xa95fa  1      OPC=nop             
  nop                                                   #  26    0xa95fb  1      OPC=nop             
  nop                                                   #  27    0xa95fc  1      OPC=nop             
  nop                                                   #  28    0xa95fd  1      OPC=nop             
  nop                                                   #  29    0xa95fe  1      OPC=nop             
  nop                                                   #  30    0xa95ff  1      OPC=nop             
  nop                                                   #  31    0xa9600  1      OPC=nop             
  nop                                                   #  32    0xa9601  1      OPC=nop             
  nop                                                   #  33    0xa9602  1      OPC=nop             
  nop                                                   #  34    0xa9603  1      OPC=nop             
  nop                                                   #  35    0xa9604  1      OPC=nop             
  nop                                                   #  36    0xa9605  1      OPC=nop             
  nop                                                   #  37    0xa9606  1      OPC=nop             
.L_a9600:                                               #        0xa9607  0      OPC=<label>         
  movl %edi, %edi                                       #  38    0xa9607  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  39    0xa9609  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  40    0xa960d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  41    0xa960f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  42    0xa9614  6      OPC=andl_r32_imm32  
  nop                                                   #  43    0xa961a  1      OPC=nop             
  nop                                                   #  44    0xa961b  1      OPC=nop             
  nop                                                   #  45    0xa961c  1      OPC=nop             
  addq %r15, %rax                                       #  46    0xa961d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  47    0xa9620  2      OPC=jmpq_r64        
  nop                                                   #  48    0xa9622  1      OPC=nop             
  nop                                                   #  49    0xa9623  1      OPC=nop             
  nop                                                   #  50    0xa9624  1      OPC=nop             
  nop                                                   #  51    0xa9625  1      OPC=nop             
  nop                                                   #  52    0xa9626  1      OPC=nop             
  nop                                                   #  53    0xa9627  1      OPC=nop             
  nop                                                   #  54    0xa9628  1      OPC=nop             
  nop                                                   #  55    0xa9629  1      OPC=nop             
  nop                                                   #  56    0xa962a  1      OPC=nop             
  nop                                                   #  57    0xa962b  1      OPC=nop             
  nop                                                   #  58    0xa962c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv

