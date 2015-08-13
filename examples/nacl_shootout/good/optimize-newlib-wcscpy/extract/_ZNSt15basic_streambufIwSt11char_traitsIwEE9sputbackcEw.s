  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw, @function

#! file-offset 0xe9200
#! rip-offset  0xa9200
#! capacity    96 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw:  #        0xa9200  0      OPC=<label>         
  movl %edi, %edi                                          #  1     0xa9200  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xa9202  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx                              #  3     0xa9204  5      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  4     0xa9209  2      OPC=movl_r32_r32    
  cmpl %edx, 0x4(%r15,%rdi,1)                              #  5     0xa920b  5      OPC=cmpl_m32_r32    
  jb .L_a9240                                              #  6     0xa9210  2      OPC=jb_label        
  nop                                                      #  7     0xa9212  1      OPC=nop             
  nop                                                      #  8     0xa9213  1      OPC=nop             
  nop                                                      #  9     0xa9214  1      OPC=nop             
  nop                                                      #  10    0xa9215  1      OPC=nop             
  nop                                                      #  11    0xa9216  1      OPC=nop             
  nop                                                      #  12    0xa9217  1      OPC=nop             
  nop                                                      #  13    0xa9218  1      OPC=nop             
  nop                                                      #  14    0xa9219  1      OPC=nop             
  nop                                                      #  15    0xa921a  1      OPC=nop             
  nop                                                      #  16    0xa921b  1      OPC=nop             
  nop                                                      #  17    0xa921c  1      OPC=nop             
  nop                                                      #  18    0xa921d  1      OPC=nop             
  nop                                                      #  19    0xa921e  1      OPC=nop             
  nop                                                      #  20    0xa921f  1      OPC=nop             
.L_a9220:                                                  #        0xa9220  0      OPC=<label>         
  movl %edi, %edi                                          #  21    0xa9220  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                 #  22    0xa9222  4      OPC=movl_r32_m32    
  movl %eax, %eax                                          #  23    0xa9226  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %edx                             #  24    0xa9228  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %edx                                   #  25    0xa922d  6      OPC=andl_r32_imm32  
  nop                                                      #  26    0xa9233  1      OPC=nop             
  nop                                                      #  27    0xa9234  1      OPC=nop             
  nop                                                      #  28    0xa9235  1      OPC=nop             
  addq %r15, %rdx                                          #  29    0xa9236  3      OPC=addq_r64_r64    
  jmpq %rdx                                                #  30    0xa9239  2      OPC=jmpq_r64        
  nop                                                      #  31    0xa923b  1      OPC=nop             
  nop                                                      #  32    0xa923c  1      OPC=nop             
  nop                                                      #  33    0xa923d  1      OPC=nop             
  nop                                                      #  34    0xa923e  1      OPC=nop             
  nop                                                      #  35    0xa923f  1      OPC=nop             
  nop                                                      #  36    0xa9240  1      OPC=nop             
  nop                                                      #  37    0xa9241  1      OPC=nop             
  nop                                                      #  38    0xa9242  1      OPC=nop             
  nop                                                      #  39    0xa9243  1      OPC=nop             
  nop                                                      #  40    0xa9244  1      OPC=nop             
  nop                                                      #  41    0xa9245  1      OPC=nop             
.L_a9240:                                                  #        0xa9246  0      OPC=<label>         
  subl $0x4, %edx                                          #  42    0xa9246  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                          #  43    0xa9249  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi                                 #  44    0xa924b  4      OPC=cmpl_r32_m32    
  jne .L_a9220                                             #  45    0xa924f  2      OPC=jne_label       
  popq %r11                                                #  46    0xa9251  2      OPC=popq_r64_1      
  movl %esi, %eax                                          #  47    0xa9253  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  48    0xa9255  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                              #  49    0xa9257  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                  #  50    0xa925c  7      OPC=andl_r32_imm32  
  nop                                                      #  51    0xa9263  1      OPC=nop             
  nop                                                      #  52    0xa9264  1      OPC=nop             
  nop                                                      #  53    0xa9265  1      OPC=nop             
  nop                                                      #  54    0xa9266  1      OPC=nop             
  addq %r15, %r11                                          #  55    0xa9267  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  56    0xa926a  3      OPC=jmpq_r64        
                                                                                                        
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw

