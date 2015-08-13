  .text
  .globl __register_frame_info_bases
  .type __register_frame_info_bases, @function

#! file-offset 0x14e920
#! rip-offset  0x10e920
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
.__register_frame_info_bases:      #        0x10e920  0      OPC=<label>         
  movl %edi, %edi                  #  1     0x10e920  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  2     0x10e922  2      OPC=movl_r32_r32    
  movl %edx, %edx                  #  3     0x10e924  2      OPC=movl_r32_r32    
  testq %rdi, %rdi                 #  4     0x10e926  3      OPC=testq_r64_r64   
  movl %ecx, %ecx                  #  5     0x10e929  2      OPC=movl_r32_r32    
  je .L_10e9a0                     #  6     0x10e92b  2      OPC=je_label        
  movl %edi, %edi                  #  7     0x10e92d  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  8     0x10e92f  4      OPC=movl_r32_m32    
  testl %eax, %eax                 #  9     0x10e933  2      OPC=testl_r32_r32   
  je .L_10e9a0                     #  10    0x10e935  2      OPC=je_label        
  nop                              #  11    0x10e937  1      OPC=nop             
  nop                              #  12    0x10e938  1      OPC=nop             
  nop                              #  13    0x10e939  1      OPC=nop             
  nop                              #  14    0x10e93a  1      OPC=nop             
  nop                              #  15    0x10e93b  1      OPC=nop             
  nop                              #  16    0x10e93c  1      OPC=nop             
  nop                              #  17    0x10e93d  1      OPC=nop             
  nop                              #  18    0x10e93e  1      OPC=nop             
  nop                              #  19    0x10e93f  1      OPC=nop             
  movl %esi, %esi                  #  20    0x10e940  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rsi,1)     #  21    0x10e942  9      OPC=movl_m32_imm32  
  movl %esi, %esi                  #  22    0x10e94b  2      OPC=movl_r32_r32    
  movl %edi, 0xc(%r15,%rsi,1)      #  23    0x10e94d  5      OPC=movl_m32_r32    
  movl %esi, %esi                  #  24    0x10e952  2      OPC=movl_r32_r32    
  movw $0x7f8, 0x10(%r15,%rsi,1)   #  25    0x10e954  8      OPC=movw_m16_imm16  
  nop                              #  26    0x10e95c  1      OPC=nop             
  nop                              #  27    0x10e95d  1      OPC=nop             
  nop                              #  28    0x10e95e  1      OPC=nop             
  nop                              #  29    0x10e95f  1      OPC=nop             
  movl 0xff6a1b2(%rip), %eax       #  30    0x10e960  6      OPC=movl_r32_m32    
  movl %esi, %esi                  #  31    0x10e966  2      OPC=movl_r32_r32    
  movl $0xffffffff, (%r15,%rsi,1)  #  32    0x10e968  8      OPC=movl_m32_imm32  
  movl %esi, %esi                  #  33    0x10e970  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)      #  34    0x10e972  5      OPC=movl_m32_r32    
  movl %esi, %esi                  #  35    0x10e977  2      OPC=movl_r32_r32    
  movl %ecx, 0x8(%r15,%rsi,1)      #  36    0x10e979  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                   #  37    0x10e97e  2      OPC=xchgw_ax_r16    
  movl %esi, %esi                  #  38    0x10e980  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rsi,1)     #  39    0x10e982  5      OPC=movl_m32_r32    
  movl %esi, 0xff6a18b(%rip)       #  40    0x10e987  6      OPC=movl_m32_r32    
  nop                              #  41    0x10e98d  1      OPC=nop             
  nop                              #  42    0x10e98e  1      OPC=nop             
  nop                              #  43    0x10e98f  1      OPC=nop             
  nop                              #  44    0x10e990  1      OPC=nop             
  nop                              #  45    0x10e991  1      OPC=nop             
  nop                              #  46    0x10e992  1      OPC=nop             
  nop                              #  47    0x10e993  1      OPC=nop             
  nop                              #  48    0x10e994  1      OPC=nop             
  nop                              #  49    0x10e995  1      OPC=nop             
  nop                              #  50    0x10e996  1      OPC=nop             
  nop                              #  51    0x10e997  1      OPC=nop             
  nop                              #  52    0x10e998  1      OPC=nop             
  nop                              #  53    0x10e999  1      OPC=nop             
  nop                              #  54    0x10e99a  1      OPC=nop             
  nop                              #  55    0x10e99b  1      OPC=nop             
  nop                              #  56    0x10e99c  1      OPC=nop             
  nop                              #  57    0x10e99d  1      OPC=nop             
  nop                              #  58    0x10e99e  1      OPC=nop             
  nop                              #  59    0x10e99f  1      OPC=nop             
.L_10e9a0:                         #        0x10e9a0  0      OPC=<label>         
  popq %r11                        #  60    0x10e9a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  61    0x10e9a2  7      OPC=andl_r32_imm32  
  nop                              #  62    0x10e9a9  1      OPC=nop             
  nop                              #  63    0x10e9aa  1      OPC=nop             
  nop                              #  64    0x10e9ab  1      OPC=nop             
  nop                              #  65    0x10e9ac  1      OPC=nop             
  addq %r15, %r11                  #  66    0x10e9ad  3      OPC=addq_r64_r64    
  jmpq %r11                        #  67    0x10e9b0  3      OPC=jmpq_r64        
  nop                              #  68    0x10e9b3  1      OPC=nop             
  nop                              #  69    0x10e9b4  1      OPC=nop             
  nop                              #  70    0x10e9b5  1      OPC=nop             
  nop                              #  71    0x10e9b6  1      OPC=nop             
  nop                              #  72    0x10e9b7  1      OPC=nop             
  nop                              #  73    0x10e9b8  1      OPC=nop             
  nop                              #  74    0x10e9b9  1      OPC=nop             
  nop                              #  75    0x10e9ba  1      OPC=nop             
  nop                              #  76    0x10e9bb  1      OPC=nop             
  nop                              #  77    0x10e9bc  1      OPC=nop             
  nop                              #  78    0x10e9bd  1      OPC=nop             
  nop                              #  79    0x10e9be  1      OPC=nop             
  nop                              #  80    0x10e9bf  1      OPC=nop             
  nop                              #  81    0x10e9c0  1      OPC=nop             
  nop                              #  82    0x10e9c1  1      OPC=nop             
  nop                              #  83    0x10e9c2  1      OPC=nop             
  nop                              #  84    0x10e9c3  1      OPC=nop             
  nop                              #  85    0x10e9c4  1      OPC=nop             
  nop                              #  86    0x10e9c5  1      OPC=nop             
  nop                              #  87    0x10e9c6  1      OPC=nop             
                                                                                 
.size __register_frame_info_bases, .-__register_frame_info_bases

