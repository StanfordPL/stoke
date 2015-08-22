  .text
  .globl _ZNSt10moneypunctIwLb0EEC1EPiPKcj
  .type _ZNSt10moneypunctIwLb0EEC1EPiPKcj, @function

#! file-offset 0xf7d60
#! rip-offset  0xb7d60
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC1EPiPKcj:                                #        0xb7d60  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7d60  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7d61  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7d63  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb7d65  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb7d67  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb7d69  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb7d6b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb7d6e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb7d71  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb7d73  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  11    0xb7d75  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb7d7d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb7d80  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb7d82  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb7d8b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb7d8d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb7d92  1      OPC=nop             
  nop                                                              #  18    0xb7d93  1      OPC=nop             
  nop                                                              #  19    0xb7d94  1      OPC=nop             
  nop                                                              #  20    0xb7d95  1      OPC=nop             
  nop                                                              #  21    0xb7d96  1      OPC=nop             
  nop                                                              #  22    0xb7d97  1      OPC=nop             
  nop                                                              #  23    0xb7d98  1      OPC=nop             
  nop                                                              #  24    0xb7d99  1      OPC=nop             
  nop                                                              #  25    0xb7d9a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb7d9b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7da0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7da3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7da6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7da7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7da9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7db0  1      OPC=nop             
  nop                                                              #  33    0xb7db1  1      OPC=nop             
  nop                                                              #  34    0xb7db2  1      OPC=nop             
  nop                                                              #  35    0xb7db3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7db4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7db7  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb7dba  1      OPC=nop             
  nop                                                              #  39    0xb7dbb  1      OPC=nop             
  nop                                                              #  40    0xb7dbc  1      OPC=nop             
  nop                                                              #  41    0xb7dbd  1      OPC=nop             
  nop                                                              #  42    0xb7dbe  1      OPC=nop             
  nop                                                              #  43    0xb7dbf  1      OPC=nop             
  nop                                                              #  44    0xb7dc0  1      OPC=nop             
  nop                                                              #  45    0xb7dc1  1      OPC=nop             
  nop                                                              #  46    0xb7dc2  1      OPC=nop             
  nop                                                              #  47    0xb7dc3  1      OPC=nop             
  nop                                                              #  48    0xb7dc4  1      OPC=nop             
  nop                                                              #  49    0xb7dc5  1      OPC=nop             
  nop                                                              #  50    0xb7dc6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7dc7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7dc9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb7dcd  1      OPC=nop             
  nop                                                              #  54    0xb7dce  1      OPC=nop             
  nop                                                              #  55    0xb7dcf  1      OPC=nop             
  nop                                                              #  56    0xb7dd0  1      OPC=nop             
  nop                                                              #  57    0xb7dd1  1      OPC=nop             
  nop                                                              #  58    0xb7dd2  1      OPC=nop             
  nop                                                              #  59    0xb7dd3  1      OPC=nop             
  nop                                                              #  60    0xb7dd4  1      OPC=nop             
  nop                                                              #  61    0xb7dd5  1      OPC=nop             
  nop                                                              #  62    0xb7dd6  1      OPC=nop             
  nop                                                              #  63    0xb7dd7  1      OPC=nop             
  nop                                                              #  64    0xb7dd8  1      OPC=nop             
  nop                                                              #  65    0xb7dd9  1      OPC=nop             
  nop                                                              #  66    0xb7dda  1      OPC=nop             
  nop                                                              #  67    0xb7ddb  1      OPC=nop             
  nop                                                              #  68    0xb7ddc  1      OPC=nop             
  nop                                                              #  69    0xb7ddd  1      OPC=nop             
  nop                                                              #  70    0xb7dde  1      OPC=nop             
  nop                                                              #  71    0xb7ddf  1      OPC=nop             
  nop                                                              #  72    0xb7de0  1      OPC=nop             
  nop                                                              #  73    0xb7de1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7de2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7de7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb7deb  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb7ded  1      OPC=nop             
  nop                                                              #  78    0xb7dee  1      OPC=nop             
  nop                                                              #  79    0xb7def  1      OPC=nop             
  nop                                                              #  80    0xb7df0  1      OPC=nop             
  nop                                                              #  81    0xb7df1  1      OPC=nop             
  nop                                                              #  82    0xb7df2  1      OPC=nop             
  nop                                                              #  83    0xb7df3  1      OPC=nop             
  nop                                                              #  84    0xb7df4  1      OPC=nop             
  nop                                                              #  85    0xb7df5  1      OPC=nop             
  nop                                                              #  86    0xb7df6  1      OPC=nop             
  nop                                                              #  87    0xb7df7  1      OPC=nop             
  nop                                                              #  88    0xb7df8  1      OPC=nop             
  nop                                                              #  89    0xb7df9  1      OPC=nop             
  nop                                                              #  90    0xb7dfa  1      OPC=nop             
  nop                                                              #  91    0xb7dfb  1      OPC=nop             
  nop                                                              #  92    0xb7dfc  1      OPC=nop             
  nop                                                              #  93    0xb7dfd  1      OPC=nop             
  nop                                                              #  94    0xb7dfe  1      OPC=nop             
  nop                                                              #  95    0xb7dff  1      OPC=nop             
  nop                                                              #  96    0xb7e00  1      OPC=nop             
  nop                                                              #  97    0xb7e01  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7e02  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC1EPiPKcj, .-_ZNSt10moneypunctIwLb0EEC1EPiPKcj

