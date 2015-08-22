  .text
  .globl _ZNSt11logic_errorC2ERKSs
  .type _ZNSt11logic_errorC2ERKSs, @function

#! file-offset 0x129c20
#! rip-offset  0xe9c20
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt11logic_errorC2ERKSs:        #        0xe9c20  0      OPC=<label>         
  pushq %rbx                       #  1     0xe9c20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe9c21  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe9c23  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe9c25  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe9c28  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe9c2b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe9c2e  2      OPC=movl_r32_r32    
  movl $0x1003db28, (%r15,%rbx,1)  #  8     0xe9c30  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe9c38  1      OPC=nop             
  nop                              #  10    0xe9c39  1      OPC=nop             
  nop                              #  11    0xe9c3a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe9c3b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe9c40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe9c43  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe9c46  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe9c47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe9c49  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe9c50  1      OPC=nop             
  nop                              #  19    0xe9c51  1      OPC=nop             
  nop                              #  20    0xe9c52  1      OPC=nop             
  nop                              #  21    0xe9c53  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe9c54  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe9c57  3      OPC=jmpq_r64        
  nop                              #  24    0xe9c5a  1      OPC=nop             
  nop                              #  25    0xe9c5b  1      OPC=nop             
  nop                              #  26    0xe9c5c  1      OPC=nop             
  nop                              #  27    0xe9c5d  1      OPC=nop             
  nop                              #  28    0xe9c5e  1      OPC=nop             
  nop                              #  29    0xe9c5f  1      OPC=nop             
  nop                              #  30    0xe9c60  1      OPC=nop             
  nop                              #  31    0xe9c61  1      OPC=nop             
  nop                              #  32    0xe9c62  1      OPC=nop             
  nop                              #  33    0xe9c63  1      OPC=nop             
  nop                              #  34    0xe9c64  1      OPC=nop             
  nop                              #  35    0xe9c65  1      OPC=nop             
  nop                              #  36    0xe9c66  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe9c67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe9c69  4      OPC=movl_m32_r32    
  nop                              #  39    0xe9c6d  1      OPC=nop             
  nop                              #  40    0xe9c6e  1      OPC=nop             
  nop                              #  41    0xe9c6f  1      OPC=nop             
  nop                              #  42    0xe9c70  1      OPC=nop             
  nop                              #  43    0xe9c71  1      OPC=nop             
  nop                              #  44    0xe9c72  1      OPC=nop             
  nop                              #  45    0xe9c73  1      OPC=nop             
  nop                              #  46    0xe9c74  1      OPC=nop             
  nop                              #  47    0xe9c75  1      OPC=nop             
  nop                              #  48    0xe9c76  1      OPC=nop             
  nop                              #  49    0xe9c77  1      OPC=nop             
  nop                              #  50    0xe9c78  1      OPC=nop             
  nop                              #  51    0xe9c79  1      OPC=nop             
  nop                              #  52    0xe9c7a  1      OPC=nop             
  nop                              #  53    0xe9c7b  1      OPC=nop             
  nop                              #  54    0xe9c7c  1      OPC=nop             
  nop                              #  55    0xe9c7d  1      OPC=nop             
  nop                              #  56    0xe9c7e  1      OPC=nop             
  nop                              #  57    0xe9c7f  1      OPC=nop             
  nop                              #  58    0xe9c80  1      OPC=nop             
  nop                              #  59    0xe9c81  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe9c82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe9c87  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe9c8b  2      OPC=movl_r32_r32    
  nop                              #  63    0xe9c8d  1      OPC=nop             
  nop                              #  64    0xe9c8e  1      OPC=nop             
  nop                              #  65    0xe9c8f  1      OPC=nop             
  nop                              #  66    0xe9c90  1      OPC=nop             
  nop                              #  67    0xe9c91  1      OPC=nop             
  nop                              #  68    0xe9c92  1      OPC=nop             
  nop                              #  69    0xe9c93  1      OPC=nop             
  nop                              #  70    0xe9c94  1      OPC=nop             
  nop                              #  71    0xe9c95  1      OPC=nop             
  nop                              #  72    0xe9c96  1      OPC=nop             
  nop                              #  73    0xe9c97  1      OPC=nop             
  nop                              #  74    0xe9c98  1      OPC=nop             
  nop                              #  75    0xe9c99  1      OPC=nop             
  nop                              #  76    0xe9c9a  1      OPC=nop             
  nop                              #  77    0xe9c9b  1      OPC=nop             
  nop                              #  78    0xe9c9c  1      OPC=nop             
  nop                              #  79    0xe9c9d  1      OPC=nop             
  nop                              #  80    0xe9c9e  1      OPC=nop             
  nop                              #  81    0xe9c9f  1      OPC=nop             
  nop                              #  82    0xe9ca0  1      OPC=nop             
  nop                              #  83    0xe9ca1  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe9ca2  5      OPC=callq_label     
                                                                                
.size _ZNSt11logic_errorC2ERKSs, .-_ZNSt11logic_errorC2ERKSs

