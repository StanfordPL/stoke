  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc, @function

#! file-offset 0xe96e0
#! rip-offset  0xa96e0
#! capacity    128 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc:  #        0xa96e0  0      OPC=<label>         
  movl %edi, %edi                                          #  1     0xa96e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xa96e2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                              #  3     0xa96e4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  4     0xa96e9  2      OPC=movl_r32_r32    
  cmpl %eax, 0x4(%r15,%rdi,1)                              #  5     0xa96eb  5      OPC=cmpl_m32_r32    
  jb .L_a9720                                              #  6     0xa96f0  2      OPC=jb_label        
  nop                                                      #  7     0xa96f2  1      OPC=nop             
  nop                                                      #  8     0xa96f3  1      OPC=nop             
  nop                                                      #  9     0xa96f4  1      OPC=nop             
  nop                                                      #  10    0xa96f5  1      OPC=nop             
  nop                                                      #  11    0xa96f6  1      OPC=nop             
  nop                                                      #  12    0xa96f7  1      OPC=nop             
  nop                                                      #  13    0xa96f8  1      OPC=nop             
  nop                                                      #  14    0xa96f9  1      OPC=nop             
  nop                                                      #  15    0xa96fa  1      OPC=nop             
  nop                                                      #  16    0xa96fb  1      OPC=nop             
  nop                                                      #  17    0xa96fc  1      OPC=nop             
  nop                                                      #  18    0xa96fd  1      OPC=nop             
  nop                                                      #  19    0xa96fe  1      OPC=nop             
  nop                                                      #  20    0xa96ff  1      OPC=nop             
.L_a9700:                                                  #        0xa9700  0      OPC=<label>         
  movl %edi, %edi                                          #  21    0xa9700  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                 #  22    0xa9702  4      OPC=movl_r32_m32    
  movzbl %sil, %esi                                        #  23    0xa9706  4      OPC=movzbl_r32_r8   
  movl %eax, %eax                                          #  24    0xa970a  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                             #  25    0xa970c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                   #  26    0xa9711  6      OPC=andl_r32_imm32  
  nop                                                      #  27    0xa9717  1      OPC=nop             
  nop                                                      #  28    0xa9718  1      OPC=nop             
  nop                                                      #  29    0xa9719  1      OPC=nop             
  addq %r15, %rax                                          #  30    0xa971a  3      OPC=addq_r64_r64    
  jmpq %rax                                                #  31    0xa971d  2      OPC=jmpq_r64        
  nop                                                      #  32    0xa971f  1      OPC=nop             
  nop                                                      #  33    0xa9720  1      OPC=nop             
  nop                                                      #  34    0xa9721  1      OPC=nop             
  nop                                                      #  35    0xa9722  1      OPC=nop             
  nop                                                      #  36    0xa9723  1      OPC=nop             
  nop                                                      #  37    0xa9724  1      OPC=nop             
  nop                                                      #  38    0xa9725  1      OPC=nop             
.L_a9720:                                                  #        0xa9726  0      OPC=<label>         
  subl $0x1, %eax                                          #  39    0xa9726  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                          #  40    0xa9729  2      OPC=movl_r32_r32    
  cmpb (%r15,%rax,1), %sil                                 #  41    0xa972b  4      OPC=cmpb_r8_m8      
  jne .L_a9700                                             #  42    0xa972f  2      OPC=jne_label       
  popq %r11                                                #  43    0xa9731  2      OPC=popq_r64_1      
  movl %edi, %edi                                          #  44    0xa9733  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                              #  45    0xa9735  5      OPC=movl_m32_r32    
  movl %eax, %eax                                          #  46    0xa973a  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %eax                               #  47    0xa973c  5      OPC=movzbl_r32_m8   
  nop                                                      #  48    0xa9741  1      OPC=nop             
  nop                                                      #  49    0xa9742  1      OPC=nop             
  nop                                                      #  50    0xa9743  1      OPC=nop             
  nop                                                      #  51    0xa9744  1      OPC=nop             
  nop                                                      #  52    0xa9745  1      OPC=nop             
  andl $0xffffffe0, %r11d                                  #  53    0xa9746  7      OPC=andl_r32_imm32  
  nop                                                      #  54    0xa974d  1      OPC=nop             
  nop                                                      #  55    0xa974e  1      OPC=nop             
  nop                                                      #  56    0xa974f  1      OPC=nop             
  nop                                                      #  57    0xa9750  1      OPC=nop             
  addq %r15, %r11                                          #  58    0xa9751  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  59    0xa9754  3      OPC=jmpq_r64        
  nop                                                      #  60    0xa9757  1      OPC=nop             
  nop                                                      #  61    0xa9758  1      OPC=nop             
  nop                                                      #  62    0xa9759  1      OPC=nop             
  nop                                                      #  63    0xa975a  1      OPC=nop             
  nop                                                      #  64    0xa975b  1      OPC=nop             
  nop                                                      #  65    0xa975c  1      OPC=nop             
  nop                                                      #  66    0xa975d  1      OPC=nop             
  nop                                                      #  67    0xa975e  1      OPC=nop             
  nop                                                      #  68    0xa975f  1      OPC=nop             
  nop                                                      #  69    0xa9760  1      OPC=nop             
  nop                                                      #  70    0xa9761  1      OPC=nop             
  nop                                                      #  71    0xa9762  1      OPC=nop             
  nop                                                      #  72    0xa9763  1      OPC=nop             
  nop                                                      #  73    0xa9764  1      OPC=nop             
  nop                                                      #  74    0xa9765  1      OPC=nop             
  nop                                                      #  75    0xa9766  1      OPC=nop             
  nop                                                      #  76    0xa9767  1      OPC=nop             
  nop                                                      #  77    0xa9768  1      OPC=nop             
  nop                                                      #  78    0xa9769  1      OPC=nop             
  nop                                                      #  79    0xa976a  1      OPC=nop             
  nop                                                      #  80    0xa976b  1      OPC=nop             
  nop                                                      #  81    0xa976c  1      OPC=nop             
                                                                                                        
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc

