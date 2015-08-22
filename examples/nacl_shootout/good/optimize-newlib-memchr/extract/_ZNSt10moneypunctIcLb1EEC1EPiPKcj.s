  .text
  .globl _ZNSt10moneypunctIcLb1EEC1EPiPKcj
  .type _ZNSt10moneypunctIcLb1EEC1EPiPKcj, @function

#! file-offset 0xbee00
#! rip-offset  0x7ee00
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC1EPiPKcj:                                #        0x7ee00  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7ee00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7ee01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7ee03  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0x7ee05  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0x7ee07  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0x7ee09  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0x7ee0b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0x7ee0e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0x7ee11  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0x7ee13  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  11    0x7ee15  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0x7ee1d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0x7ee20  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0x7ee22  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0x7ee2b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0x7ee2d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0x7ee32  1      OPC=nop             
  nop                                                              #  18    0x7ee33  1      OPC=nop             
  nop                                                              #  19    0x7ee34  1      OPC=nop             
  nop                                                              #  20    0x7ee35  1      OPC=nop             
  nop                                                              #  21    0x7ee36  1      OPC=nop             
  nop                                                              #  22    0x7ee37  1      OPC=nop             
  nop                                                              #  23    0x7ee38  1      OPC=nop             
  nop                                                              #  24    0x7ee39  1      OPC=nop             
  nop                                                              #  25    0x7ee3a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0x7ee3b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7ee40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7ee43  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7ee46  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7ee47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7ee49  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7ee50  1      OPC=nop             
  nop                                                              #  33    0x7ee51  1      OPC=nop             
  nop                                                              #  34    0x7ee52  1      OPC=nop             
  nop                                                              #  35    0x7ee53  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7ee54  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7ee57  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7ee5a  1      OPC=nop             
  nop                                                              #  39    0x7ee5b  1      OPC=nop             
  nop                                                              #  40    0x7ee5c  1      OPC=nop             
  nop                                                              #  41    0x7ee5d  1      OPC=nop             
  nop                                                              #  42    0x7ee5e  1      OPC=nop             
  nop                                                              #  43    0x7ee5f  1      OPC=nop             
  nop                                                              #  44    0x7ee60  1      OPC=nop             
  nop                                                              #  45    0x7ee61  1      OPC=nop             
  nop                                                              #  46    0x7ee62  1      OPC=nop             
  nop                                                              #  47    0x7ee63  1      OPC=nop             
  nop                                                              #  48    0x7ee64  1      OPC=nop             
  nop                                                              #  49    0x7ee65  1      OPC=nop             
  nop                                                              #  50    0x7ee66  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7ee67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7ee69  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7ee6d  1      OPC=nop             
  nop                                                              #  54    0x7ee6e  1      OPC=nop             
  nop                                                              #  55    0x7ee6f  1      OPC=nop             
  nop                                                              #  56    0x7ee70  1      OPC=nop             
  nop                                                              #  57    0x7ee71  1      OPC=nop             
  nop                                                              #  58    0x7ee72  1      OPC=nop             
  nop                                                              #  59    0x7ee73  1      OPC=nop             
  nop                                                              #  60    0x7ee74  1      OPC=nop             
  nop                                                              #  61    0x7ee75  1      OPC=nop             
  nop                                                              #  62    0x7ee76  1      OPC=nop             
  nop                                                              #  63    0x7ee77  1      OPC=nop             
  nop                                                              #  64    0x7ee78  1      OPC=nop             
  nop                                                              #  65    0x7ee79  1      OPC=nop             
  nop                                                              #  66    0x7ee7a  1      OPC=nop             
  nop                                                              #  67    0x7ee7b  1      OPC=nop             
  nop                                                              #  68    0x7ee7c  1      OPC=nop             
  nop                                                              #  69    0x7ee7d  1      OPC=nop             
  nop                                                              #  70    0x7ee7e  1      OPC=nop             
  nop                                                              #  71    0x7ee7f  1      OPC=nop             
  nop                                                              #  72    0x7ee80  1      OPC=nop             
  nop                                                              #  73    0x7ee81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7ee82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7ee87  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7ee8b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7ee8d  1      OPC=nop             
  nop                                                              #  78    0x7ee8e  1      OPC=nop             
  nop                                                              #  79    0x7ee8f  1      OPC=nop             
  nop                                                              #  80    0x7ee90  1      OPC=nop             
  nop                                                              #  81    0x7ee91  1      OPC=nop             
  nop                                                              #  82    0x7ee92  1      OPC=nop             
  nop                                                              #  83    0x7ee93  1      OPC=nop             
  nop                                                              #  84    0x7ee94  1      OPC=nop             
  nop                                                              #  85    0x7ee95  1      OPC=nop             
  nop                                                              #  86    0x7ee96  1      OPC=nop             
  nop                                                              #  87    0x7ee97  1      OPC=nop             
  nop                                                              #  88    0x7ee98  1      OPC=nop             
  nop                                                              #  89    0x7ee99  1      OPC=nop             
  nop                                                              #  90    0x7ee9a  1      OPC=nop             
  nop                                                              #  91    0x7ee9b  1      OPC=nop             
  nop                                                              #  92    0x7ee9c  1      OPC=nop             
  nop                                                              #  93    0x7ee9d  1      OPC=nop             
  nop                                                              #  94    0x7ee9e  1      OPC=nop             
  nop                                                              #  95    0x7ee9f  1      OPC=nop             
  nop                                                              #  96    0x7eea0  1      OPC=nop             
  nop                                                              #  97    0x7eea1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7eea2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC1EPiPKcj, .-_ZNSt10moneypunctIcLb1EEC1EPiPKcj

