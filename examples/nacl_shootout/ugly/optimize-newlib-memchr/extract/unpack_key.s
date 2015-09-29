  .text
  .globl unpack_key
  .type unpack_key, @function

#! file-offset 0x63aa0
#! rip-offset  0x23aa0
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
.unpack_key:                           #        0x23aa0  0      OPC=<label>         
  movl %edx, %edx                      #  1     0x23aa0  2      OPC=movl_r32_r32    
  testl %esi, %esi                     #  2     0x23aa2  2      OPC=testl_r32_r32   
  jle .L_23b00                         #  3     0x23aa4  2      OPC=jle_label       
  leal (%rsi,%rdx,1), %eax             #  4     0x23aa6  3      OPC=leal_r32_m16    
  movl %edx, %r9d                      #  5     0x23aa9  3      OPC=movl_r32_r32    
  nop                                  #  6     0x23aac  1      OPC=nop             
  nop                                  #  7     0x23aad  1      OPC=nop             
  nop                                  #  8     0x23aae  1      OPC=nop             
  nop                                  #  9     0x23aaf  1      OPC=nop             
  nop                                  #  10    0x23ab0  1      OPC=nop             
  nop                                  #  11    0x23ab1  1      OPC=nop             
  nop                                  #  12    0x23ab2  1      OPC=nop             
  nop                                  #  13    0x23ab3  1      OPC=nop             
  nop                                  #  14    0x23ab4  1      OPC=nop             
  nop                                  #  15    0x23ab5  1      OPC=nop             
  nop                                  #  16    0x23ab6  1      OPC=nop             
  nop                                  #  17    0x23ab7  1      OPC=nop             
  nop                                  #  18    0x23ab8  1      OPC=nop             
  nop                                  #  19    0x23ab9  1      OPC=nop             
  nop                                  #  20    0x23aba  1      OPC=nop             
  nop                                  #  21    0x23abb  1      OPC=nop             
  nop                                  #  22    0x23abc  1      OPC=nop             
  nop                                  #  23    0x23abd  1      OPC=nop             
  nop                                  #  24    0x23abe  1      OPC=nop             
  nop                                  #  25    0x23abf  1      OPC=nop             
.L_23ac0:                              #        0x23ac0  0      OPC=<label>         
  subl $0x1, %eax                      #  26    0x23ac0  3      OPC=subl_r32_imm8   
  movl %eax, %ecx                      #  27    0x23ac3  2      OPC=movl_r32_r32    
  movq %rdi, %r8                       #  28    0x23ac5  3      OPC=movq_r64_r64    
  andl $0x3, %r8d                      #  29    0x23ac8  4      OPC=andl_r32_imm8   
  movl %r8d, %r8d                      #  30    0x23acc  3      OPC=movl_r32_r32    
  movzbl 0x10020548(%r15,%r8,1), %r8d  #  31    0x23acf  9      OPC=movzbl_r32_m8   
  movl %ecx, %ecx                      #  32    0x23ad8  2      OPC=movl_r32_r32    
  movb %r8b, (%r15,%rcx,1)             #  33    0x23ada  4      OPC=movb_m8_r8      
  xchgw %ax, %ax                       #  34    0x23ade  2      OPC=xchgw_ax_r16    
  shrq $0x2, %rdi                      #  35    0x23ae0  4      OPC=shrq_r64_imm8   
  cmpl %r9d, %eax                      #  36    0x23ae4  3      OPC=cmpl_r32_r32    
  jne .L_23ac0                         #  37    0x23ae7  2      OPC=jne_label       
  nop                                  #  38    0x23ae9  1      OPC=nop             
  nop                                  #  39    0x23aea  1      OPC=nop             
  nop                                  #  40    0x23aeb  1      OPC=nop             
  nop                                  #  41    0x23aec  1      OPC=nop             
  nop                                  #  42    0x23aed  1      OPC=nop             
  nop                                  #  43    0x23aee  1      OPC=nop             
  nop                                  #  44    0x23aef  1      OPC=nop             
  nop                                  #  45    0x23af0  1      OPC=nop             
  nop                                  #  46    0x23af1  1      OPC=nop             
  nop                                  #  47    0x23af2  1      OPC=nop             
  nop                                  #  48    0x23af3  1      OPC=nop             
  nop                                  #  49    0x23af4  1      OPC=nop             
  nop                                  #  50    0x23af5  1      OPC=nop             
  nop                                  #  51    0x23af6  1      OPC=nop             
  nop                                  #  52    0x23af7  1      OPC=nop             
  nop                                  #  53    0x23af8  1      OPC=nop             
  nop                                  #  54    0x23af9  1      OPC=nop             
  nop                                  #  55    0x23afa  1      OPC=nop             
  nop                                  #  56    0x23afb  1      OPC=nop             
  nop                                  #  57    0x23afc  1      OPC=nop             
  nop                                  #  58    0x23afd  1      OPC=nop             
  nop                                  #  59    0x23afe  1      OPC=nop             
  nop                                  #  60    0x23aff  1      OPC=nop             
.L_23b00:                              #        0x23b00  0      OPC=<label>         
  addl %edx, %esi                      #  61    0x23b00  2      OPC=addl_r32_r32    
  movl %esi, %esi                      #  62    0x23b02  2      OPC=movl_r32_r32    
  movb $0x0, (%r15,%rsi,1)             #  63    0x23b04  5      OPC=movb_m8_imm8    
  popq %r11                            #  64    0x23b09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d              #  65    0x23b0b  7      OPC=andl_r32_imm32  
  nop                                  #  66    0x23b12  1      OPC=nop             
  nop                                  #  67    0x23b13  1      OPC=nop             
  nop                                  #  68    0x23b14  1      OPC=nop             
  nop                                  #  69    0x23b15  1      OPC=nop             
  addq %r15, %r11                      #  70    0x23b16  3      OPC=addq_r64_r64    
  jmpq %r11                            #  71    0x23b19  3      OPC=jmpq_r64        
  nop                                  #  72    0x23b1c  1      OPC=nop             
  nop                                  #  73    0x23b1d  1      OPC=nop             
  nop                                  #  74    0x23b1e  1      OPC=nop             
  nop                                  #  75    0x23b1f  1      OPC=nop             
  nop                                  #  76    0x23b20  1      OPC=nop             
  nop                                  #  77    0x23b21  1      OPC=nop             
  nop                                  #  78    0x23b22  1      OPC=nop             
  nop                                  #  79    0x23b23  1      OPC=nop             
  nop                                  #  80    0x23b24  1      OPC=nop             
  nop                                  #  81    0x23b25  1      OPC=nop             
  nop                                  #  82    0x23b26  1      OPC=nop             
                                                                                    
.size unpack_key, .-unpack_key

