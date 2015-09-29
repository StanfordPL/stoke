  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv, @function

#! file-offset 0xe9040
#! rip-offset  0xa9040
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv:  #        0xa9040  0      OPC=<label>         
  movl %edi, %edi                                         #  1     0xa9040  2      OPC=movl_r32_r32    
  movl %edi, %edi                                         #  2     0xa9042  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                             #  3     0xa9044  5      OPC=movl_r32_m32    
  movl %edi, %edi                                         #  4     0xa9049  2      OPC=movl_r32_r32    
  subl 0x8(%r15,%rdi,1), %eax                             #  5     0xa904b  5      OPC=subl_r32_m32    
  sarl $0x2, %eax                                         #  6     0xa9050  3      OPC=sarl_r32_imm8   
  testl %eax, %eax                                        #  7     0xa9053  2      OPC=testl_r32_r32   
  je .L_a9080                                             #  8     0xa9055  2      OPC=je_label        
  popq %r11                                               #  9     0xa9057  2      OPC=popq_r64_1      
  nop                                                     #  10    0xa9059  1      OPC=nop             
  nop                                                     #  11    0xa905a  1      OPC=nop             
  nop                                                     #  12    0xa905b  1      OPC=nop             
  nop                                                     #  13    0xa905c  1      OPC=nop             
  nop                                                     #  14    0xa905d  1      OPC=nop             
  nop                                                     #  15    0xa905e  1      OPC=nop             
  nop                                                     #  16    0xa905f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                 #  17    0xa9060  7      OPC=andl_r32_imm32  
  nop                                                     #  18    0xa9067  1      OPC=nop             
  nop                                                     #  19    0xa9068  1      OPC=nop             
  nop                                                     #  20    0xa9069  1      OPC=nop             
  nop                                                     #  21    0xa906a  1      OPC=nop             
  addq %r15, %r11                                         #  22    0xa906b  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  23    0xa906e  3      OPC=jmpq_r64        
  nop                                                     #  24    0xa9071  1      OPC=nop             
  nop                                                     #  25    0xa9072  1      OPC=nop             
  nop                                                     #  26    0xa9073  1      OPC=nop             
  nop                                                     #  27    0xa9074  1      OPC=nop             
  nop                                                     #  28    0xa9075  1      OPC=nop             
  nop                                                     #  29    0xa9076  1      OPC=nop             
  nop                                                     #  30    0xa9077  1      OPC=nop             
  nop                                                     #  31    0xa9078  1      OPC=nop             
  nop                                                     #  32    0xa9079  1      OPC=nop             
  nop                                                     #  33    0xa907a  1      OPC=nop             
  nop                                                     #  34    0xa907b  1      OPC=nop             
  nop                                                     #  35    0xa907c  1      OPC=nop             
  nop                                                     #  36    0xa907d  1      OPC=nop             
  nop                                                     #  37    0xa907e  1      OPC=nop             
  nop                                                     #  38    0xa907f  1      OPC=nop             
  nop                                                     #  39    0xa9080  1      OPC=nop             
  nop                                                     #  40    0xa9081  1      OPC=nop             
  nop                                                     #  41    0xa9082  1      OPC=nop             
  nop                                                     #  42    0xa9083  1      OPC=nop             
  nop                                                     #  43    0xa9084  1      OPC=nop             
  nop                                                     #  44    0xa9085  1      OPC=nop             
  nop                                                     #  45    0xa9086  1      OPC=nop             
.L_a9080:                                                 #        0xa9087  0      OPC=<label>         
  movl %edi, %edi                                         #  46    0xa9087  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                #  47    0xa9089  4      OPC=movl_r32_m32    
  movl %eax, %eax                                         #  48    0xa908d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                            #  49    0xa908f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                  #  50    0xa9094  6      OPC=andl_r32_imm32  
  nop                                                     #  51    0xa909a  1      OPC=nop             
  nop                                                     #  52    0xa909b  1      OPC=nop             
  nop                                                     #  53    0xa909c  1      OPC=nop             
  addq %r15, %rax                                         #  54    0xa909d  3      OPC=addq_r64_r64    
  jmpq %rax                                               #  55    0xa90a0  2      OPC=jmpq_r64        
  nop                                                     #  56    0xa90a2  1      OPC=nop             
  nop                                                     #  57    0xa90a3  1      OPC=nop             
  nop                                                     #  58    0xa90a4  1      OPC=nop             
  nop                                                     #  59    0xa90a5  1      OPC=nop             
  nop                                                     #  60    0xa90a6  1      OPC=nop             
  nop                                                     #  61    0xa90a7  1      OPC=nop             
  nop                                                     #  62    0xa90a8  1      OPC=nop             
  nop                                                     #  63    0xa90a9  1      OPC=nop             
  nop                                                     #  64    0xa90aa  1      OPC=nop             
  nop                                                     #  65    0xa90ab  1      OPC=nop             
  nop                                                     #  66    0xa90ac  1      OPC=nop             
                                                                                                       
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv

