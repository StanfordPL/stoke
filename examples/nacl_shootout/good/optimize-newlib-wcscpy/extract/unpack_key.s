  .text
  .globl unpack_key
  .type unpack_key, @function

#! file-offset 0x63520
#! rip-offset  0x23520
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
.unpack_key:                           #        0x23520  0      OPC=<label>         
  movl %edx, %edx                      #  1     0x23520  2      OPC=movl_r32_r32    
  testl %esi, %esi                     #  2     0x23522  2      OPC=testl_r32_r32   
  jle .L_23580                         #  3     0x23524  2      OPC=jle_label       
  leal (%rsi,%rdx,1), %eax             #  4     0x23526  3      OPC=leal_r32_m16    
  movl %edx, %r9d                      #  5     0x23529  3      OPC=movl_r32_r32    
  nop                                  #  6     0x2352c  1      OPC=nop             
  nop                                  #  7     0x2352d  1      OPC=nop             
  nop                                  #  8     0x2352e  1      OPC=nop             
  nop                                  #  9     0x2352f  1      OPC=nop             
  nop                                  #  10    0x23530  1      OPC=nop             
  nop                                  #  11    0x23531  1      OPC=nop             
  nop                                  #  12    0x23532  1      OPC=nop             
  nop                                  #  13    0x23533  1      OPC=nop             
  nop                                  #  14    0x23534  1      OPC=nop             
  nop                                  #  15    0x23535  1      OPC=nop             
  nop                                  #  16    0x23536  1      OPC=nop             
  nop                                  #  17    0x23537  1      OPC=nop             
  nop                                  #  18    0x23538  1      OPC=nop             
  nop                                  #  19    0x23539  1      OPC=nop             
  nop                                  #  20    0x2353a  1      OPC=nop             
  nop                                  #  21    0x2353b  1      OPC=nop             
  nop                                  #  22    0x2353c  1      OPC=nop             
  nop                                  #  23    0x2353d  1      OPC=nop             
  nop                                  #  24    0x2353e  1      OPC=nop             
  nop                                  #  25    0x2353f  1      OPC=nop             
.L_23540:                              #        0x23540  0      OPC=<label>         
  subl $0x1, %eax                      #  26    0x23540  3      OPC=subl_r32_imm8   
  movl %eax, %ecx                      #  27    0x23543  2      OPC=movl_r32_r32    
  movq %rdi, %r8                       #  28    0x23545  3      OPC=movq_r64_r64    
  andl $0x3, %r8d                      #  29    0x23548  4      OPC=andl_r32_imm8   
  movl %r8d, %r8d                      #  30    0x2354c  3      OPC=movl_r32_r32    
  movzbl 0x10020548(%r15,%r8,1), %r8d  #  31    0x2354f  9      OPC=movzbl_r32_m8   
  movl %ecx, %ecx                      #  32    0x23558  2      OPC=movl_r32_r32    
  movb %r8b, (%r15,%rcx,1)             #  33    0x2355a  4      OPC=movb_m8_r8      
  xchgw %ax, %ax                       #  34    0x2355e  2      OPC=xchgw_ax_r16    
  shrq $0x2, %rdi                      #  35    0x23560  4      OPC=shrq_r64_imm8   
  cmpl %r9d, %eax                      #  36    0x23564  3      OPC=cmpl_r32_r32    
  jne .L_23540                         #  37    0x23567  2      OPC=jne_label       
  nop                                  #  38    0x23569  1      OPC=nop             
  nop                                  #  39    0x2356a  1      OPC=nop             
  nop                                  #  40    0x2356b  1      OPC=nop             
  nop                                  #  41    0x2356c  1      OPC=nop             
  nop                                  #  42    0x2356d  1      OPC=nop             
  nop                                  #  43    0x2356e  1      OPC=nop             
  nop                                  #  44    0x2356f  1      OPC=nop             
  nop                                  #  45    0x23570  1      OPC=nop             
  nop                                  #  46    0x23571  1      OPC=nop             
  nop                                  #  47    0x23572  1      OPC=nop             
  nop                                  #  48    0x23573  1      OPC=nop             
  nop                                  #  49    0x23574  1      OPC=nop             
  nop                                  #  50    0x23575  1      OPC=nop             
  nop                                  #  51    0x23576  1      OPC=nop             
  nop                                  #  52    0x23577  1      OPC=nop             
  nop                                  #  53    0x23578  1      OPC=nop             
  nop                                  #  54    0x23579  1      OPC=nop             
  nop                                  #  55    0x2357a  1      OPC=nop             
  nop                                  #  56    0x2357b  1      OPC=nop             
  nop                                  #  57    0x2357c  1      OPC=nop             
  nop                                  #  58    0x2357d  1      OPC=nop             
  nop                                  #  59    0x2357e  1      OPC=nop             
  nop                                  #  60    0x2357f  1      OPC=nop             
.L_23580:                              #        0x23580  0      OPC=<label>         
  addl %edx, %esi                      #  61    0x23580  2      OPC=addl_r32_r32    
  movl %esi, %esi                      #  62    0x23582  2      OPC=movl_r32_r32    
  movb $0x0, (%r15,%rsi,1)             #  63    0x23584  5      OPC=movb_m8_imm8    
  popq %r11                            #  64    0x23589  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d              #  65    0x2358b  7      OPC=andl_r32_imm32  
  nop                                  #  66    0x23592  1      OPC=nop             
  nop                                  #  67    0x23593  1      OPC=nop             
  nop                                  #  68    0x23594  1      OPC=nop             
  nop                                  #  69    0x23595  1      OPC=nop             
  addq %r15, %r11                      #  70    0x23596  3      OPC=addq_r64_r64    
  jmpq %r11                            #  71    0x23599  3      OPC=jmpq_r64        
  nop                                  #  72    0x2359c  1      OPC=nop             
  nop                                  #  73    0x2359d  1      OPC=nop             
  nop                                  #  74    0x2359e  1      OPC=nop             
  nop                                  #  75    0x2359f  1      OPC=nop             
  nop                                  #  76    0x235a0  1      OPC=nop             
  nop                                  #  77    0x235a1  1      OPC=nop             
  nop                                  #  78    0x235a2  1      OPC=nop             
  nop                                  #  79    0x235a3  1      OPC=nop             
  nop                                  #  80    0x235a4  1      OPC=nop             
  nop                                  #  81    0x235a5  1      OPC=nop             
  nop                                  #  82    0x235a6  1      OPC=nop             
                                                                                    
.size unpack_key, .-unpack_key

