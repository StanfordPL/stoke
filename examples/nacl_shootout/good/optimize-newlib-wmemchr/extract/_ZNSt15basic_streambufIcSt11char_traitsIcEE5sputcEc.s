  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc, @function

#! file-offset 0xe9620
#! rip-offset  0xa9620
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc:  #        0xa9620  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9620  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9622  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %edx                         #  3     0xa9624  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9629  2      OPC=movl_r32_r32    
  cmpl %edx, 0x18(%r15,%rdi,1)                         #  5     0xa962b  5      OPC=cmpl_m32_r32    
  jbe .L_a9660                                         #  6     0xa9630  2      OPC=jbe_label       
  movl %edx, %edx                                      #  7     0xa9632  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rdx,1)                             #  8     0xa9634  4      OPC=movb_m8_r8      
  movzbl %sil, %eax                                    #  9     0xa9638  4      OPC=movzbl_r32_r8   
  nop                                                  #  10    0xa963c  1      OPC=nop             
  nop                                                  #  11    0xa963d  1      OPC=nop             
  nop                                                  #  12    0xa963e  1      OPC=nop             
  nop                                                  #  13    0xa963f  1      OPC=nop             
  movl %edi, %edi                                      #  14    0xa9640  2      OPC=movl_r32_r32    
  addl $0x1, 0x14(%r15,%rdi,1)                         #  15    0xa9642  6      OPC=addl_m32_imm8   
  popq %r11                                            #  16    0xa9648  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  17    0xa964a  7      OPC=andl_r32_imm32  
  nop                                                  #  18    0xa9651  1      OPC=nop             
  nop                                                  #  19    0xa9652  1      OPC=nop             
  nop                                                  #  20    0xa9653  1      OPC=nop             
  nop                                                  #  21    0xa9654  1      OPC=nop             
  addq %r15, %r11                                      #  22    0xa9655  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  23    0xa9658  3      OPC=jmpq_r64        
  nop                                                  #  24    0xa965b  1      OPC=nop             
  nop                                                  #  25    0xa965c  1      OPC=nop             
  nop                                                  #  26    0xa965d  1      OPC=nop             
  nop                                                  #  27    0xa965e  1      OPC=nop             
  nop                                                  #  28    0xa965f  1      OPC=nop             
  nop                                                  #  29    0xa9660  1      OPC=nop             
  nop                                                  #  30    0xa9661  1      OPC=nop             
  nop                                                  #  31    0xa9662  1      OPC=nop             
  nop                                                  #  32    0xa9663  1      OPC=nop             
  nop                                                  #  33    0xa9664  1      OPC=nop             
  nop                                                  #  34    0xa9665  1      OPC=nop             
  nop                                                  #  35    0xa9666  1      OPC=nop             
.L_a9660:                                              #        0xa9667  0      OPC=<label>         
  movl %edi, %edi                                      #  36    0xa9667  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx                             #  37    0xa9669  4      OPC=movl_r32_m32    
  movzbl %sil, %esi                                    #  38    0xa966d  4      OPC=movzbl_r32_r8   
  movl %edx, %edx                                      #  39    0xa9671  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rdx,1), %edx                         #  40    0xa9673  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %edx                               #  41    0xa9678  6      OPC=andl_r32_imm32  
  nop                                                  #  42    0xa967e  1      OPC=nop             
  nop                                                  #  43    0xa967f  1      OPC=nop             
  nop                                                  #  44    0xa9680  1      OPC=nop             
  addq %r15, %rdx                                      #  45    0xa9681  3      OPC=addq_r64_r64    
  jmpq %rdx                                            #  46    0xa9684  2      OPC=jmpq_r64        
  nop                                                  #  47    0xa9686  1      OPC=nop             
  nop                                                  #  48    0xa9687  1      OPC=nop             
  nop                                                  #  49    0xa9688  1      OPC=nop             
  nop                                                  #  50    0xa9689  1      OPC=nop             
  nop                                                  #  51    0xa968a  1      OPC=nop             
  nop                                                  #  52    0xa968b  1      OPC=nop             
  nop                                                  #  53    0xa968c  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc

