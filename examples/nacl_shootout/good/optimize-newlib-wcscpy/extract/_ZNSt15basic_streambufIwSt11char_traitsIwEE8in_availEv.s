  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv, @function

#! file-offset 0xe8620
#! rip-offset  0xa8620
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv:  #        0xa8620  0      OPC=<label>         
  movl %edi, %edi                                         #  1     0xa8620  2      OPC=movl_r32_r32    
  movl %edi, %edi                                         #  2     0xa8622  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                             #  3     0xa8624  5      OPC=movl_r32_m32    
  movl %edi, %edi                                         #  4     0xa8629  2      OPC=movl_r32_r32    
  subl 0x8(%r15,%rdi,1), %eax                             #  5     0xa862b  5      OPC=subl_r32_m32    
  sarl $0x2, %eax                                         #  6     0xa8630  3      OPC=sarl_r32_imm8   
  testl %eax, %eax                                        #  7     0xa8633  2      OPC=testl_r32_r32   
  je .L_a8660                                             #  8     0xa8635  2      OPC=je_label        
  popq %r11                                               #  9     0xa8637  2      OPC=popq_r64_1      
  nop                                                     #  10    0xa8639  1      OPC=nop             
  nop                                                     #  11    0xa863a  1      OPC=nop             
  nop                                                     #  12    0xa863b  1      OPC=nop             
  nop                                                     #  13    0xa863c  1      OPC=nop             
  nop                                                     #  14    0xa863d  1      OPC=nop             
  nop                                                     #  15    0xa863e  1      OPC=nop             
  nop                                                     #  16    0xa863f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                 #  17    0xa8640  7      OPC=andl_r32_imm32  
  nop                                                     #  18    0xa8647  1      OPC=nop             
  nop                                                     #  19    0xa8648  1      OPC=nop             
  nop                                                     #  20    0xa8649  1      OPC=nop             
  nop                                                     #  21    0xa864a  1      OPC=nop             
  addq %r15, %r11                                         #  22    0xa864b  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  23    0xa864e  3      OPC=jmpq_r64        
  nop                                                     #  24    0xa8651  1      OPC=nop             
  nop                                                     #  25    0xa8652  1      OPC=nop             
  nop                                                     #  26    0xa8653  1      OPC=nop             
  nop                                                     #  27    0xa8654  1      OPC=nop             
  nop                                                     #  28    0xa8655  1      OPC=nop             
  nop                                                     #  29    0xa8656  1      OPC=nop             
  nop                                                     #  30    0xa8657  1      OPC=nop             
  nop                                                     #  31    0xa8658  1      OPC=nop             
  nop                                                     #  32    0xa8659  1      OPC=nop             
  nop                                                     #  33    0xa865a  1      OPC=nop             
  nop                                                     #  34    0xa865b  1      OPC=nop             
  nop                                                     #  35    0xa865c  1      OPC=nop             
  nop                                                     #  36    0xa865d  1      OPC=nop             
  nop                                                     #  37    0xa865e  1      OPC=nop             
  nop                                                     #  38    0xa865f  1      OPC=nop             
  nop                                                     #  39    0xa8660  1      OPC=nop             
  nop                                                     #  40    0xa8661  1      OPC=nop             
  nop                                                     #  41    0xa8662  1      OPC=nop             
  nop                                                     #  42    0xa8663  1      OPC=nop             
  nop                                                     #  43    0xa8664  1      OPC=nop             
  nop                                                     #  44    0xa8665  1      OPC=nop             
  nop                                                     #  45    0xa8666  1      OPC=nop             
.L_a8660:                                                 #        0xa8667  0      OPC=<label>         
  movl %edi, %edi                                         #  46    0xa8667  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                #  47    0xa8669  4      OPC=movl_r32_m32    
  movl %eax, %eax                                         #  48    0xa866d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                            #  49    0xa866f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                  #  50    0xa8674  6      OPC=andl_r32_imm32  
  nop                                                     #  51    0xa867a  1      OPC=nop             
  nop                                                     #  52    0xa867b  1      OPC=nop             
  nop                                                     #  53    0xa867c  1      OPC=nop             
  addq %r15, %rax                                         #  54    0xa867d  3      OPC=addq_r64_r64    
  jmpq %rax                                               #  55    0xa8680  2      OPC=jmpq_r64        
  nop                                                     #  56    0xa8682  1      OPC=nop             
  nop                                                     #  57    0xa8683  1      OPC=nop             
  nop                                                     #  58    0xa8684  1      OPC=nop             
  nop                                                     #  59    0xa8685  1      OPC=nop             
  nop                                                     #  60    0xa8686  1      OPC=nop             
  nop                                                     #  61    0xa8687  1      OPC=nop             
  nop                                                     #  62    0xa8688  1      OPC=nop             
  nop                                                     #  63    0xa8689  1      OPC=nop             
  nop                                                     #  64    0xa868a  1      OPC=nop             
  nop                                                     #  65    0xa868b  1      OPC=nop             
  nop                                                     #  66    0xa868c  1      OPC=nop             
                                                                                                       
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv

