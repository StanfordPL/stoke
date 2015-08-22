  .text
  .globl _ZNSt10moneypunctIwLb0EEC2EPiPKcj
  .type _ZNSt10moneypunctIwLb0EEC2EPiPKcj, @function

#! file-offset 0xf7e00
#! rip-offset  0xb7e00
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC2EPiPKcj:                                #        0xb7e00  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7e00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7e01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7e03  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb7e05  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb7e07  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb7e09  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb7e0b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb7e0e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb7e11  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb7e13  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  11    0xb7e15  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb7e1d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb7e20  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb7e22  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb7e2b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb7e2d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb7e32  1      OPC=nop             
  nop                                                              #  18    0xb7e33  1      OPC=nop             
  nop                                                              #  19    0xb7e34  1      OPC=nop             
  nop                                                              #  20    0xb7e35  1      OPC=nop             
  nop                                                              #  21    0xb7e36  1      OPC=nop             
  nop                                                              #  22    0xb7e37  1      OPC=nop             
  nop                                                              #  23    0xb7e38  1      OPC=nop             
  nop                                                              #  24    0xb7e39  1      OPC=nop             
  nop                                                              #  25    0xb7e3a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb7e3b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7e40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7e43  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7e46  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7e47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7e49  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7e50  1      OPC=nop             
  nop                                                              #  33    0xb7e51  1      OPC=nop             
  nop                                                              #  34    0xb7e52  1      OPC=nop             
  nop                                                              #  35    0xb7e53  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7e54  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7e57  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb7e5a  1      OPC=nop             
  nop                                                              #  39    0xb7e5b  1      OPC=nop             
  nop                                                              #  40    0xb7e5c  1      OPC=nop             
  nop                                                              #  41    0xb7e5d  1      OPC=nop             
  nop                                                              #  42    0xb7e5e  1      OPC=nop             
  nop                                                              #  43    0xb7e5f  1      OPC=nop             
  nop                                                              #  44    0xb7e60  1      OPC=nop             
  nop                                                              #  45    0xb7e61  1      OPC=nop             
  nop                                                              #  46    0xb7e62  1      OPC=nop             
  nop                                                              #  47    0xb7e63  1      OPC=nop             
  nop                                                              #  48    0xb7e64  1      OPC=nop             
  nop                                                              #  49    0xb7e65  1      OPC=nop             
  nop                                                              #  50    0xb7e66  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7e67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7e69  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb7e6d  1      OPC=nop             
  nop                                                              #  54    0xb7e6e  1      OPC=nop             
  nop                                                              #  55    0xb7e6f  1      OPC=nop             
  nop                                                              #  56    0xb7e70  1      OPC=nop             
  nop                                                              #  57    0xb7e71  1      OPC=nop             
  nop                                                              #  58    0xb7e72  1      OPC=nop             
  nop                                                              #  59    0xb7e73  1      OPC=nop             
  nop                                                              #  60    0xb7e74  1      OPC=nop             
  nop                                                              #  61    0xb7e75  1      OPC=nop             
  nop                                                              #  62    0xb7e76  1      OPC=nop             
  nop                                                              #  63    0xb7e77  1      OPC=nop             
  nop                                                              #  64    0xb7e78  1      OPC=nop             
  nop                                                              #  65    0xb7e79  1      OPC=nop             
  nop                                                              #  66    0xb7e7a  1      OPC=nop             
  nop                                                              #  67    0xb7e7b  1      OPC=nop             
  nop                                                              #  68    0xb7e7c  1      OPC=nop             
  nop                                                              #  69    0xb7e7d  1      OPC=nop             
  nop                                                              #  70    0xb7e7e  1      OPC=nop             
  nop                                                              #  71    0xb7e7f  1      OPC=nop             
  nop                                                              #  72    0xb7e80  1      OPC=nop             
  nop                                                              #  73    0xb7e81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7e82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7e87  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb7e8b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb7e8d  1      OPC=nop             
  nop                                                              #  78    0xb7e8e  1      OPC=nop             
  nop                                                              #  79    0xb7e8f  1      OPC=nop             
  nop                                                              #  80    0xb7e90  1      OPC=nop             
  nop                                                              #  81    0xb7e91  1      OPC=nop             
  nop                                                              #  82    0xb7e92  1      OPC=nop             
  nop                                                              #  83    0xb7e93  1      OPC=nop             
  nop                                                              #  84    0xb7e94  1      OPC=nop             
  nop                                                              #  85    0xb7e95  1      OPC=nop             
  nop                                                              #  86    0xb7e96  1      OPC=nop             
  nop                                                              #  87    0xb7e97  1      OPC=nop             
  nop                                                              #  88    0xb7e98  1      OPC=nop             
  nop                                                              #  89    0xb7e99  1      OPC=nop             
  nop                                                              #  90    0xb7e9a  1      OPC=nop             
  nop                                                              #  91    0xb7e9b  1      OPC=nop             
  nop                                                              #  92    0xb7e9c  1      OPC=nop             
  nop                                                              #  93    0xb7e9d  1      OPC=nop             
  nop                                                              #  94    0xb7e9e  1      OPC=nop             
  nop                                                              #  95    0xb7e9f  1      OPC=nop             
  nop                                                              #  96    0xb7ea0  1      OPC=nop             
  nop                                                              #  97    0xb7ea1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7ea2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC2EPiPKcj, .-_ZNSt10moneypunctIwLb0EEC2EPiPKcj

