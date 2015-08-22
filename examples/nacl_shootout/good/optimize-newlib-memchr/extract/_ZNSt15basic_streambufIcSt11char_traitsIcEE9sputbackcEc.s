  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc, @function

#! file-offset 0xe9e00
#! rip-offset  0xa9e00
#! capacity    128 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc:  #        0xa9e00  0      OPC=<label>         
  movl %edi, %edi                                          #  1     0xa9e00  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xa9e02  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                              #  3     0xa9e04  5      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  4     0xa9e09  2      OPC=movl_r32_r32    
  cmpl %eax, 0x4(%r15,%rdi,1)                              #  5     0xa9e0b  5      OPC=cmpl_m32_r32    
  jb .L_a9e40                                              #  6     0xa9e10  2      OPC=jb_label        
  nop                                                      #  7     0xa9e12  1      OPC=nop             
  nop                                                      #  8     0xa9e13  1      OPC=nop             
  nop                                                      #  9     0xa9e14  1      OPC=nop             
  nop                                                      #  10    0xa9e15  1      OPC=nop             
  nop                                                      #  11    0xa9e16  1      OPC=nop             
  nop                                                      #  12    0xa9e17  1      OPC=nop             
  nop                                                      #  13    0xa9e18  1      OPC=nop             
  nop                                                      #  14    0xa9e19  1      OPC=nop             
  nop                                                      #  15    0xa9e1a  1      OPC=nop             
  nop                                                      #  16    0xa9e1b  1      OPC=nop             
  nop                                                      #  17    0xa9e1c  1      OPC=nop             
  nop                                                      #  18    0xa9e1d  1      OPC=nop             
  nop                                                      #  19    0xa9e1e  1      OPC=nop             
  nop                                                      #  20    0xa9e1f  1      OPC=nop             
.L_a9e20:                                                  #        0xa9e20  0      OPC=<label>         
  movl %edi, %edi                                          #  21    0xa9e20  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                 #  22    0xa9e22  4      OPC=movl_r32_m32    
  movzbl %sil, %esi                                        #  23    0xa9e26  4      OPC=movzbl_r32_r8   
  movl %eax, %eax                                          #  24    0xa9e2a  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                             #  25    0xa9e2c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                   #  26    0xa9e31  6      OPC=andl_r32_imm32  
  nop                                                      #  27    0xa9e37  1      OPC=nop             
  nop                                                      #  28    0xa9e38  1      OPC=nop             
  nop                                                      #  29    0xa9e39  1      OPC=nop             
  addq %r15, %rax                                          #  30    0xa9e3a  3      OPC=addq_r64_r64    
  jmpq %rax                                                #  31    0xa9e3d  2      OPC=jmpq_r64        
  nop                                                      #  32    0xa9e3f  1      OPC=nop             
  nop                                                      #  33    0xa9e40  1      OPC=nop             
  nop                                                      #  34    0xa9e41  1      OPC=nop             
  nop                                                      #  35    0xa9e42  1      OPC=nop             
  nop                                                      #  36    0xa9e43  1      OPC=nop             
  nop                                                      #  37    0xa9e44  1      OPC=nop             
  nop                                                      #  38    0xa9e45  1      OPC=nop             
.L_a9e40:                                                  #        0xa9e46  0      OPC=<label>         
  subl $0x1, %eax                                          #  39    0xa9e46  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                          #  40    0xa9e49  2      OPC=movl_r32_r32    
  cmpb (%r15,%rax,1), %sil                                 #  41    0xa9e4b  4      OPC=cmpb_r8_m8      
  jne .L_a9e20                                             #  42    0xa9e4f  2      OPC=jne_label       
  popq %r11                                                #  43    0xa9e51  2      OPC=popq_r64_1      
  movl %edi, %edi                                          #  44    0xa9e53  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                              #  45    0xa9e55  5      OPC=movl_m32_r32    
  movl %eax, %eax                                          #  46    0xa9e5a  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %eax                               #  47    0xa9e5c  5      OPC=movzbl_r32_m8   
  nop                                                      #  48    0xa9e61  1      OPC=nop             
  nop                                                      #  49    0xa9e62  1      OPC=nop             
  nop                                                      #  50    0xa9e63  1      OPC=nop             
  nop                                                      #  51    0xa9e64  1      OPC=nop             
  nop                                                      #  52    0xa9e65  1      OPC=nop             
  andl $0xffffffe0, %r11d                                  #  53    0xa9e66  7      OPC=andl_r32_imm32  
  nop                                                      #  54    0xa9e6d  1      OPC=nop             
  nop                                                      #  55    0xa9e6e  1      OPC=nop             
  nop                                                      #  56    0xa9e6f  1      OPC=nop             
  nop                                                      #  57    0xa9e70  1      OPC=nop             
  addq %r15, %r11                                          #  58    0xa9e71  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  59    0xa9e74  3      OPC=jmpq_r64        
  nop                                                      #  60    0xa9e77  1      OPC=nop             
  nop                                                      #  61    0xa9e78  1      OPC=nop             
  nop                                                      #  62    0xa9e79  1      OPC=nop             
  nop                                                      #  63    0xa9e7a  1      OPC=nop             
  nop                                                      #  64    0xa9e7b  1      OPC=nop             
  nop                                                      #  65    0xa9e7c  1      OPC=nop             
  nop                                                      #  66    0xa9e7d  1      OPC=nop             
  nop                                                      #  67    0xa9e7e  1      OPC=nop             
  nop                                                      #  68    0xa9e7f  1      OPC=nop             
  nop                                                      #  69    0xa9e80  1      OPC=nop             
  nop                                                      #  70    0xa9e81  1      OPC=nop             
  nop                                                      #  71    0xa9e82  1      OPC=nop             
  nop                                                      #  72    0xa9e83  1      OPC=nop             
  nop                                                      #  73    0xa9e84  1      OPC=nop             
  nop                                                      #  74    0xa9e85  1      OPC=nop             
  nop                                                      #  75    0xa9e86  1      OPC=nop             
  nop                                                      #  76    0xa9e87  1      OPC=nop             
  nop                                                      #  77    0xa9e88  1      OPC=nop             
  nop                                                      #  78    0xa9e89  1      OPC=nop             
  nop                                                      #  79    0xa9e8a  1      OPC=nop             
  nop                                                      #  80    0xa9e8b  1      OPC=nop             
  nop                                                      #  81    0xa9e8c  1      OPC=nop             
                                                                                                        
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc

