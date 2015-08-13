  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x132c40
#! rip-offset  0xf2c40
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv:                  #        0xf2c40  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf2c40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf2c41  2      OPC=movl_r32_r32    
  leal 0xc(%rbx), %edi                                               #  3     0xf2c43  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf2c46  1      OPC=nop             
  nop                                                                #  5     0xf2c47  1      OPC=nop             
  nop                                                                #  6     0xf2c48  1      OPC=nop             
  nop                                                                #  7     0xf2c49  1      OPC=nop             
  nop                                                                #  8     0xf2c4a  1      OPC=nop             
  nop                                                                #  9     0xf2c4b  1      OPC=nop             
  nop                                                                #  10    0xf2c4c  1      OPC=nop             
  nop                                                                #  11    0xf2c4d  1      OPC=nop             
  nop                                                                #  12    0xf2c4e  1      OPC=nop             
  nop                                                                #  13    0xf2c4f  1      OPC=nop             
  nop                                                                #  14    0xf2c50  1      OPC=nop             
  nop                                                                #  15    0xf2c51  1      OPC=nop             
  nop                                                                #  16    0xf2c52  1      OPC=nop             
  nop                                                                #  17    0xf2c53  1      OPC=nop             
  nop                                                                #  18    0xf2c54  1      OPC=nop             
  nop                                                                #  19    0xf2c55  1      OPC=nop             
  nop                                                                #  20    0xf2c56  1      OPC=nop             
  nop                                                                #  21    0xf2c57  1      OPC=nop             
  nop                                                                #  22    0xf2c58  1      OPC=nop             
  nop                                                                #  23    0xf2c59  1      OPC=nop             
  nop                                                                #  24    0xf2c5a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf2c5b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf2c60  2      OPC=testl_r32_r32   
  je .L_f2c80                                                        #  27    0xf2c62  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf2c64  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf2c65  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf2c67  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf2c6e  1      OPC=nop             
  nop                                                                #  32    0xf2c6f  1      OPC=nop             
  nop                                                                #  33    0xf2c70  1      OPC=nop             
  nop                                                                #  34    0xf2c71  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf2c72  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf2c75  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf2c78  1      OPC=nop             
  nop                                                                #  38    0xf2c79  1      OPC=nop             
  nop                                                                #  39    0xf2c7a  1      OPC=nop             
  nop                                                                #  40    0xf2c7b  1      OPC=nop             
  nop                                                                #  41    0xf2c7c  1      OPC=nop             
  nop                                                                #  42    0xf2c7d  1      OPC=nop             
  nop                                                                #  43    0xf2c7e  1      OPC=nop             
  nop                                                                #  44    0xf2c7f  1      OPC=nop             
  nop                                                                #  45    0xf2c80  1      OPC=nop             
  nop                                                                #  46    0xf2c81  1      OPC=nop             
  nop                                                                #  47    0xf2c82  1      OPC=nop             
  nop                                                                #  48    0xf2c83  1      OPC=nop             
  nop                                                                #  49    0xf2c84  1      OPC=nop             
  nop                                                                #  50    0xf2c85  1      OPC=nop             
  nop                                                                #  51    0xf2c86  1      OPC=nop             
.L_f2c80:                                                            #        0xf2c87  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf2c87  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf2c89  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf2c8d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf2c90  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf2c92  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf2c96  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf2c98  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf2c9a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf2c9f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf2ca0  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf2ca3  1      OPC=nop             
  nop                                                                #  63    0xf2ca4  1      OPC=nop             
  nop                                                                #  64    0xf2ca5  1      OPC=nop             
  nop                                                                #  65    0xf2ca6  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  66    0xf2ca7  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf2cac  1      OPC=nop             
  nop                                                                #  68    0xf2cad  1      OPC=nop             
  nop                                                                #  69    0xf2cae  1      OPC=nop             
  nop                                                                #  70    0xf2caf  1      OPC=nop             
  nop                                                                #  71    0xf2cb0  1      OPC=nop             
  nop                                                                #  72    0xf2cb1  1      OPC=nop             
  nop                                                                #  73    0xf2cb2  1      OPC=nop             
  nop                                                                #  74    0xf2cb3  1      OPC=nop             
  nop                                                                #  75    0xf2cb4  1      OPC=nop             
  nop                                                                #  76    0xf2cb5  1      OPC=nop             
  nop                                                                #  77    0xf2cb6  1      OPC=nop             
  nop                                                                #  78    0xf2cb7  1      OPC=nop             
  nop                                                                #  79    0xf2cb8  1      OPC=nop             
  nop                                                                #  80    0xf2cb9  1      OPC=nop             
  nop                                                                #  81    0xf2cba  1      OPC=nop             
  nop                                                                #  82    0xf2cbb  1      OPC=nop             
  nop                                                                #  83    0xf2cbc  1      OPC=nop             
  nop                                                                #  84    0xf2cbd  1      OPC=nop             
  nop                                                                #  85    0xf2cbe  1      OPC=nop             
  nop                                                                #  86    0xf2cbf  1      OPC=nop             
  nop                                                                #  87    0xf2cc0  1      OPC=nop             
  nop                                                                #  88    0xf2cc1  1      OPC=nop             
  nop                                                                #  89    0xf2cc2  1      OPC=nop             
  nop                                                                #  90    0xf2cc3  1      OPC=nop             
  nop                                                                #  91    0xf2cc4  1      OPC=nop             
  nop                                                                #  92    0xf2cc5  1      OPC=nop             
  nop                                                                #  93    0xf2cc6  1      OPC=nop             
                                                                                                                  
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv

