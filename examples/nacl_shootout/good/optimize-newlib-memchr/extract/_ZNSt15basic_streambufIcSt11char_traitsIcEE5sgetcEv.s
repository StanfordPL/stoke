  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv, @function

#! file-offset 0xe9e80
#! rip-offset  0xa9e80
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv:  #        0xa9e80  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9e80  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9e82  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                          #  3     0xa9e84  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9e89  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                          #  5     0xa9e8b  5      OPC=cmpl_m32_r32    
  jbe .L_a9ec0                                         #  6     0xa9e90  2      OPC=jbe_label       
  popq %r11                                            #  7     0xa9e92  2      OPC=popq_r64_1      
  movl %eax, %eax                                      #  8     0xa9e94  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %eax                           #  9     0xa9e96  5      OPC=movzbl_r32_m8   
  nop                                                  #  10    0xa9e9b  1      OPC=nop             
  nop                                                  #  11    0xa9e9c  1      OPC=nop             
  nop                                                  #  12    0xa9e9d  1      OPC=nop             
  nop                                                  #  13    0xa9e9e  1      OPC=nop             
  nop                                                  #  14    0xa9e9f  1      OPC=nop             
  andl $0xffffffe0, %r11d                              #  15    0xa9ea0  7      OPC=andl_r32_imm32  
  nop                                                  #  16    0xa9ea7  1      OPC=nop             
  nop                                                  #  17    0xa9ea8  1      OPC=nop             
  nop                                                  #  18    0xa9ea9  1      OPC=nop             
  nop                                                  #  19    0xa9eaa  1      OPC=nop             
  addq %r15, %r11                                      #  20    0xa9eab  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  21    0xa9eae  3      OPC=jmpq_r64        
  nop                                                  #  22    0xa9eb1  1      OPC=nop             
  nop                                                  #  23    0xa9eb2  1      OPC=nop             
  nop                                                  #  24    0xa9eb3  1      OPC=nop             
  nop                                                  #  25    0xa9eb4  1      OPC=nop             
  nop                                                  #  26    0xa9eb5  1      OPC=nop             
  nop                                                  #  27    0xa9eb6  1      OPC=nop             
  nop                                                  #  28    0xa9eb7  1      OPC=nop             
  nop                                                  #  29    0xa9eb8  1      OPC=nop             
  nop                                                  #  30    0xa9eb9  1      OPC=nop             
  nop                                                  #  31    0xa9eba  1      OPC=nop             
  nop                                                  #  32    0xa9ebb  1      OPC=nop             
  nop                                                  #  33    0xa9ebc  1      OPC=nop             
  nop                                                  #  34    0xa9ebd  1      OPC=nop             
  nop                                                  #  35    0xa9ebe  1      OPC=nop             
  nop                                                  #  36    0xa9ebf  1      OPC=nop             
  nop                                                  #  37    0xa9ec0  1      OPC=nop             
  nop                                                  #  38    0xa9ec1  1      OPC=nop             
  nop                                                  #  39    0xa9ec2  1      OPC=nop             
  nop                                                  #  40    0xa9ec3  1      OPC=nop             
  nop                                                  #  41    0xa9ec4  1      OPC=nop             
  nop                                                  #  42    0xa9ec5  1      OPC=nop             
  nop                                                  #  43    0xa9ec6  1      OPC=nop             
.L_a9ec0:                                              #        0xa9ec7  0      OPC=<label>         
  movl %edi, %edi                                      #  44    0xa9ec7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  45    0xa9ec9  4      OPC=movl_r32_m32    
  movl %eax, %eax                                      #  46    0xa9ecd  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  47    0xa9ecf  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                               #  48    0xa9ed4  6      OPC=andl_r32_imm32  
  nop                                                  #  49    0xa9eda  1      OPC=nop             
  nop                                                  #  50    0xa9edb  1      OPC=nop             
  nop                                                  #  51    0xa9edc  1      OPC=nop             
  addq %r15, %rax                                      #  52    0xa9edd  3      OPC=addq_r64_r64    
  jmpq %rax                                            #  53    0xa9ee0  2      OPC=jmpq_r64        
  nop                                                  #  54    0xa9ee2  1      OPC=nop             
  nop                                                  #  55    0xa9ee3  1      OPC=nop             
  nop                                                  #  56    0xa9ee4  1      OPC=nop             
  nop                                                  #  57    0xa9ee5  1      OPC=nop             
  nop                                                  #  58    0xa9ee6  1      OPC=nop             
  nop                                                  #  59    0xa9ee7  1      OPC=nop             
  nop                                                  #  60    0xa9ee8  1      OPC=nop             
  nop                                                  #  61    0xa9ee9  1      OPC=nop             
  nop                                                  #  62    0xa9eea  1      OPC=nop             
  nop                                                  #  63    0xa9eeb  1      OPC=nop             
  nop                                                  #  64    0xa9eec  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv

