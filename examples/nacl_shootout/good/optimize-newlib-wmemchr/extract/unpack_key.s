  .text
  .globl unpack_key
  .type unpack_key, @function

#! file-offset 0x63540
#! rip-offset  0x23540
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
.unpack_key:                           #        0x23540  0      OPC=<label>         
  movl %edx, %edx                      #  1     0x23540  2      OPC=movl_r32_r32    
  testl %esi, %esi                     #  2     0x23542  2      OPC=testl_r32_r32   
  jle .L_235a0                         #  3     0x23544  2      OPC=jle_label       
  leal (%rsi,%rdx,1), %eax             #  4     0x23546  3      OPC=leal_r32_m16    
  movl %edx, %r9d                      #  5     0x23549  3      OPC=movl_r32_r32    
  nop                                  #  6     0x2354c  1      OPC=nop             
  nop                                  #  7     0x2354d  1      OPC=nop             
  nop                                  #  8     0x2354e  1      OPC=nop             
  nop                                  #  9     0x2354f  1      OPC=nop             
  nop                                  #  10    0x23550  1      OPC=nop             
  nop                                  #  11    0x23551  1      OPC=nop             
  nop                                  #  12    0x23552  1      OPC=nop             
  nop                                  #  13    0x23553  1      OPC=nop             
  nop                                  #  14    0x23554  1      OPC=nop             
  nop                                  #  15    0x23555  1      OPC=nop             
  nop                                  #  16    0x23556  1      OPC=nop             
  nop                                  #  17    0x23557  1      OPC=nop             
  nop                                  #  18    0x23558  1      OPC=nop             
  nop                                  #  19    0x23559  1      OPC=nop             
  nop                                  #  20    0x2355a  1      OPC=nop             
  nop                                  #  21    0x2355b  1      OPC=nop             
  nop                                  #  22    0x2355c  1      OPC=nop             
  nop                                  #  23    0x2355d  1      OPC=nop             
  nop                                  #  24    0x2355e  1      OPC=nop             
  nop                                  #  25    0x2355f  1      OPC=nop             
.L_23560:                              #        0x23560  0      OPC=<label>         
  subl $0x1, %eax                      #  26    0x23560  3      OPC=subl_r32_imm8   
  movl %eax, %ecx                      #  27    0x23563  2      OPC=movl_r32_r32    
  movq %rdi, %r8                       #  28    0x23565  3      OPC=movq_r64_r64    
  andl $0x3, %r8d                      #  29    0x23568  4      OPC=andl_r32_imm8   
  movl %r8d, %r8d                      #  30    0x2356c  3      OPC=movl_r32_r32    
  movzbl 0x10020548(%r15,%r8,1), %r8d  #  31    0x2356f  9      OPC=movzbl_r32_m8   
  movl %ecx, %ecx                      #  32    0x23578  2      OPC=movl_r32_r32    
  movb %r8b, (%r15,%rcx,1)             #  33    0x2357a  4      OPC=movb_m8_r8      
  xchgw %ax, %ax                       #  34    0x2357e  2      OPC=xchgw_ax_r16    
  shrq $0x2, %rdi                      #  35    0x23580  4      OPC=shrq_r64_imm8   
  cmpl %r9d, %eax                      #  36    0x23584  3      OPC=cmpl_r32_r32    
  jne .L_23560                         #  37    0x23587  2      OPC=jne_label       
  nop                                  #  38    0x23589  1      OPC=nop             
  nop                                  #  39    0x2358a  1      OPC=nop             
  nop                                  #  40    0x2358b  1      OPC=nop             
  nop                                  #  41    0x2358c  1      OPC=nop             
  nop                                  #  42    0x2358d  1      OPC=nop             
  nop                                  #  43    0x2358e  1      OPC=nop             
  nop                                  #  44    0x2358f  1      OPC=nop             
  nop                                  #  45    0x23590  1      OPC=nop             
  nop                                  #  46    0x23591  1      OPC=nop             
  nop                                  #  47    0x23592  1      OPC=nop             
  nop                                  #  48    0x23593  1      OPC=nop             
  nop                                  #  49    0x23594  1      OPC=nop             
  nop                                  #  50    0x23595  1      OPC=nop             
  nop                                  #  51    0x23596  1      OPC=nop             
  nop                                  #  52    0x23597  1      OPC=nop             
  nop                                  #  53    0x23598  1      OPC=nop             
  nop                                  #  54    0x23599  1      OPC=nop             
  nop                                  #  55    0x2359a  1      OPC=nop             
  nop                                  #  56    0x2359b  1      OPC=nop             
  nop                                  #  57    0x2359c  1      OPC=nop             
  nop                                  #  58    0x2359d  1      OPC=nop             
  nop                                  #  59    0x2359e  1      OPC=nop             
  nop                                  #  60    0x2359f  1      OPC=nop             
.L_235a0:                              #        0x235a0  0      OPC=<label>         
  addl %edx, %esi                      #  61    0x235a0  2      OPC=addl_r32_r32    
  movl %esi, %esi                      #  62    0x235a2  2      OPC=movl_r32_r32    
  movb $0x0, (%r15,%rsi,1)             #  63    0x235a4  5      OPC=movb_m8_imm8    
  popq %r11                            #  64    0x235a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d              #  65    0x235ab  7      OPC=andl_r32_imm32  
  nop                                  #  66    0x235b2  1      OPC=nop             
  nop                                  #  67    0x235b3  1      OPC=nop             
  nop                                  #  68    0x235b4  1      OPC=nop             
  nop                                  #  69    0x235b5  1      OPC=nop             
  addq %r15, %r11                      #  70    0x235b6  3      OPC=addq_r64_r64    
  jmpq %r11                            #  71    0x235b9  3      OPC=jmpq_r64        
  nop                                  #  72    0x235bc  1      OPC=nop             
  nop                                  #  73    0x235bd  1      OPC=nop             
  nop                                  #  74    0x235be  1      OPC=nop             
  nop                                  #  75    0x235bf  1      OPC=nop             
  nop                                  #  76    0x235c0  1      OPC=nop             
  nop                                  #  77    0x235c1  1      OPC=nop             
  nop                                  #  78    0x235c2  1      OPC=nop             
  nop                                  #  79    0x235c3  1      OPC=nop             
  nop                                  #  80    0x235c4  1      OPC=nop             
  nop                                  #  81    0x235c5  1      OPC=nop             
  nop                                  #  82    0x235c6  1      OPC=nop             
                                                                                    
.size unpack_key, .-unpack_key

