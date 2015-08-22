  .text
  .globl __register_frame_info_bases
  .type __register_frame_info_bases, @function

#! file-offset 0x14f340
#! rip-offset  0x10f340
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
.__register_frame_info_bases:      #        0x10f340  0      OPC=<label>         
  movl %edi, %edi                  #  1     0x10f340  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  2     0x10f342  2      OPC=movl_r32_r32    
  movl %edx, %edx                  #  3     0x10f344  2      OPC=movl_r32_r32    
  testq %rdi, %rdi                 #  4     0x10f346  3      OPC=testq_r64_r64   
  movl %ecx, %ecx                  #  5     0x10f349  2      OPC=movl_r32_r32    
  je .L_10f3c0                     #  6     0x10f34b  2      OPC=je_label        
  movl %edi, %edi                  #  7     0x10f34d  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  8     0x10f34f  4      OPC=movl_r32_m32    
  testl %eax, %eax                 #  9     0x10f353  2      OPC=testl_r32_r32   
  je .L_10f3c0                     #  10    0x10f355  2      OPC=je_label        
  nop                              #  11    0x10f357  1      OPC=nop             
  nop                              #  12    0x10f358  1      OPC=nop             
  nop                              #  13    0x10f359  1      OPC=nop             
  nop                              #  14    0x10f35a  1      OPC=nop             
  nop                              #  15    0x10f35b  1      OPC=nop             
  nop                              #  16    0x10f35c  1      OPC=nop             
  nop                              #  17    0x10f35d  1      OPC=nop             
  nop                              #  18    0x10f35e  1      OPC=nop             
  nop                              #  19    0x10f35f  1      OPC=nop             
  movl %esi, %esi                  #  20    0x10f360  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rsi,1)     #  21    0x10f362  9      OPC=movl_m32_imm32  
  movl %esi, %esi                  #  22    0x10f36b  2      OPC=movl_r32_r32    
  movl %edi, 0xc(%r15,%rsi,1)      #  23    0x10f36d  5      OPC=movl_m32_r32    
  movl %esi, %esi                  #  24    0x10f372  2      OPC=movl_r32_r32    
  movw $0x7f8, 0x10(%r15,%rsi,1)   #  25    0x10f374  8      OPC=movw_m16_imm16  
  nop                              #  26    0x10f37c  1      OPC=nop             
  nop                              #  27    0x10f37d  1      OPC=nop             
  nop                              #  28    0x10f37e  1      OPC=nop             
  nop                              #  29    0x10f37f  1      OPC=nop             
  movl 0xff69792(%rip), %eax       #  30    0x10f380  6      OPC=movl_r32_m32    
  movl %esi, %esi                  #  31    0x10f386  2      OPC=movl_r32_r32    
  movl $0xffffffff, (%r15,%rsi,1)  #  32    0x10f388  8      OPC=movl_m32_imm32  
  movl %esi, %esi                  #  33    0x10f390  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)      #  34    0x10f392  5      OPC=movl_m32_r32    
  movl %esi, %esi                  #  35    0x10f397  2      OPC=movl_r32_r32    
  movl %ecx, 0x8(%r15,%rsi,1)      #  36    0x10f399  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                   #  37    0x10f39e  2      OPC=xchgw_ax_r16    
  movl %esi, %esi                  #  38    0x10f3a0  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rsi,1)     #  39    0x10f3a2  5      OPC=movl_m32_r32    
  movl %esi, 0xff6976b(%rip)       #  40    0x10f3a7  6      OPC=movl_m32_r32    
  nop                              #  41    0x10f3ad  1      OPC=nop             
  nop                              #  42    0x10f3ae  1      OPC=nop             
  nop                              #  43    0x10f3af  1      OPC=nop             
  nop                              #  44    0x10f3b0  1      OPC=nop             
  nop                              #  45    0x10f3b1  1      OPC=nop             
  nop                              #  46    0x10f3b2  1      OPC=nop             
  nop                              #  47    0x10f3b3  1      OPC=nop             
  nop                              #  48    0x10f3b4  1      OPC=nop             
  nop                              #  49    0x10f3b5  1      OPC=nop             
  nop                              #  50    0x10f3b6  1      OPC=nop             
  nop                              #  51    0x10f3b7  1      OPC=nop             
  nop                              #  52    0x10f3b8  1      OPC=nop             
  nop                              #  53    0x10f3b9  1      OPC=nop             
  nop                              #  54    0x10f3ba  1      OPC=nop             
  nop                              #  55    0x10f3bb  1      OPC=nop             
  nop                              #  56    0x10f3bc  1      OPC=nop             
  nop                              #  57    0x10f3bd  1      OPC=nop             
  nop                              #  58    0x10f3be  1      OPC=nop             
  nop                              #  59    0x10f3bf  1      OPC=nop             
.L_10f3c0:                         #        0x10f3c0  0      OPC=<label>         
  popq %r11                        #  60    0x10f3c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  61    0x10f3c2  7      OPC=andl_r32_imm32  
  nop                              #  62    0x10f3c9  1      OPC=nop             
  nop                              #  63    0x10f3ca  1      OPC=nop             
  nop                              #  64    0x10f3cb  1      OPC=nop             
  nop                              #  65    0x10f3cc  1      OPC=nop             
  addq %r15, %r11                  #  66    0x10f3cd  3      OPC=addq_r64_r64    
  jmpq %r11                        #  67    0x10f3d0  3      OPC=jmpq_r64        
  nop                              #  68    0x10f3d3  1      OPC=nop             
  nop                              #  69    0x10f3d4  1      OPC=nop             
  nop                              #  70    0x10f3d5  1      OPC=nop             
  nop                              #  71    0x10f3d6  1      OPC=nop             
  nop                              #  72    0x10f3d7  1      OPC=nop             
  nop                              #  73    0x10f3d8  1      OPC=nop             
  nop                              #  74    0x10f3d9  1      OPC=nop             
  nop                              #  75    0x10f3da  1      OPC=nop             
  nop                              #  76    0x10f3db  1      OPC=nop             
  nop                              #  77    0x10f3dc  1      OPC=nop             
  nop                              #  78    0x10f3dd  1      OPC=nop             
  nop                              #  79    0x10f3de  1      OPC=nop             
  nop                              #  80    0x10f3df  1      OPC=nop             
  nop                              #  81    0x10f3e0  1      OPC=nop             
  nop                              #  82    0x10f3e1  1      OPC=nop             
  nop                              #  83    0x10f3e2  1      OPC=nop             
  nop                              #  84    0x10f3e3  1      OPC=nop             
  nop                              #  85    0x10f3e4  1      OPC=nop             
  nop                              #  86    0x10f3e5  1      OPC=nop             
  nop                              #  87    0x10f3e6  1      OPC=nop             
                                                                                 
.size __register_frame_info_bases, .-__register_frame_info_bases

