  .text
  .globl _ZNSt10moneypunctIwLb1EEC1EPiPKcj
  .type _ZNSt10moneypunctIwLb1EEC1EPiPKcj, @function

#! file-offset 0xf6f00
#! rip-offset  0xb6f00
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC1EPiPKcj:                                #        0xb6f00  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb6f00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb6f01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb6f03  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb6f05  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb6f07  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb6f09  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb6f0b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb6f0e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb6f11  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb6f13  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  11    0xb6f15  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb6f1d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb6f20  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb6f22  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb6f2b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb6f2d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb6f32  1      OPC=nop             
  nop                                                              #  18    0xb6f33  1      OPC=nop             
  nop                                                              #  19    0xb6f34  1      OPC=nop             
  nop                                                              #  20    0xb6f35  1      OPC=nop             
  nop                                                              #  21    0xb6f36  1      OPC=nop             
  nop                                                              #  22    0xb6f37  1      OPC=nop             
  nop                                                              #  23    0xb6f38  1      OPC=nop             
  nop                                                              #  24    0xb6f39  1      OPC=nop             
  nop                                                              #  25    0xb6f3a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb6f3b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb6f40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb6f43  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb6f46  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb6f47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb6f49  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb6f50  1      OPC=nop             
  nop                                                              #  33    0xb6f51  1      OPC=nop             
  nop                                                              #  34    0xb6f52  1      OPC=nop             
  nop                                                              #  35    0xb6f53  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb6f54  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb6f57  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb6f5a  1      OPC=nop             
  nop                                                              #  39    0xb6f5b  1      OPC=nop             
  nop                                                              #  40    0xb6f5c  1      OPC=nop             
  nop                                                              #  41    0xb6f5d  1      OPC=nop             
  nop                                                              #  42    0xb6f5e  1      OPC=nop             
  nop                                                              #  43    0xb6f5f  1      OPC=nop             
  nop                                                              #  44    0xb6f60  1      OPC=nop             
  nop                                                              #  45    0xb6f61  1      OPC=nop             
  nop                                                              #  46    0xb6f62  1      OPC=nop             
  nop                                                              #  47    0xb6f63  1      OPC=nop             
  nop                                                              #  48    0xb6f64  1      OPC=nop             
  nop                                                              #  49    0xb6f65  1      OPC=nop             
  nop                                                              #  50    0xb6f66  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb6f67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb6f69  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb6f6d  1      OPC=nop             
  nop                                                              #  54    0xb6f6e  1      OPC=nop             
  nop                                                              #  55    0xb6f6f  1      OPC=nop             
  nop                                                              #  56    0xb6f70  1      OPC=nop             
  nop                                                              #  57    0xb6f71  1      OPC=nop             
  nop                                                              #  58    0xb6f72  1      OPC=nop             
  nop                                                              #  59    0xb6f73  1      OPC=nop             
  nop                                                              #  60    0xb6f74  1      OPC=nop             
  nop                                                              #  61    0xb6f75  1      OPC=nop             
  nop                                                              #  62    0xb6f76  1      OPC=nop             
  nop                                                              #  63    0xb6f77  1      OPC=nop             
  nop                                                              #  64    0xb6f78  1      OPC=nop             
  nop                                                              #  65    0xb6f79  1      OPC=nop             
  nop                                                              #  66    0xb6f7a  1      OPC=nop             
  nop                                                              #  67    0xb6f7b  1      OPC=nop             
  nop                                                              #  68    0xb6f7c  1      OPC=nop             
  nop                                                              #  69    0xb6f7d  1      OPC=nop             
  nop                                                              #  70    0xb6f7e  1      OPC=nop             
  nop                                                              #  71    0xb6f7f  1      OPC=nop             
  nop                                                              #  72    0xb6f80  1      OPC=nop             
  nop                                                              #  73    0xb6f81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb6f82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb6f87  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb6f8b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb6f8d  1      OPC=nop             
  nop                                                              #  78    0xb6f8e  1      OPC=nop             
  nop                                                              #  79    0xb6f8f  1      OPC=nop             
  nop                                                              #  80    0xb6f90  1      OPC=nop             
  nop                                                              #  81    0xb6f91  1      OPC=nop             
  nop                                                              #  82    0xb6f92  1      OPC=nop             
  nop                                                              #  83    0xb6f93  1      OPC=nop             
  nop                                                              #  84    0xb6f94  1      OPC=nop             
  nop                                                              #  85    0xb6f95  1      OPC=nop             
  nop                                                              #  86    0xb6f96  1      OPC=nop             
  nop                                                              #  87    0xb6f97  1      OPC=nop             
  nop                                                              #  88    0xb6f98  1      OPC=nop             
  nop                                                              #  89    0xb6f99  1      OPC=nop             
  nop                                                              #  90    0xb6f9a  1      OPC=nop             
  nop                                                              #  91    0xb6f9b  1      OPC=nop             
  nop                                                              #  92    0xb6f9c  1      OPC=nop             
  nop                                                              #  93    0xb6f9d  1      OPC=nop             
  nop                                                              #  94    0xb6f9e  1      OPC=nop             
  nop                                                              #  95    0xb6f9f  1      OPC=nop             
  nop                                                              #  96    0xb6fa0  1      OPC=nop             
  nop                                                              #  97    0xb6fa1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb6fa2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC1EPiPKcj, .-_ZNSt10moneypunctIwLb1EEC1EPiPKcj

