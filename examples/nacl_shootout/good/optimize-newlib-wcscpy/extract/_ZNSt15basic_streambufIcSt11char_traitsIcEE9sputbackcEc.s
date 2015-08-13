  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc, @function

#! file-offset 0xe93e0
#! rip-offset  0xa93e0
#! capacity    128 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc:  #        0xa93e0  0      OPC=<label>         
  movl %edi, %edi                                          #  1     0xa93e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xa93e2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                              #  3     0xa93e4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  4     0xa93e9  2      OPC=movl_r32_r32    
  cmpl %eax, 0x4(%r15,%rdi,1)                              #  5     0xa93eb  5      OPC=cmpl_m32_r32    
  jb .L_a9420                                              #  6     0xa93f0  2      OPC=jb_label        
  nop                                                      #  7     0xa93f2  1      OPC=nop             
  nop                                                      #  8     0xa93f3  1      OPC=nop             
  nop                                                      #  9     0xa93f4  1      OPC=nop             
  nop                                                      #  10    0xa93f5  1      OPC=nop             
  nop                                                      #  11    0xa93f6  1      OPC=nop             
  nop                                                      #  12    0xa93f7  1      OPC=nop             
  nop                                                      #  13    0xa93f8  1      OPC=nop             
  nop                                                      #  14    0xa93f9  1      OPC=nop             
  nop                                                      #  15    0xa93fa  1      OPC=nop             
  nop                                                      #  16    0xa93fb  1      OPC=nop             
  nop                                                      #  17    0xa93fc  1      OPC=nop             
  nop                                                      #  18    0xa93fd  1      OPC=nop             
  nop                                                      #  19    0xa93fe  1      OPC=nop             
  nop                                                      #  20    0xa93ff  1      OPC=nop             
.L_a9400:                                                  #        0xa9400  0      OPC=<label>         
  movl %edi, %edi                                          #  21    0xa9400  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                 #  22    0xa9402  4      OPC=movl_r32_m32    
  movzbl %sil, %esi                                        #  23    0xa9406  4      OPC=movzbl_r32_r8   
  movl %eax, %eax                                          #  24    0xa940a  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                             #  25    0xa940c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                   #  26    0xa9411  6      OPC=andl_r32_imm32  
  nop                                                      #  27    0xa9417  1      OPC=nop             
  nop                                                      #  28    0xa9418  1      OPC=nop             
  nop                                                      #  29    0xa9419  1      OPC=nop             
  addq %r15, %rax                                          #  30    0xa941a  3      OPC=addq_r64_r64    
  jmpq %rax                                                #  31    0xa941d  2      OPC=jmpq_r64        
  nop                                                      #  32    0xa941f  1      OPC=nop             
  nop                                                      #  33    0xa9420  1      OPC=nop             
  nop                                                      #  34    0xa9421  1      OPC=nop             
  nop                                                      #  35    0xa9422  1      OPC=nop             
  nop                                                      #  36    0xa9423  1      OPC=nop             
  nop                                                      #  37    0xa9424  1      OPC=nop             
  nop                                                      #  38    0xa9425  1      OPC=nop             
.L_a9420:                                                  #        0xa9426  0      OPC=<label>         
  subl $0x1, %eax                                          #  39    0xa9426  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                          #  40    0xa9429  2      OPC=movl_r32_r32    
  cmpb (%r15,%rax,1), %sil                                 #  41    0xa942b  4      OPC=cmpb_r8_m8      
  jne .L_a9400                                             #  42    0xa942f  2      OPC=jne_label       
  popq %r11                                                #  43    0xa9431  2      OPC=popq_r64_1      
  movl %edi, %edi                                          #  44    0xa9433  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                              #  45    0xa9435  5      OPC=movl_m32_r32    
  movl %eax, %eax                                          #  46    0xa943a  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %eax                               #  47    0xa943c  5      OPC=movzbl_r32_m8   
  nop                                                      #  48    0xa9441  1      OPC=nop             
  nop                                                      #  49    0xa9442  1      OPC=nop             
  nop                                                      #  50    0xa9443  1      OPC=nop             
  nop                                                      #  51    0xa9444  1      OPC=nop             
  nop                                                      #  52    0xa9445  1      OPC=nop             
  andl $0xffffffe0, %r11d                                  #  53    0xa9446  7      OPC=andl_r32_imm32  
  nop                                                      #  54    0xa944d  1      OPC=nop             
  nop                                                      #  55    0xa944e  1      OPC=nop             
  nop                                                      #  56    0xa944f  1      OPC=nop             
  nop                                                      #  57    0xa9450  1      OPC=nop             
  addq %r15, %r11                                          #  58    0xa9451  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  59    0xa9454  3      OPC=jmpq_r64        
  nop                                                      #  60    0xa9457  1      OPC=nop             
  nop                                                      #  61    0xa9458  1      OPC=nop             
  nop                                                      #  62    0xa9459  1      OPC=nop             
  nop                                                      #  63    0xa945a  1      OPC=nop             
  nop                                                      #  64    0xa945b  1      OPC=nop             
  nop                                                      #  65    0xa945c  1      OPC=nop             
  nop                                                      #  66    0xa945d  1      OPC=nop             
  nop                                                      #  67    0xa945e  1      OPC=nop             
  nop                                                      #  68    0xa945f  1      OPC=nop             
  nop                                                      #  69    0xa9460  1      OPC=nop             
  nop                                                      #  70    0xa9461  1      OPC=nop             
  nop                                                      #  71    0xa9462  1      OPC=nop             
  nop                                                      #  72    0xa9463  1      OPC=nop             
  nop                                                      #  73    0xa9464  1      OPC=nop             
  nop                                                      #  74    0xa9465  1      OPC=nop             
  nop                                                      #  75    0xa9466  1      OPC=nop             
  nop                                                      #  76    0xa9467  1      OPC=nop             
  nop                                                      #  77    0xa9468  1      OPC=nop             
  nop                                                      #  78    0xa9469  1      OPC=nop             
  nop                                                      #  79    0xa946a  1      OPC=nop             
  nop                                                      #  80    0xa946b  1      OPC=nop             
  nop                                                      #  81    0xa946c  1      OPC=nop             
                                                                                                        
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc

