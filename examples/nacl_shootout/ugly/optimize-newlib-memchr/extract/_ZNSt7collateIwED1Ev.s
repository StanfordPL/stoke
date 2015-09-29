  .text
  .globl _ZNSt7collateIwED1Ev
  .type _ZNSt7collateIwED1Ev, @function

#! file-offset 0xf4e00
#! rip-offset  0xb4e00
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwED1Ev:                                #        0xb4e00  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4e00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4e01  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4e03  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4e06  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4e09  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb4e0c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb4e0e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4e16  1      OPC=nop             
  nop                                                 #  9     0xb4e17  1      OPC=nop             
  nop                                                 #  10    0xb4e18  1      OPC=nop             
  nop                                                 #  11    0xb4e19  1      OPC=nop             
  nop                                                 #  12    0xb4e1a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb4e1b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4e20  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb4e22  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb4e25  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb4e28  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb4e29  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb4e2e  1      OPC=nop             
  nop                                                 #  20    0xb4e2f  1      OPC=nop             
  nop                                                 #  21    0xb4e30  1      OPC=nop             
  nop                                                 #  22    0xb4e31  1      OPC=nop             
  nop                                                 #  23    0xb4e32  1      OPC=nop             
  nop                                                 #  24    0xb4e33  1      OPC=nop             
  nop                                                 #  25    0xb4e34  1      OPC=nop             
  nop                                                 #  26    0xb4e35  1      OPC=nop             
  nop                                                 #  27    0xb4e36  1      OPC=nop             
  nop                                                 #  28    0xb4e37  1      OPC=nop             
  nop                                                 #  29    0xb4e38  1      OPC=nop             
  nop                                                 #  30    0xb4e39  1      OPC=nop             
  nop                                                 #  31    0xb4e3a  1      OPC=nop             
  nop                                                 #  32    0xb4e3b  1      OPC=nop             
  nop                                                 #  33    0xb4e3c  1      OPC=nop             
  nop                                                 #  34    0xb4e3d  1      OPC=nop             
  nop                                                 #  35    0xb4e3e  1      OPC=nop             
  nop                                                 #  36    0xb4e3f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb4e40  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb4e42  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb4e46  1      OPC=nop             
  nop                                                 #  40    0xb4e47  1      OPC=nop             
  nop                                                 #  41    0xb4e48  1      OPC=nop             
  nop                                                 #  42    0xb4e49  1      OPC=nop             
  nop                                                 #  43    0xb4e4a  1      OPC=nop             
  nop                                                 #  44    0xb4e4b  1      OPC=nop             
  nop                                                 #  45    0xb4e4c  1      OPC=nop             
  nop                                                 #  46    0xb4e4d  1      OPC=nop             
  nop                                                 #  47    0xb4e4e  1      OPC=nop             
  nop                                                 #  48    0xb4e4f  1      OPC=nop             
  nop                                                 #  49    0xb4e50  1      OPC=nop             
  nop                                                 #  50    0xb4e51  1      OPC=nop             
  nop                                                 #  51    0xb4e52  1      OPC=nop             
  nop                                                 #  52    0xb4e53  1      OPC=nop             
  nop                                                 #  53    0xb4e54  1      OPC=nop             
  nop                                                 #  54    0xb4e55  1      OPC=nop             
  nop                                                 #  55    0xb4e56  1      OPC=nop             
  nop                                                 #  56    0xb4e57  1      OPC=nop             
  nop                                                 #  57    0xb4e58  1      OPC=nop             
  nop                                                 #  58    0xb4e59  1      OPC=nop             
  nop                                                 #  59    0xb4e5a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb4e5b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb4e60  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb4e64  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb4e66  1      OPC=nop             
  nop                                                 #  64    0xb4e67  1      OPC=nop             
  nop                                                 #  65    0xb4e68  1      OPC=nop             
  nop                                                 #  66    0xb4e69  1      OPC=nop             
  nop                                                 #  67    0xb4e6a  1      OPC=nop             
  nop                                                 #  68    0xb4e6b  1      OPC=nop             
  nop                                                 #  69    0xb4e6c  1      OPC=nop             
  nop                                                 #  70    0xb4e6d  1      OPC=nop             
  nop                                                 #  71    0xb4e6e  1      OPC=nop             
  nop                                                 #  72    0xb4e6f  1      OPC=nop             
  nop                                                 #  73    0xb4e70  1      OPC=nop             
  nop                                                 #  74    0xb4e71  1      OPC=nop             
  nop                                                 #  75    0xb4e72  1      OPC=nop             
  nop                                                 #  76    0xb4e73  1      OPC=nop             
  nop                                                 #  77    0xb4e74  1      OPC=nop             
  nop                                                 #  78    0xb4e75  1      OPC=nop             
  nop                                                 #  79    0xb4e76  1      OPC=nop             
  nop                                                 #  80    0xb4e77  1      OPC=nop             
  nop                                                 #  81    0xb4e78  1      OPC=nop             
  nop                                                 #  82    0xb4e79  1      OPC=nop             
  nop                                                 #  83    0xb4e7a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb4e7b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIwED1Ev, .-_ZNSt7collateIwED1Ev

