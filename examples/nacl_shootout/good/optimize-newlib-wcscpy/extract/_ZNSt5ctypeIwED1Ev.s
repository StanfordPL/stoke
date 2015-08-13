  .text
  .globl _ZNSt5ctypeIwED1Ev
  .type _ZNSt5ctypeIwED1Ev, @function

#! file-offset 0x124d60
#! rip-offset  0xe4d60
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwED1Ev:                                  #        0xe4d60  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe4d60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe4d61  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe4d63  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe4d66  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe4d69  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe4d6c  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                     #  7     0xe4d6e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe4d76  1      OPC=nop             
  nop                                                 #  9     0xe4d77  1      OPC=nop             
  nop                                                 #  10    0xe4d78  1      OPC=nop             
  nop                                                 #  11    0xe4d79  1      OPC=nop             
  nop                                                 #  12    0xe4d7a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe4d7b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe4d80  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  15    0xe4d82  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe4d8a  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe4d8c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe4d8f  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe4d92  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe4d93  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe4d98  1      OPC=nop             
  nop                                                 #  22    0xe4d99  1      OPC=nop             
  nop                                                 #  23    0xe4d9a  1      OPC=nop             
  nop                                                 #  24    0xe4d9b  1      OPC=nop             
  nop                                                 #  25    0xe4d9c  1      OPC=nop             
  nop                                                 #  26    0xe4d9d  1      OPC=nop             
  nop                                                 #  27    0xe4d9e  1      OPC=nop             
  nop                                                 #  28    0xe4d9f  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe4da0  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe4da2  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  31    0xe4da4  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe4dac  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe4db0  1      OPC=nop             
  nop                                                 #  34    0xe4db1  1      OPC=nop             
  nop                                                 #  35    0xe4db2  1      OPC=nop             
  nop                                                 #  36    0xe4db3  1      OPC=nop             
  nop                                                 #  37    0xe4db4  1      OPC=nop             
  nop                                                 #  38    0xe4db5  1      OPC=nop             
  nop                                                 #  39    0xe4db6  1      OPC=nop             
  nop                                                 #  40    0xe4db7  1      OPC=nop             
  nop                                                 #  41    0xe4db8  1      OPC=nop             
  nop                                                 #  42    0xe4db9  1      OPC=nop             
  nop                                                 #  43    0xe4dba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe4dbb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe4dc0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe4dc4  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe4dc6  1      OPC=nop             
  nop                                                 #  48    0xe4dc7  1      OPC=nop             
  nop                                                 #  49    0xe4dc8  1      OPC=nop             
  nop                                                 #  50    0xe4dc9  1      OPC=nop             
  nop                                                 #  51    0xe4dca  1      OPC=nop             
  nop                                                 #  52    0xe4dcb  1      OPC=nop             
  nop                                                 #  53    0xe4dcc  1      OPC=nop             
  nop                                                 #  54    0xe4dcd  1      OPC=nop             
  nop                                                 #  55    0xe4dce  1      OPC=nop             
  nop                                                 #  56    0xe4dcf  1      OPC=nop             
  nop                                                 #  57    0xe4dd0  1      OPC=nop             
  nop                                                 #  58    0xe4dd1  1      OPC=nop             
  nop                                                 #  59    0xe4dd2  1      OPC=nop             
  nop                                                 #  60    0xe4dd3  1      OPC=nop             
  nop                                                 #  61    0xe4dd4  1      OPC=nop             
  nop                                                 #  62    0xe4dd5  1      OPC=nop             
  nop                                                 #  63    0xe4dd6  1      OPC=nop             
  nop                                                 #  64    0xe4dd7  1      OPC=nop             
  nop                                                 #  65    0xe4dd8  1      OPC=nop             
  nop                                                 #  66    0xe4dd9  1      OPC=nop             
  nop                                                 #  67    0xe4dda  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe4ddb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIwED1Ev, .-_ZNSt5ctypeIwED1Ev

