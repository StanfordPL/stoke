  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x131e00
#! rip-offset  0xf1e00
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv:                 #        0xf1e00  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf1e00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf1e01  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                               #  3     0xf1e03  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf1e06  1      OPC=nop             
  nop                                                                #  5     0xf1e07  1      OPC=nop             
  nop                                                                #  6     0xf1e08  1      OPC=nop             
  nop                                                                #  7     0xf1e09  1      OPC=nop             
  nop                                                                #  8     0xf1e0a  1      OPC=nop             
  nop                                                                #  9     0xf1e0b  1      OPC=nop             
  nop                                                                #  10    0xf1e0c  1      OPC=nop             
  nop                                                                #  11    0xf1e0d  1      OPC=nop             
  nop                                                                #  12    0xf1e0e  1      OPC=nop             
  nop                                                                #  13    0xf1e0f  1      OPC=nop             
  nop                                                                #  14    0xf1e10  1      OPC=nop             
  nop                                                                #  15    0xf1e11  1      OPC=nop             
  nop                                                                #  16    0xf1e12  1      OPC=nop             
  nop                                                                #  17    0xf1e13  1      OPC=nop             
  nop                                                                #  18    0xf1e14  1      OPC=nop             
  nop                                                                #  19    0xf1e15  1      OPC=nop             
  nop                                                                #  20    0xf1e16  1      OPC=nop             
  nop                                                                #  21    0xf1e17  1      OPC=nop             
  nop                                                                #  22    0xf1e18  1      OPC=nop             
  nop                                                                #  23    0xf1e19  1      OPC=nop             
  nop                                                                #  24    0xf1e1a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf1e1b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf1e20  2      OPC=testl_r32_r32   
  je .L_f1e40                                                        #  27    0xf1e22  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf1e24  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf1e25  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf1e27  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf1e2e  1      OPC=nop             
  nop                                                                #  32    0xf1e2f  1      OPC=nop             
  nop                                                                #  33    0xf1e30  1      OPC=nop             
  nop                                                                #  34    0xf1e31  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf1e32  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf1e35  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf1e38  1      OPC=nop             
  nop                                                                #  38    0xf1e39  1      OPC=nop             
  nop                                                                #  39    0xf1e3a  1      OPC=nop             
  nop                                                                #  40    0xf1e3b  1      OPC=nop             
  nop                                                                #  41    0xf1e3c  1      OPC=nop             
  nop                                                                #  42    0xf1e3d  1      OPC=nop             
  nop                                                                #  43    0xf1e3e  1      OPC=nop             
  nop                                                                #  44    0xf1e3f  1      OPC=nop             
  nop                                                                #  45    0xf1e40  1      OPC=nop             
  nop                                                                #  46    0xf1e41  1      OPC=nop             
  nop                                                                #  47    0xf1e42  1      OPC=nop             
  nop                                                                #  48    0xf1e43  1      OPC=nop             
  nop                                                                #  49    0xf1e44  1      OPC=nop             
  nop                                                                #  50    0xf1e45  1      OPC=nop             
  nop                                                                #  51    0xf1e46  1      OPC=nop             
.L_f1e40:                                                            #        0xf1e47  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf1e47  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf1e49  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf1e4d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf1e50  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf1e52  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf1e56  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf1e58  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf1e5a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf1e5f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf1e60  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf1e63  1      OPC=nop             
  nop                                                                #  63    0xf1e64  1      OPC=nop             
  nop                                                                #  64    0xf1e65  1      OPC=nop             
  nop                                                                #  65    0xf1e66  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  66    0xf1e67  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf1e6c  1      OPC=nop             
  nop                                                                #  68    0xf1e6d  1      OPC=nop             
  nop                                                                #  69    0xf1e6e  1      OPC=nop             
  nop                                                                #  70    0xf1e6f  1      OPC=nop             
  nop                                                                #  71    0xf1e70  1      OPC=nop             
  nop                                                                #  72    0xf1e71  1      OPC=nop             
  nop                                                                #  73    0xf1e72  1      OPC=nop             
  nop                                                                #  74    0xf1e73  1      OPC=nop             
  nop                                                                #  75    0xf1e74  1      OPC=nop             
  nop                                                                #  76    0xf1e75  1      OPC=nop             
  nop                                                                #  77    0xf1e76  1      OPC=nop             
  nop                                                                #  78    0xf1e77  1      OPC=nop             
  nop                                                                #  79    0xf1e78  1      OPC=nop             
  nop                                                                #  80    0xf1e79  1      OPC=nop             
  nop                                                                #  81    0xf1e7a  1      OPC=nop             
  nop                                                                #  82    0xf1e7b  1      OPC=nop             
  nop                                                                #  83    0xf1e7c  1      OPC=nop             
  nop                                                                #  84    0xf1e7d  1      OPC=nop             
  nop                                                                #  85    0xf1e7e  1      OPC=nop             
  nop                                                                #  86    0xf1e7f  1      OPC=nop             
  nop                                                                #  87    0xf1e80  1      OPC=nop             
  nop                                                                #  88    0xf1e81  1      OPC=nop             
  nop                                                                #  89    0xf1e82  1      OPC=nop             
  nop                                                                #  90    0xf1e83  1      OPC=nop             
  nop                                                                #  91    0xf1e84  1      OPC=nop             
  nop                                                                #  92    0xf1e85  1      OPC=nop             
  nop                                                                #  93    0xf1e86  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv

