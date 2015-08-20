  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, @function

#! file-offset 0x122b80
#! rip-offset  0xe2b80
#! capacity    128 bytes

# Text                                                                              #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE:  #        0xe2b80  0      OPC=<label>         
  movl %edi, %edi                                                                   #  1     0xe2b80  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                                   #  2     0xe2b82  2      OPC=movl_r32_r32    
  xorl %eax, %eax                                                                   #  3     0xe2b84  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                                   #  4     0xe2b86  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %edi                                                       #  5     0xe2b88  5      OPC=movl_r32_m32    
  movl %esi, %esi                                                                   #  6     0xe2b8d  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rsi,1), %edi                                                       #  7     0xe2b8f  5      OPC=cmpl_r32_m32    
  movl %edx, %edx                                                                   #  8     0xe2b94  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                                   #  9     0xe2b96  2      OPC=movl_r32_r32    
  je .L_e2bc0                                                                       #  10    0xe2b98  2      OPC=je_label        
  popq %r11                                                                         #  11    0xe2b9a  2      OPC=popq_r64_1      
  nop                                                                               #  12    0xe2b9c  1      OPC=nop             
  nop                                                                               #  13    0xe2b9d  1      OPC=nop             
  nop                                                                               #  14    0xe2b9e  1      OPC=nop             
  nop                                                                               #  15    0xe2b9f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                           #  16    0xe2ba0  7      OPC=andl_r32_imm32  
  nop                                                                               #  17    0xe2ba7  1      OPC=nop             
  nop                                                                               #  18    0xe2ba8  1      OPC=nop             
  nop                                                                               #  19    0xe2ba9  1      OPC=nop             
  nop                                                                               #  20    0xe2baa  1      OPC=nop             
  addq %r15, %r11                                                                   #  21    0xe2bab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                         #  22    0xe2bae  3      OPC=jmpq_r64        
  nop                                                                               #  23    0xe2bb1  1      OPC=nop             
  nop                                                                               #  24    0xe2bb2  1      OPC=nop             
  nop                                                                               #  25    0xe2bb3  1      OPC=nop             
  nop                                                                               #  26    0xe2bb4  1      OPC=nop             
  nop                                                                               #  27    0xe2bb5  1      OPC=nop             
  nop                                                                               #  28    0xe2bb6  1      OPC=nop             
  nop                                                                               #  29    0xe2bb7  1      OPC=nop             
  nop                                                                               #  30    0xe2bb8  1      OPC=nop             
  nop                                                                               #  31    0xe2bb9  1      OPC=nop             
  nop                                                                               #  32    0xe2bba  1      OPC=nop             
  nop                                                                               #  33    0xe2bbb  1      OPC=nop             
  nop                                                                               #  34    0xe2bbc  1      OPC=nop             
  nop                                                                               #  35    0xe2bbd  1      OPC=nop             
  nop                                                                               #  36    0xe2bbe  1      OPC=nop             
  nop                                                                               #  37    0xe2bbf  1      OPC=nop             
  nop                                                                               #  38    0xe2bc0  1      OPC=nop             
  nop                                                                               #  39    0xe2bc1  1      OPC=nop             
  nop                                                                               #  40    0xe2bc2  1      OPC=nop             
  nop                                                                               #  41    0xe2bc3  1      OPC=nop             
  nop                                                                               #  42    0xe2bc4  1      OPC=nop             
  nop                                                                               #  43    0xe2bc5  1      OPC=nop             
  nop                                                                               #  44    0xe2bc6  1      OPC=nop             
.L_e2bc0:                                                                           #        0xe2bc7  0      OPC=<label>         
  movl %ecx, %ecx                                                                   #  45    0xe2bc7  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rcx,1)                                                          #  46    0xe2bc9  4      OPC=movl_m32_r32    
  movl %ecx, %ecx                                                                   #  47    0xe2bcd  2      OPC=movl_r32_r32    
  movl $0x8, 0xc(%r15,%rcx,1)                                                       #  48    0xe2bcf  9      OPC=movl_m32_imm32  
  movl $0x1, %eax                                                                   #  49    0xe2bd8  5      OPC=movl_r32_imm32  
  nop                                                                               #  50    0xe2bdd  1      OPC=nop             
  nop                                                                               #  51    0xe2bde  1      OPC=nop             
  nop                                                                               #  52    0xe2bdf  1      OPC=nop             
  nop                                                                               #  53    0xe2be0  1      OPC=nop             
  nop                                                                               #  54    0xe2be1  1      OPC=nop             
  nop                                                                               #  55    0xe2be2  1      OPC=nop             
  nop                                                                               #  56    0xe2be3  1      OPC=nop             
  nop                                                                               #  57    0xe2be4  1      OPC=nop             
  nop                                                                               #  58    0xe2be5  1      OPC=nop             
  nop                                                                               #  59    0xe2be6  1      OPC=nop             
  movl %ecx, %ecx                                                                   #  60    0xe2be7  2      OPC=movl_r32_r32    
  movl $0x6, 0x4(%r15,%rcx,1)                                                       #  61    0xe2be9  9      OPC=movl_m32_imm32  
  popq %r11                                                                         #  62    0xe2bf2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                           #  63    0xe2bf4  7      OPC=andl_r32_imm32  
  nop                                                                               #  64    0xe2bfb  1      OPC=nop             
  nop                                                                               #  65    0xe2bfc  1      OPC=nop             
  nop                                                                               #  66    0xe2bfd  1      OPC=nop             
  nop                                                                               #  67    0xe2bfe  1      OPC=nop             
  addq %r15, %r11                                                                   #  68    0xe2bff  3      OPC=addq_r64_r64    
  jmpq %r11                                                                         #  69    0xe2c02  3      OPC=jmpq_r64        
  nop                                                                               #  70    0xe2c05  1      OPC=nop             
  nop                                                                               #  71    0xe2c06  1      OPC=nop             
  nop                                                                               #  72    0xe2c07  1      OPC=nop             
  nop                                                                               #  73    0xe2c08  1      OPC=nop             
  nop                                                                               #  74    0xe2c09  1      OPC=nop             
  nop                                                                               #  75    0xe2c0a  1      OPC=nop             
  nop                                                                               #  76    0xe2c0b  1      OPC=nop             
  nop                                                                               #  77    0xe2c0c  1      OPC=nop             
  nop                                                                               #  78    0xe2c0d  1      OPC=nop             
                                                                                                                                 
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE

