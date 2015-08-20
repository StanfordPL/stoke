  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw, @function

#! file-offset 0xe9500
#! rip-offset  0xa9500
#! capacity    96 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw:  #        0xa9500  0      OPC=<label>         
  movl %edi, %edi                                          #  1     0xa9500  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xa9502  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx                              #  3     0xa9504  5      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  4     0xa9509  2      OPC=movl_r32_r32    
  cmpl %edx, 0x4(%r15,%rdi,1)                              #  5     0xa950b  5      OPC=cmpl_m32_r32    
  jb .L_a9540                                              #  6     0xa9510  2      OPC=jb_label        
  nop                                                      #  7     0xa9512  1      OPC=nop             
  nop                                                      #  8     0xa9513  1      OPC=nop             
  nop                                                      #  9     0xa9514  1      OPC=nop             
  nop                                                      #  10    0xa9515  1      OPC=nop             
  nop                                                      #  11    0xa9516  1      OPC=nop             
  nop                                                      #  12    0xa9517  1      OPC=nop             
  nop                                                      #  13    0xa9518  1      OPC=nop             
  nop                                                      #  14    0xa9519  1      OPC=nop             
  nop                                                      #  15    0xa951a  1      OPC=nop             
  nop                                                      #  16    0xa951b  1      OPC=nop             
  nop                                                      #  17    0xa951c  1      OPC=nop             
  nop                                                      #  18    0xa951d  1      OPC=nop             
  nop                                                      #  19    0xa951e  1      OPC=nop             
  nop                                                      #  20    0xa951f  1      OPC=nop             
.L_a9520:                                                  #        0xa9520  0      OPC=<label>         
  movl %edi, %edi                                          #  21    0xa9520  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                 #  22    0xa9522  4      OPC=movl_r32_m32    
  movl %eax, %eax                                          #  23    0xa9526  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %edx                             #  24    0xa9528  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %edx                                   #  25    0xa952d  6      OPC=andl_r32_imm32  
  nop                                                      #  26    0xa9533  1      OPC=nop             
  nop                                                      #  27    0xa9534  1      OPC=nop             
  nop                                                      #  28    0xa9535  1      OPC=nop             
  addq %r15, %rdx                                          #  29    0xa9536  3      OPC=addq_r64_r64    
  jmpq %rdx                                                #  30    0xa9539  2      OPC=jmpq_r64        
  nop                                                      #  31    0xa953b  1      OPC=nop             
  nop                                                      #  32    0xa953c  1      OPC=nop             
  nop                                                      #  33    0xa953d  1      OPC=nop             
  nop                                                      #  34    0xa953e  1      OPC=nop             
  nop                                                      #  35    0xa953f  1      OPC=nop             
  nop                                                      #  36    0xa9540  1      OPC=nop             
  nop                                                      #  37    0xa9541  1      OPC=nop             
  nop                                                      #  38    0xa9542  1      OPC=nop             
  nop                                                      #  39    0xa9543  1      OPC=nop             
  nop                                                      #  40    0xa9544  1      OPC=nop             
  nop                                                      #  41    0xa9545  1      OPC=nop             
.L_a9540:                                                  #        0xa9546  0      OPC=<label>         
  subl $0x4, %edx                                          #  42    0xa9546  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                          #  43    0xa9549  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi                                 #  44    0xa954b  4      OPC=cmpl_r32_m32    
  jne .L_a9520                                             #  45    0xa954f  2      OPC=jne_label       
  popq %r11                                                #  46    0xa9551  2      OPC=popq_r64_1      
  movl %esi, %eax                                          #  47    0xa9553  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  48    0xa9555  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                              #  49    0xa9557  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                  #  50    0xa955c  7      OPC=andl_r32_imm32  
  nop                                                      #  51    0xa9563  1      OPC=nop             
  nop                                                      #  52    0xa9564  1      OPC=nop             
  nop                                                      #  53    0xa9565  1      OPC=nop             
  nop                                                      #  54    0xa9566  1      OPC=nop             
  addq %r15, %r11                                          #  55    0xa9567  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  56    0xa956a  3      OPC=jmpq_r64        
                                                                                                        
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw

