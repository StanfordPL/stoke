  .text
  .globl __register_frame_info_bases
  .type __register_frame_info_bases, @function

#! file-offset 0x14ec20
#! rip-offset  0x10ec20
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
.__register_frame_info_bases:      #        0x10ec20  0      OPC=<label>         
  movl %edi, %edi                  #  1     0x10ec20  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  2     0x10ec22  2      OPC=movl_r32_r32    
  movl %edx, %edx                  #  3     0x10ec24  2      OPC=movl_r32_r32    
  testq %rdi, %rdi                 #  4     0x10ec26  3      OPC=testq_r64_r64   
  movl %ecx, %ecx                  #  5     0x10ec29  2      OPC=movl_r32_r32    
  je .L_10eca0                     #  6     0x10ec2b  2      OPC=je_label        
  movl %edi, %edi                  #  7     0x10ec2d  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  8     0x10ec2f  4      OPC=movl_r32_m32    
  testl %eax, %eax                 #  9     0x10ec33  2      OPC=testl_r32_r32   
  je .L_10eca0                     #  10    0x10ec35  2      OPC=je_label        
  nop                              #  11    0x10ec37  1      OPC=nop             
  nop                              #  12    0x10ec38  1      OPC=nop             
  nop                              #  13    0x10ec39  1      OPC=nop             
  nop                              #  14    0x10ec3a  1      OPC=nop             
  nop                              #  15    0x10ec3b  1      OPC=nop             
  nop                              #  16    0x10ec3c  1      OPC=nop             
  nop                              #  17    0x10ec3d  1      OPC=nop             
  nop                              #  18    0x10ec3e  1      OPC=nop             
  nop                              #  19    0x10ec3f  1      OPC=nop             
  movl %esi, %esi                  #  20    0x10ec40  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rsi,1)     #  21    0x10ec42  9      OPC=movl_m32_imm32  
  movl %esi, %esi                  #  22    0x10ec4b  2      OPC=movl_r32_r32    
  movl %edi, 0xc(%r15,%rsi,1)      #  23    0x10ec4d  5      OPC=movl_m32_r32    
  movl %esi, %esi                  #  24    0x10ec52  2      OPC=movl_r32_r32    
  movw $0x7f8, 0x10(%r15,%rsi,1)   #  25    0x10ec54  8      OPC=movw_m16_imm16  
  nop                              #  26    0x10ec5c  1      OPC=nop             
  nop                              #  27    0x10ec5d  1      OPC=nop             
  nop                              #  28    0x10ec5e  1      OPC=nop             
  nop                              #  29    0x10ec5f  1      OPC=nop             
  movl 0xff69eb2(%rip), %eax       #  30    0x10ec60  6      OPC=movl_r32_m32    
  movl %esi, %esi                  #  31    0x10ec66  2      OPC=movl_r32_r32    
  movl $0xffffffff, (%r15,%rsi,1)  #  32    0x10ec68  8      OPC=movl_m32_imm32  
  movl %esi, %esi                  #  33    0x10ec70  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)      #  34    0x10ec72  5      OPC=movl_m32_r32    
  movl %esi, %esi                  #  35    0x10ec77  2      OPC=movl_r32_r32    
  movl %ecx, 0x8(%r15,%rsi,1)      #  36    0x10ec79  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                   #  37    0x10ec7e  2      OPC=xchgw_ax_r16    
  movl %esi, %esi                  #  38    0x10ec80  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rsi,1)     #  39    0x10ec82  5      OPC=movl_m32_r32    
  movl %esi, 0xff69e8b(%rip)       #  40    0x10ec87  6      OPC=movl_m32_r32    
  nop                              #  41    0x10ec8d  1      OPC=nop             
  nop                              #  42    0x10ec8e  1      OPC=nop             
  nop                              #  43    0x10ec8f  1      OPC=nop             
  nop                              #  44    0x10ec90  1      OPC=nop             
  nop                              #  45    0x10ec91  1      OPC=nop             
  nop                              #  46    0x10ec92  1      OPC=nop             
  nop                              #  47    0x10ec93  1      OPC=nop             
  nop                              #  48    0x10ec94  1      OPC=nop             
  nop                              #  49    0x10ec95  1      OPC=nop             
  nop                              #  50    0x10ec96  1      OPC=nop             
  nop                              #  51    0x10ec97  1      OPC=nop             
  nop                              #  52    0x10ec98  1      OPC=nop             
  nop                              #  53    0x10ec99  1      OPC=nop             
  nop                              #  54    0x10ec9a  1      OPC=nop             
  nop                              #  55    0x10ec9b  1      OPC=nop             
  nop                              #  56    0x10ec9c  1      OPC=nop             
  nop                              #  57    0x10ec9d  1      OPC=nop             
  nop                              #  58    0x10ec9e  1      OPC=nop             
  nop                              #  59    0x10ec9f  1      OPC=nop             
.L_10eca0:                         #        0x10eca0  0      OPC=<label>         
  popq %r11                        #  60    0x10eca0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  61    0x10eca2  7      OPC=andl_r32_imm32  
  nop                              #  62    0x10eca9  1      OPC=nop             
  nop                              #  63    0x10ecaa  1      OPC=nop             
  nop                              #  64    0x10ecab  1      OPC=nop             
  nop                              #  65    0x10ecac  1      OPC=nop             
  addq %r15, %r11                  #  66    0x10ecad  3      OPC=addq_r64_r64    
  jmpq %r11                        #  67    0x10ecb0  3      OPC=jmpq_r64        
  nop                              #  68    0x10ecb3  1      OPC=nop             
  nop                              #  69    0x10ecb4  1      OPC=nop             
  nop                              #  70    0x10ecb5  1      OPC=nop             
  nop                              #  71    0x10ecb6  1      OPC=nop             
  nop                              #  72    0x10ecb7  1      OPC=nop             
  nop                              #  73    0x10ecb8  1      OPC=nop             
  nop                              #  74    0x10ecb9  1      OPC=nop             
  nop                              #  75    0x10ecba  1      OPC=nop             
  nop                              #  76    0x10ecbb  1      OPC=nop             
  nop                              #  77    0x10ecbc  1      OPC=nop             
  nop                              #  78    0x10ecbd  1      OPC=nop             
  nop                              #  79    0x10ecbe  1      OPC=nop             
  nop                              #  80    0x10ecbf  1      OPC=nop             
  nop                              #  81    0x10ecc0  1      OPC=nop             
  nop                              #  82    0x10ecc1  1      OPC=nop             
  nop                              #  83    0x10ecc2  1      OPC=nop             
  nop                              #  84    0x10ecc3  1      OPC=nop             
  nop                              #  85    0x10ecc4  1      OPC=nop             
  nop                              #  86    0x10ecc5  1      OPC=nop             
  nop                              #  87    0x10ecc6  1      OPC=nop             
                                                                                 
.size __register_frame_info_bases, .-__register_frame_info_bases

