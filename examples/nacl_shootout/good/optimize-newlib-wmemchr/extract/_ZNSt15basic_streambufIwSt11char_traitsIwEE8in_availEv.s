  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv, @function

#! file-offset 0xe8920
#! rip-offset  0xa8920
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv:  #        0xa8920  0      OPC=<label>         
  movl %edi, %edi                                         #  1     0xa8920  2      OPC=movl_r32_r32    
  movl %edi, %edi                                         #  2     0xa8922  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                             #  3     0xa8924  5      OPC=movl_r32_m32    
  movl %edi, %edi                                         #  4     0xa8929  2      OPC=movl_r32_r32    
  subl 0x8(%r15,%rdi,1), %eax                             #  5     0xa892b  5      OPC=subl_r32_m32    
  sarl $0x2, %eax                                         #  6     0xa8930  3      OPC=sarl_r32_imm8   
  testl %eax, %eax                                        #  7     0xa8933  2      OPC=testl_r32_r32   
  je .L_a8960                                             #  8     0xa8935  2      OPC=je_label        
  popq %r11                                               #  9     0xa8937  2      OPC=popq_r64_1      
  nop                                                     #  10    0xa8939  1      OPC=nop             
  nop                                                     #  11    0xa893a  1      OPC=nop             
  nop                                                     #  12    0xa893b  1      OPC=nop             
  nop                                                     #  13    0xa893c  1      OPC=nop             
  nop                                                     #  14    0xa893d  1      OPC=nop             
  nop                                                     #  15    0xa893e  1      OPC=nop             
  nop                                                     #  16    0xa893f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                 #  17    0xa8940  7      OPC=andl_r32_imm32  
  nop                                                     #  18    0xa8947  1      OPC=nop             
  nop                                                     #  19    0xa8948  1      OPC=nop             
  nop                                                     #  20    0xa8949  1      OPC=nop             
  nop                                                     #  21    0xa894a  1      OPC=nop             
  addq %r15, %r11                                         #  22    0xa894b  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  23    0xa894e  3      OPC=jmpq_r64        
  nop                                                     #  24    0xa8951  1      OPC=nop             
  nop                                                     #  25    0xa8952  1      OPC=nop             
  nop                                                     #  26    0xa8953  1      OPC=nop             
  nop                                                     #  27    0xa8954  1      OPC=nop             
  nop                                                     #  28    0xa8955  1      OPC=nop             
  nop                                                     #  29    0xa8956  1      OPC=nop             
  nop                                                     #  30    0xa8957  1      OPC=nop             
  nop                                                     #  31    0xa8958  1      OPC=nop             
  nop                                                     #  32    0xa8959  1      OPC=nop             
  nop                                                     #  33    0xa895a  1      OPC=nop             
  nop                                                     #  34    0xa895b  1      OPC=nop             
  nop                                                     #  35    0xa895c  1      OPC=nop             
  nop                                                     #  36    0xa895d  1      OPC=nop             
  nop                                                     #  37    0xa895e  1      OPC=nop             
  nop                                                     #  38    0xa895f  1      OPC=nop             
  nop                                                     #  39    0xa8960  1      OPC=nop             
  nop                                                     #  40    0xa8961  1      OPC=nop             
  nop                                                     #  41    0xa8962  1      OPC=nop             
  nop                                                     #  42    0xa8963  1      OPC=nop             
  nop                                                     #  43    0xa8964  1      OPC=nop             
  nop                                                     #  44    0xa8965  1      OPC=nop             
  nop                                                     #  45    0xa8966  1      OPC=nop             
.L_a8960:                                                 #        0xa8967  0      OPC=<label>         
  movl %edi, %edi                                         #  46    0xa8967  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                #  47    0xa8969  4      OPC=movl_r32_m32    
  movl %eax, %eax                                         #  48    0xa896d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                            #  49    0xa896f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                  #  50    0xa8974  6      OPC=andl_r32_imm32  
  nop                                                     #  51    0xa897a  1      OPC=nop             
  nop                                                     #  52    0xa897b  1      OPC=nop             
  nop                                                     #  53    0xa897c  1      OPC=nop             
  addq %r15, %rax                                         #  54    0xa897d  3      OPC=addq_r64_r64    
  jmpq %rax                                               #  55    0xa8980  2      OPC=jmpq_r64        
  nop                                                     #  56    0xa8982  1      OPC=nop             
  nop                                                     #  57    0xa8983  1      OPC=nop             
  nop                                                     #  58    0xa8984  1      OPC=nop             
  nop                                                     #  59    0xa8985  1      OPC=nop             
  nop                                                     #  60    0xa8986  1      OPC=nop             
  nop                                                     #  61    0xa8987  1      OPC=nop             
  nop                                                     #  62    0xa8988  1      OPC=nop             
  nop                                                     #  63    0xa8989  1      OPC=nop             
  nop                                                     #  64    0xa898a  1      OPC=nop             
  nop                                                     #  65    0xa898b  1      OPC=nop             
  nop                                                     #  66    0xa898c  1      OPC=nop             
                                                                                                       
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv

