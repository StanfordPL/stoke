  .text
  .globl _ZNSt14collate_bynameIwED1Ev
  .type _ZNSt14collate_bynameIwED1Ev, @function

#! file-offset 0xf9e00
#! rip-offset  0xb9e00
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIwED1Ev:                        #        0xb9e00  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb9e00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb9e01  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb9e03  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb9e06  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb9e09  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb9e0c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb9e0e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb9e16  1      OPC=nop             
  nop                                                 #  9     0xb9e17  1      OPC=nop             
  nop                                                 #  10    0xb9e18  1      OPC=nop             
  nop                                                 #  11    0xb9e19  1      OPC=nop             
  nop                                                 #  12    0xb9e1a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb9e1b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb9e20  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb9e22  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb9e25  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb9e28  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb9e29  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb9e2e  1      OPC=nop             
  nop                                                 #  20    0xb9e2f  1      OPC=nop             
  nop                                                 #  21    0xb9e30  1      OPC=nop             
  nop                                                 #  22    0xb9e31  1      OPC=nop             
  nop                                                 #  23    0xb9e32  1      OPC=nop             
  nop                                                 #  24    0xb9e33  1      OPC=nop             
  nop                                                 #  25    0xb9e34  1      OPC=nop             
  nop                                                 #  26    0xb9e35  1      OPC=nop             
  nop                                                 #  27    0xb9e36  1      OPC=nop             
  nop                                                 #  28    0xb9e37  1      OPC=nop             
  nop                                                 #  29    0xb9e38  1      OPC=nop             
  nop                                                 #  30    0xb9e39  1      OPC=nop             
  nop                                                 #  31    0xb9e3a  1      OPC=nop             
  nop                                                 #  32    0xb9e3b  1      OPC=nop             
  nop                                                 #  33    0xb9e3c  1      OPC=nop             
  nop                                                 #  34    0xb9e3d  1      OPC=nop             
  nop                                                 #  35    0xb9e3e  1      OPC=nop             
  nop                                                 #  36    0xb9e3f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb9e40  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb9e42  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb9e46  1      OPC=nop             
  nop                                                 #  40    0xb9e47  1      OPC=nop             
  nop                                                 #  41    0xb9e48  1      OPC=nop             
  nop                                                 #  42    0xb9e49  1      OPC=nop             
  nop                                                 #  43    0xb9e4a  1      OPC=nop             
  nop                                                 #  44    0xb9e4b  1      OPC=nop             
  nop                                                 #  45    0xb9e4c  1      OPC=nop             
  nop                                                 #  46    0xb9e4d  1      OPC=nop             
  nop                                                 #  47    0xb9e4e  1      OPC=nop             
  nop                                                 #  48    0xb9e4f  1      OPC=nop             
  nop                                                 #  49    0xb9e50  1      OPC=nop             
  nop                                                 #  50    0xb9e51  1      OPC=nop             
  nop                                                 #  51    0xb9e52  1      OPC=nop             
  nop                                                 #  52    0xb9e53  1      OPC=nop             
  nop                                                 #  53    0xb9e54  1      OPC=nop             
  nop                                                 #  54    0xb9e55  1      OPC=nop             
  nop                                                 #  55    0xb9e56  1      OPC=nop             
  nop                                                 #  56    0xb9e57  1      OPC=nop             
  nop                                                 #  57    0xb9e58  1      OPC=nop             
  nop                                                 #  58    0xb9e59  1      OPC=nop             
  nop                                                 #  59    0xb9e5a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb9e5b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb9e60  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb9e64  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb9e66  1      OPC=nop             
  nop                                                 #  64    0xb9e67  1      OPC=nop             
  nop                                                 #  65    0xb9e68  1      OPC=nop             
  nop                                                 #  66    0xb9e69  1      OPC=nop             
  nop                                                 #  67    0xb9e6a  1      OPC=nop             
  nop                                                 #  68    0xb9e6b  1      OPC=nop             
  nop                                                 #  69    0xb9e6c  1      OPC=nop             
  nop                                                 #  70    0xb9e6d  1      OPC=nop             
  nop                                                 #  71    0xb9e6e  1      OPC=nop             
  nop                                                 #  72    0xb9e6f  1      OPC=nop             
  nop                                                 #  73    0xb9e70  1      OPC=nop             
  nop                                                 #  74    0xb9e71  1      OPC=nop             
  nop                                                 #  75    0xb9e72  1      OPC=nop             
  nop                                                 #  76    0xb9e73  1      OPC=nop             
  nop                                                 #  77    0xb9e74  1      OPC=nop             
  nop                                                 #  78    0xb9e75  1      OPC=nop             
  nop                                                 #  79    0xb9e76  1      OPC=nop             
  nop                                                 #  80    0xb9e77  1      OPC=nop             
  nop                                                 #  81    0xb9e78  1      OPC=nop             
  nop                                                 #  82    0xb9e79  1      OPC=nop             
  nop                                                 #  83    0xb9e7a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb9e7b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIwED1Ev, .-_ZNSt14collate_bynameIwED1Ev

