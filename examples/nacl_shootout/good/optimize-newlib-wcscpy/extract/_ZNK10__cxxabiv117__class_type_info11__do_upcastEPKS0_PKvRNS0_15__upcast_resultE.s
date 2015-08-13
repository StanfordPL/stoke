  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, @function

#! file-offset 0x122880
#! rip-offset  0xe2880
#! capacity    128 bytes

# Text                                                                              #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE:  #        0xe2880  0      OPC=<label>         
  movl %edi, %edi                                                                   #  1     0xe2880  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                                   #  2     0xe2882  2      OPC=movl_r32_r32    
  xorl %eax, %eax                                                                   #  3     0xe2884  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                                   #  4     0xe2886  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %edi                                                       #  5     0xe2888  5      OPC=movl_r32_m32    
  movl %esi, %esi                                                                   #  6     0xe288d  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rsi,1), %edi                                                       #  7     0xe288f  5      OPC=cmpl_r32_m32    
  movl %edx, %edx                                                                   #  8     0xe2894  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                                   #  9     0xe2896  2      OPC=movl_r32_r32    
  je .L_e28c0                                                                       #  10    0xe2898  2      OPC=je_label        
  popq %r11                                                                         #  11    0xe289a  2      OPC=popq_r64_1      
  nop                                                                               #  12    0xe289c  1      OPC=nop             
  nop                                                                               #  13    0xe289d  1      OPC=nop             
  nop                                                                               #  14    0xe289e  1      OPC=nop             
  nop                                                                               #  15    0xe289f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                           #  16    0xe28a0  7      OPC=andl_r32_imm32  
  nop                                                                               #  17    0xe28a7  1      OPC=nop             
  nop                                                                               #  18    0xe28a8  1      OPC=nop             
  nop                                                                               #  19    0xe28a9  1      OPC=nop             
  nop                                                                               #  20    0xe28aa  1      OPC=nop             
  addq %r15, %r11                                                                   #  21    0xe28ab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                         #  22    0xe28ae  3      OPC=jmpq_r64        
  nop                                                                               #  23    0xe28b1  1      OPC=nop             
  nop                                                                               #  24    0xe28b2  1      OPC=nop             
  nop                                                                               #  25    0xe28b3  1      OPC=nop             
  nop                                                                               #  26    0xe28b4  1      OPC=nop             
  nop                                                                               #  27    0xe28b5  1      OPC=nop             
  nop                                                                               #  28    0xe28b6  1      OPC=nop             
  nop                                                                               #  29    0xe28b7  1      OPC=nop             
  nop                                                                               #  30    0xe28b8  1      OPC=nop             
  nop                                                                               #  31    0xe28b9  1      OPC=nop             
  nop                                                                               #  32    0xe28ba  1      OPC=nop             
  nop                                                                               #  33    0xe28bb  1      OPC=nop             
  nop                                                                               #  34    0xe28bc  1      OPC=nop             
  nop                                                                               #  35    0xe28bd  1      OPC=nop             
  nop                                                                               #  36    0xe28be  1      OPC=nop             
  nop                                                                               #  37    0xe28bf  1      OPC=nop             
  nop                                                                               #  38    0xe28c0  1      OPC=nop             
  nop                                                                               #  39    0xe28c1  1      OPC=nop             
  nop                                                                               #  40    0xe28c2  1      OPC=nop             
  nop                                                                               #  41    0xe28c3  1      OPC=nop             
  nop                                                                               #  42    0xe28c4  1      OPC=nop             
  nop                                                                               #  43    0xe28c5  1      OPC=nop             
  nop                                                                               #  44    0xe28c6  1      OPC=nop             
.L_e28c0:                                                                           #        0xe28c7  0      OPC=<label>         
  movl %ecx, %ecx                                                                   #  45    0xe28c7  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rcx,1)                                                          #  46    0xe28c9  4      OPC=movl_m32_r32    
  movl %ecx, %ecx                                                                   #  47    0xe28cd  2      OPC=movl_r32_r32    
  movl $0x8, 0xc(%r15,%rcx,1)                                                       #  48    0xe28cf  9      OPC=movl_m32_imm32  
  movl $0x1, %eax                                                                   #  49    0xe28d8  5      OPC=movl_r32_imm32  
  nop                                                                               #  50    0xe28dd  1      OPC=nop             
  nop                                                                               #  51    0xe28de  1      OPC=nop             
  nop                                                                               #  52    0xe28df  1      OPC=nop             
  nop                                                                               #  53    0xe28e0  1      OPC=nop             
  nop                                                                               #  54    0xe28e1  1      OPC=nop             
  nop                                                                               #  55    0xe28e2  1      OPC=nop             
  nop                                                                               #  56    0xe28e3  1      OPC=nop             
  nop                                                                               #  57    0xe28e4  1      OPC=nop             
  nop                                                                               #  58    0xe28e5  1      OPC=nop             
  nop                                                                               #  59    0xe28e6  1      OPC=nop             
  movl %ecx, %ecx                                                                   #  60    0xe28e7  2      OPC=movl_r32_r32    
  movl $0x6, 0x4(%r15,%rcx,1)                                                       #  61    0xe28e9  9      OPC=movl_m32_imm32  
  popq %r11                                                                         #  62    0xe28f2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                           #  63    0xe28f4  7      OPC=andl_r32_imm32  
  nop                                                                               #  64    0xe28fb  1      OPC=nop             
  nop                                                                               #  65    0xe28fc  1      OPC=nop             
  nop                                                                               #  66    0xe28fd  1      OPC=nop             
  nop                                                                               #  67    0xe28fe  1      OPC=nop             
  addq %r15, %r11                                                                   #  68    0xe28ff  3      OPC=addq_r64_r64    
  jmpq %r11                                                                         #  69    0xe2902  3      OPC=jmpq_r64        
  nop                                                                               #  70    0xe2905  1      OPC=nop             
  nop                                                                               #  71    0xe2906  1      OPC=nop             
  nop                                                                               #  72    0xe2907  1      OPC=nop             
  nop                                                                               #  73    0xe2908  1      OPC=nop             
  nop                                                                               #  74    0xe2909  1      OPC=nop             
  nop                                                                               #  75    0xe290a  1      OPC=nop             
  nop                                                                               #  76    0xe290b  1      OPC=nop             
  nop                                                                               #  77    0xe290c  1      OPC=nop             
  nop                                                                               #  78    0xe290d  1      OPC=nop             
                                                                                                                                 
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE

