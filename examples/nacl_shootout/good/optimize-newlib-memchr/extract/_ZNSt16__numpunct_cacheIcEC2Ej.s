  .text
  .globl _ZNSt16__numpunct_cacheIcEC2Ej
  .type _ZNSt16__numpunct_cacheIcEC2Ej, @function

#! file-offset 0xb80c0
#! rip-offset  0x780c0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIcEC2Ej:   #        0x780c0  0      OPC=<label>         
  popq %r11                        #  1     0x780c0  2      OPC=popq_r64_1      
  xorl %eax, %eax                  #  2     0x780c2  2      OPC=xorl_r32_r32    
  testl %esi, %esi                 #  3     0x780c4  2      OPC=testl_r32_r32   
  movl %edi, %edi                  #  4     0x780c6  2      OPC=movl_r32_r32    
  setne %al                        #  5     0x780c8  3      OPC=setne_r8        
  movl %edi, %edi                  #  6     0x780cb  2      OPC=movl_r32_r32    
  movl $0x1003abc8, (%r15,%rdi,1)  #  7     0x780cd  8      OPC=movl_m32_imm32  
  movl %edi, %edi                  #  8     0x780d5  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)      #  9     0x780d7  9      OPC=movl_m32_imm32  
  movl %edi, %edi                  #  10    0x780e0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)      #  11    0x780e2  5      OPC=movl_m32_r32    
  movl %edi, %edi                  #  12    0x780e7  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rdi,1)      #  13    0x780e9  9      OPC=movl_m32_imm32  
  movl %edi, %edi                  #  14    0x780f2  2      OPC=movl_r32_r32    
  movb $0x0, 0x10(%r15,%rdi,1)     #  15    0x780f4  6      OPC=movb_m8_imm8    
  nop                              #  16    0x780fa  1      OPC=nop             
  nop                              #  17    0x780fb  1      OPC=nop             
  nop                              #  18    0x780fc  1      OPC=nop             
  nop                              #  19    0x780fd  1      OPC=nop             
  nop                              #  20    0x780fe  1      OPC=nop             
  nop                              #  21    0x780ff  1      OPC=nop             
  movl %edi, %edi                  #  22    0x78100  2      OPC=movl_r32_r32    
  movl $0x0, 0x14(%r15,%rdi,1)     #  23    0x78102  9      OPC=movl_m32_imm32  
  movl %edi, %edi                  #  24    0x7810b  2      OPC=movl_r32_r32    
  movl $0x0, 0x18(%r15,%rdi,1)     #  25    0x7810d  9      OPC=movl_m32_imm32  
  nop                              #  26    0x78116  1      OPC=nop             
  nop                              #  27    0x78117  1      OPC=nop             
  nop                              #  28    0x78118  1      OPC=nop             
  nop                              #  29    0x78119  1      OPC=nop             
  nop                              #  30    0x7811a  1      OPC=nop             
  nop                              #  31    0x7811b  1      OPC=nop             
  nop                              #  32    0x7811c  1      OPC=nop             
  nop                              #  33    0x7811d  1      OPC=nop             
  nop                              #  34    0x7811e  1      OPC=nop             
  nop                              #  35    0x7811f  1      OPC=nop             
  movl %edi, %edi                  #  36    0x78120  2      OPC=movl_r32_r32    
  movl $0x0, 0x1c(%r15,%rdi,1)     #  37    0x78122  9      OPC=movl_m32_imm32  
  movl %edi, %edi                  #  38    0x7812b  2      OPC=movl_r32_r32    
  movl $0x0, 0x20(%r15,%rdi,1)     #  39    0x7812d  9      OPC=movl_m32_imm32  
  movl %edi, %edi                  #  40    0x78136  2      OPC=movl_r32_r32    
  movb $0x0, 0x24(%r15,%rdi,1)     #  41    0x78138  6      OPC=movb_m8_imm8    
  xchgw %ax, %ax                   #  42    0x7813e  2      OPC=xchgw_ax_r16    
  movl %edi, %edi                  #  43    0x78140  2      OPC=movl_r32_r32    
  movb $0x0, 0x25(%r15,%rdi,1)     #  44    0x78142  6      OPC=movb_m8_imm8    
  movl %edi, %edi                  #  45    0x78148  2      OPC=movl_r32_r32    
  movb $0x0, 0x64(%r15,%rdi,1)     #  46    0x7814a  6      OPC=movb_m8_imm8    
  andl $0xffffffe0, %r11d          #  47    0x78150  7      OPC=andl_r32_imm32  
  nop                              #  48    0x78157  1      OPC=nop             
  nop                              #  49    0x78158  1      OPC=nop             
  nop                              #  50    0x78159  1      OPC=nop             
  nop                              #  51    0x7815a  1      OPC=nop             
  addq %r15, %r11                  #  52    0x7815b  3      OPC=addq_r64_r64    
  jmpq %r11                        #  53    0x7815e  3      OPC=jmpq_r64        
  nop                              #  54    0x78161  1      OPC=nop             
  nop                              #  55    0x78162  1      OPC=nop             
  nop                              #  56    0x78163  1      OPC=nop             
  nop                              #  57    0x78164  1      OPC=nop             
  nop                              #  58    0x78165  1      OPC=nop             
  nop                              #  59    0x78166  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIcEC2Ej, .-_ZNSt16__numpunct_cacheIcEC2Ej

