  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv, @function

#! file-offset 0xe9760
#! rip-offset  0xa9760
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv:  #        0xa9760  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9760  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9762  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                          #  3     0xa9764  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9769  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                          #  5     0xa976b  5      OPC=cmpl_m32_r32    
  jbe .L_a97a0                                         #  6     0xa9770  2      OPC=jbe_label       
  popq %r11                                            #  7     0xa9772  2      OPC=popq_r64_1      
  movl %eax, %eax                                      #  8     0xa9774  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %eax                           #  9     0xa9776  5      OPC=movzbl_r32_m8   
  nop                                                  #  10    0xa977b  1      OPC=nop             
  nop                                                  #  11    0xa977c  1      OPC=nop             
  nop                                                  #  12    0xa977d  1      OPC=nop             
  nop                                                  #  13    0xa977e  1      OPC=nop             
  nop                                                  #  14    0xa977f  1      OPC=nop             
  andl $0xffffffe0, %r11d                              #  15    0xa9780  7      OPC=andl_r32_imm32  
  nop                                                  #  16    0xa9787  1      OPC=nop             
  nop                                                  #  17    0xa9788  1      OPC=nop             
  nop                                                  #  18    0xa9789  1      OPC=nop             
  nop                                                  #  19    0xa978a  1      OPC=nop             
  addq %r15, %r11                                      #  20    0xa978b  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  21    0xa978e  3      OPC=jmpq_r64        
  nop                                                  #  22    0xa9791  1      OPC=nop             
  nop                                                  #  23    0xa9792  1      OPC=nop             
  nop                                                  #  24    0xa9793  1      OPC=nop             
  nop                                                  #  25    0xa9794  1      OPC=nop             
  nop                                                  #  26    0xa9795  1      OPC=nop             
  nop                                                  #  27    0xa9796  1      OPC=nop             
  nop                                                  #  28    0xa9797  1      OPC=nop             
  nop                                                  #  29    0xa9798  1      OPC=nop             
  nop                                                  #  30    0xa9799  1      OPC=nop             
  nop                                                  #  31    0xa979a  1      OPC=nop             
  nop                                                  #  32    0xa979b  1      OPC=nop             
  nop                                                  #  33    0xa979c  1      OPC=nop             
  nop                                                  #  34    0xa979d  1      OPC=nop             
  nop                                                  #  35    0xa979e  1      OPC=nop             
  nop                                                  #  36    0xa979f  1      OPC=nop             
  nop                                                  #  37    0xa97a0  1      OPC=nop             
  nop                                                  #  38    0xa97a1  1      OPC=nop             
  nop                                                  #  39    0xa97a2  1      OPC=nop             
  nop                                                  #  40    0xa97a3  1      OPC=nop             
  nop                                                  #  41    0xa97a4  1      OPC=nop             
  nop                                                  #  42    0xa97a5  1      OPC=nop             
  nop                                                  #  43    0xa97a6  1      OPC=nop             
.L_a97a0:                                              #        0xa97a7  0      OPC=<label>         
  movl %edi, %edi                                      #  44    0xa97a7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  45    0xa97a9  4      OPC=movl_r32_m32    
  movl %eax, %eax                                      #  46    0xa97ad  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  47    0xa97af  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                               #  48    0xa97b4  6      OPC=andl_r32_imm32  
  nop                                                  #  49    0xa97ba  1      OPC=nop             
  nop                                                  #  50    0xa97bb  1      OPC=nop             
  nop                                                  #  51    0xa97bc  1      OPC=nop             
  addq %r15, %rax                                      #  52    0xa97bd  3      OPC=addq_r64_r64    
  jmpq %rax                                            #  53    0xa97c0  2      OPC=jmpq_r64        
  nop                                                  #  54    0xa97c2  1      OPC=nop             
  nop                                                  #  55    0xa97c3  1      OPC=nop             
  nop                                                  #  56    0xa97c4  1      OPC=nop             
  nop                                                  #  57    0xa97c5  1      OPC=nop             
  nop                                                  #  58    0xa97c6  1      OPC=nop             
  nop                                                  #  59    0xa97c7  1      OPC=nop             
  nop                                                  #  60    0xa97c8  1      OPC=nop             
  nop                                                  #  61    0xa97c9  1      OPC=nop             
  nop                                                  #  62    0xa97ca  1      OPC=nop             
  nop                                                  #  63    0xa97cb  1      OPC=nop             
  nop                                                  #  64    0xa97cc  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv

