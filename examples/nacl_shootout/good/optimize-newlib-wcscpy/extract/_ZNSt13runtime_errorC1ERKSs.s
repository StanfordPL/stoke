  .text
  .globl _ZNSt13runtime_errorC1ERKSs
  .type _ZNSt13runtime_errorC1ERKSs, @function

#! file-offset 0x128f00
#! rip-offset  0xe8f00
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13runtime_errorC1ERKSs:      #        0xe8f00  0      OPC=<label>         
  pushq %rbx                       #  1     0xe8f00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe8f01  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe8f03  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe8f05  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe8f08  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe8f0b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe8f0e  2      OPC=movl_r32_r32    
  movl $0x1003db08, (%r15,%rbx,1)  #  8     0xe8f10  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe8f18  1      OPC=nop             
  nop                              #  10    0xe8f19  1      OPC=nop             
  nop                              #  11    0xe8f1a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe8f1b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe8f20  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe8f23  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe8f26  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe8f27  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe8f29  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe8f30  1      OPC=nop             
  nop                              #  19    0xe8f31  1      OPC=nop             
  nop                              #  20    0xe8f32  1      OPC=nop             
  nop                              #  21    0xe8f33  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe8f34  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe8f37  3      OPC=jmpq_r64        
  nop                              #  24    0xe8f3a  1      OPC=nop             
  nop                              #  25    0xe8f3b  1      OPC=nop             
  nop                              #  26    0xe8f3c  1      OPC=nop             
  nop                              #  27    0xe8f3d  1      OPC=nop             
  nop                              #  28    0xe8f3e  1      OPC=nop             
  nop                              #  29    0xe8f3f  1      OPC=nop             
  nop                              #  30    0xe8f40  1      OPC=nop             
  nop                              #  31    0xe8f41  1      OPC=nop             
  nop                              #  32    0xe8f42  1      OPC=nop             
  nop                              #  33    0xe8f43  1      OPC=nop             
  nop                              #  34    0xe8f44  1      OPC=nop             
  nop                              #  35    0xe8f45  1      OPC=nop             
  nop                              #  36    0xe8f46  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe8f47  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe8f49  4      OPC=movl_m32_r32    
  nop                              #  39    0xe8f4d  1      OPC=nop             
  nop                              #  40    0xe8f4e  1      OPC=nop             
  nop                              #  41    0xe8f4f  1      OPC=nop             
  nop                              #  42    0xe8f50  1      OPC=nop             
  nop                              #  43    0xe8f51  1      OPC=nop             
  nop                              #  44    0xe8f52  1      OPC=nop             
  nop                              #  45    0xe8f53  1      OPC=nop             
  nop                              #  46    0xe8f54  1      OPC=nop             
  nop                              #  47    0xe8f55  1      OPC=nop             
  nop                              #  48    0xe8f56  1      OPC=nop             
  nop                              #  49    0xe8f57  1      OPC=nop             
  nop                              #  50    0xe8f58  1      OPC=nop             
  nop                              #  51    0xe8f59  1      OPC=nop             
  nop                              #  52    0xe8f5a  1      OPC=nop             
  nop                              #  53    0xe8f5b  1      OPC=nop             
  nop                              #  54    0xe8f5c  1      OPC=nop             
  nop                              #  55    0xe8f5d  1      OPC=nop             
  nop                              #  56    0xe8f5e  1      OPC=nop             
  nop                              #  57    0xe8f5f  1      OPC=nop             
  nop                              #  58    0xe8f60  1      OPC=nop             
  nop                              #  59    0xe8f61  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe8f62  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe8f67  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe8f6b  2      OPC=movl_r32_r32    
  nop                              #  63    0xe8f6d  1      OPC=nop             
  nop                              #  64    0xe8f6e  1      OPC=nop             
  nop                              #  65    0xe8f6f  1      OPC=nop             
  nop                              #  66    0xe8f70  1      OPC=nop             
  nop                              #  67    0xe8f71  1      OPC=nop             
  nop                              #  68    0xe8f72  1      OPC=nop             
  nop                              #  69    0xe8f73  1      OPC=nop             
  nop                              #  70    0xe8f74  1      OPC=nop             
  nop                              #  71    0xe8f75  1      OPC=nop             
  nop                              #  72    0xe8f76  1      OPC=nop             
  nop                              #  73    0xe8f77  1      OPC=nop             
  nop                              #  74    0xe8f78  1      OPC=nop             
  nop                              #  75    0xe8f79  1      OPC=nop             
  nop                              #  76    0xe8f7a  1      OPC=nop             
  nop                              #  77    0xe8f7b  1      OPC=nop             
  nop                              #  78    0xe8f7c  1      OPC=nop             
  nop                              #  79    0xe8f7d  1      OPC=nop             
  nop                              #  80    0xe8f7e  1      OPC=nop             
  nop                              #  81    0xe8f7f  1      OPC=nop             
  nop                              #  82    0xe8f80  1      OPC=nop             
  nop                              #  83    0xe8f81  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe8f82  5      OPC=callq_label     
                                                                                
.size _ZNSt13runtime_errorC1ERKSs, .-_ZNSt13runtime_errorC1ERKSs

