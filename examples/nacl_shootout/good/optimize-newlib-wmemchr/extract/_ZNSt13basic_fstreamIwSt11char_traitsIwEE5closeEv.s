  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x132f40
#! rip-offset  0xf2f40
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv:                  #        0xf2f40  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf2f40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf2f41  2      OPC=movl_r32_r32    
  leal 0xc(%rbx), %edi                                               #  3     0xf2f43  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf2f46  1      OPC=nop             
  nop                                                                #  5     0xf2f47  1      OPC=nop             
  nop                                                                #  6     0xf2f48  1      OPC=nop             
  nop                                                                #  7     0xf2f49  1      OPC=nop             
  nop                                                                #  8     0xf2f4a  1      OPC=nop             
  nop                                                                #  9     0xf2f4b  1      OPC=nop             
  nop                                                                #  10    0xf2f4c  1      OPC=nop             
  nop                                                                #  11    0xf2f4d  1      OPC=nop             
  nop                                                                #  12    0xf2f4e  1      OPC=nop             
  nop                                                                #  13    0xf2f4f  1      OPC=nop             
  nop                                                                #  14    0xf2f50  1      OPC=nop             
  nop                                                                #  15    0xf2f51  1      OPC=nop             
  nop                                                                #  16    0xf2f52  1      OPC=nop             
  nop                                                                #  17    0xf2f53  1      OPC=nop             
  nop                                                                #  18    0xf2f54  1      OPC=nop             
  nop                                                                #  19    0xf2f55  1      OPC=nop             
  nop                                                                #  20    0xf2f56  1      OPC=nop             
  nop                                                                #  21    0xf2f57  1      OPC=nop             
  nop                                                                #  22    0xf2f58  1      OPC=nop             
  nop                                                                #  23    0xf2f59  1      OPC=nop             
  nop                                                                #  24    0xf2f5a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf2f5b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf2f60  2      OPC=testl_r32_r32   
  je .L_f2f80                                                        #  27    0xf2f62  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf2f64  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf2f65  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf2f67  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf2f6e  1      OPC=nop             
  nop                                                                #  32    0xf2f6f  1      OPC=nop             
  nop                                                                #  33    0xf2f70  1      OPC=nop             
  nop                                                                #  34    0xf2f71  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf2f72  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf2f75  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf2f78  1      OPC=nop             
  nop                                                                #  38    0xf2f79  1      OPC=nop             
  nop                                                                #  39    0xf2f7a  1      OPC=nop             
  nop                                                                #  40    0xf2f7b  1      OPC=nop             
  nop                                                                #  41    0xf2f7c  1      OPC=nop             
  nop                                                                #  42    0xf2f7d  1      OPC=nop             
  nop                                                                #  43    0xf2f7e  1      OPC=nop             
  nop                                                                #  44    0xf2f7f  1      OPC=nop             
  nop                                                                #  45    0xf2f80  1      OPC=nop             
  nop                                                                #  46    0xf2f81  1      OPC=nop             
  nop                                                                #  47    0xf2f82  1      OPC=nop             
  nop                                                                #  48    0xf2f83  1      OPC=nop             
  nop                                                                #  49    0xf2f84  1      OPC=nop             
  nop                                                                #  50    0xf2f85  1      OPC=nop             
  nop                                                                #  51    0xf2f86  1      OPC=nop             
.L_f2f80:                                                            #        0xf2f87  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf2f87  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf2f89  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf2f8d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf2f90  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf2f92  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf2f96  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf2f98  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf2f9a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf2f9f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf2fa0  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf2fa3  1      OPC=nop             
  nop                                                                #  63    0xf2fa4  1      OPC=nop             
  nop                                                                #  64    0xf2fa5  1      OPC=nop             
  nop                                                                #  65    0xf2fa6  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  66    0xf2fa7  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf2fac  1      OPC=nop             
  nop                                                                #  68    0xf2fad  1      OPC=nop             
  nop                                                                #  69    0xf2fae  1      OPC=nop             
  nop                                                                #  70    0xf2faf  1      OPC=nop             
  nop                                                                #  71    0xf2fb0  1      OPC=nop             
  nop                                                                #  72    0xf2fb1  1      OPC=nop             
  nop                                                                #  73    0xf2fb2  1      OPC=nop             
  nop                                                                #  74    0xf2fb3  1      OPC=nop             
  nop                                                                #  75    0xf2fb4  1      OPC=nop             
  nop                                                                #  76    0xf2fb5  1      OPC=nop             
  nop                                                                #  77    0xf2fb6  1      OPC=nop             
  nop                                                                #  78    0xf2fb7  1      OPC=nop             
  nop                                                                #  79    0xf2fb8  1      OPC=nop             
  nop                                                                #  80    0xf2fb9  1      OPC=nop             
  nop                                                                #  81    0xf2fba  1      OPC=nop             
  nop                                                                #  82    0xf2fbb  1      OPC=nop             
  nop                                                                #  83    0xf2fbc  1      OPC=nop             
  nop                                                                #  84    0xf2fbd  1      OPC=nop             
  nop                                                                #  85    0xf2fbe  1      OPC=nop             
  nop                                                                #  86    0xf2fbf  1      OPC=nop             
  nop                                                                #  87    0xf2fc0  1      OPC=nop             
  nop                                                                #  88    0xf2fc1  1      OPC=nop             
  nop                                                                #  89    0xf2fc2  1      OPC=nop             
  nop                                                                #  90    0xf2fc3  1      OPC=nop             
  nop                                                                #  91    0xf2fc4  1      OPC=nop             
  nop                                                                #  92    0xf2fc5  1      OPC=nop             
  nop                                                                #  93    0xf2fc6  1      OPC=nop             
                                                                                                                  
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv

