  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw, @function

#! file-offset 0xe9c20
#! rip-offset  0xa9c20
#! capacity    96 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw:  #        0xa9c20  0      OPC=<label>         
  movl %edi, %edi                                          #  1     0xa9c20  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xa9c22  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx                              #  3     0xa9c24  5      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  4     0xa9c29  2      OPC=movl_r32_r32    
  cmpl %edx, 0x4(%r15,%rdi,1)                              #  5     0xa9c2b  5      OPC=cmpl_m32_r32    
  jb .L_a9c60                                              #  6     0xa9c30  2      OPC=jb_label        
  nop                                                      #  7     0xa9c32  1      OPC=nop             
  nop                                                      #  8     0xa9c33  1      OPC=nop             
  nop                                                      #  9     0xa9c34  1      OPC=nop             
  nop                                                      #  10    0xa9c35  1      OPC=nop             
  nop                                                      #  11    0xa9c36  1      OPC=nop             
  nop                                                      #  12    0xa9c37  1      OPC=nop             
  nop                                                      #  13    0xa9c38  1      OPC=nop             
  nop                                                      #  14    0xa9c39  1      OPC=nop             
  nop                                                      #  15    0xa9c3a  1      OPC=nop             
  nop                                                      #  16    0xa9c3b  1      OPC=nop             
  nop                                                      #  17    0xa9c3c  1      OPC=nop             
  nop                                                      #  18    0xa9c3d  1      OPC=nop             
  nop                                                      #  19    0xa9c3e  1      OPC=nop             
  nop                                                      #  20    0xa9c3f  1      OPC=nop             
.L_a9c40:                                                  #        0xa9c40  0      OPC=<label>         
  movl %edi, %edi                                          #  21    0xa9c40  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                 #  22    0xa9c42  4      OPC=movl_r32_m32    
  movl %eax, %eax                                          #  23    0xa9c46  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %edx                             #  24    0xa9c48  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %edx                                   #  25    0xa9c4d  6      OPC=andl_r32_imm32  
  nop                                                      #  26    0xa9c53  1      OPC=nop             
  nop                                                      #  27    0xa9c54  1      OPC=nop             
  nop                                                      #  28    0xa9c55  1      OPC=nop             
  addq %r15, %rdx                                          #  29    0xa9c56  3      OPC=addq_r64_r64    
  jmpq %rdx                                                #  30    0xa9c59  2      OPC=jmpq_r64        
  nop                                                      #  31    0xa9c5b  1      OPC=nop             
  nop                                                      #  32    0xa9c5c  1      OPC=nop             
  nop                                                      #  33    0xa9c5d  1      OPC=nop             
  nop                                                      #  34    0xa9c5e  1      OPC=nop             
  nop                                                      #  35    0xa9c5f  1      OPC=nop             
  nop                                                      #  36    0xa9c60  1      OPC=nop             
  nop                                                      #  37    0xa9c61  1      OPC=nop             
  nop                                                      #  38    0xa9c62  1      OPC=nop             
  nop                                                      #  39    0xa9c63  1      OPC=nop             
  nop                                                      #  40    0xa9c64  1      OPC=nop             
  nop                                                      #  41    0xa9c65  1      OPC=nop             
.L_a9c60:                                                  #        0xa9c66  0      OPC=<label>         
  subl $0x4, %edx                                          #  42    0xa9c66  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                          #  43    0xa9c69  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi                                 #  44    0xa9c6b  4      OPC=cmpl_r32_m32    
  jne .L_a9c40                                             #  45    0xa9c6f  2      OPC=jne_label       
  popq %r11                                                #  46    0xa9c71  2      OPC=popq_r64_1      
  movl %esi, %eax                                          #  47    0xa9c73  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  48    0xa9c75  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                              #  49    0xa9c77  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                  #  50    0xa9c7c  7      OPC=andl_r32_imm32  
  nop                                                      #  51    0xa9c83  1      OPC=nop             
  nop                                                      #  52    0xa9c84  1      OPC=nop             
  nop                                                      #  53    0xa9c85  1      OPC=nop             
  nop                                                      #  54    0xa9c86  1      OPC=nop             
  addq %r15, %r11                                          #  55    0xa9c87  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  56    0xa9c8a  3      OPC=jmpq_r64        
                                                                                                        
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw

