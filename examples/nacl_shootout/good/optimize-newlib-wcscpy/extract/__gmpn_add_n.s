  .text
  .globl __gmpn_add_n
  .type __gmpn_add_n, @function

#! file-offset 0x72600
#! rip-offset  0x32600
#! capacity    128 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_add_n:               #        0x32600  0      OPC=<label>         
  movl %edi, %edi            #  1     0x32600  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  2     0x32602  2      OPC=movl_r32_r32    
  movl %edx, %edx            #  3     0x32604  2      OPC=movl_r32_r32    
  xorl %eax, %eax            #  4     0x32606  2      OPC=xorl_r32_r32    
  nop                        #  5     0x32608  1      OPC=nop             
  nop                        #  6     0x32609  1      OPC=nop             
  nop                        #  7     0x3260a  1      OPC=nop             
  nop                        #  8     0x3260b  1      OPC=nop             
  nop                        #  9     0x3260c  1      OPC=nop             
  nop                        #  10    0x3260d  1      OPC=nop             
  nop                        #  11    0x3260e  1      OPC=nop             
  nop                        #  12    0x3260f  1      OPC=nop             
  nop                        #  13    0x32610  1      OPC=nop             
  nop                        #  14    0x32611  1      OPC=nop             
  nop                        #  15    0x32612  1      OPC=nop             
  nop                        #  16    0x32613  1      OPC=nop             
  nop                        #  17    0x32614  1      OPC=nop             
  nop                        #  18    0x32615  1      OPC=nop             
  nop                        #  19    0x32616  1      OPC=nop             
  nop                        #  20    0x32617  1      OPC=nop             
  nop                        #  21    0x32618  1      OPC=nop             
  nop                        #  22    0x32619  1      OPC=nop             
  nop                        #  23    0x3261a  1      OPC=nop             
  nop                        #  24    0x3261b  1      OPC=nop             
  nop                        #  25    0x3261c  1      OPC=nop             
  nop                        #  26    0x3261d  1      OPC=nop             
  nop                        #  27    0x3261e  1      OPC=nop             
  nop                        #  28    0x3261f  1      OPC=nop             
.L_32620:                    #        0x32620  0      OPC=<label>         
  movl %esi, %esi            #  29    0x32620  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r9d   #  30    0x32622  4      OPC=movl_r32_m32    
  movl %edx, %edx            #  31    0x32626  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d   #  32    0x32628  4      OPC=movl_r32_m32    
  movl %eax, %r10d           #  33    0x3262c  3      OPC=movl_r32_r32    
  addl $0x4, %esi            #  34    0x3262f  3      OPC=addl_r32_imm8   
  addl $0x4, %edx            #  35    0x32632  3      OPC=addl_r32_imm8   
  addl %r9d, %r8d            #  36    0x32635  3      OPC=addl_r32_r32    
  addl %r8d, %r10d           #  37    0x32638  3      OPC=addl_r32_r32    
  setb %al                   #  38    0x3263b  3      OPC=setb_r8         
  xchgw %ax, %ax             #  39    0x3263e  2      OPC=xchgw_ax_r16    
  cmpl %r9d, %r8d            #  40    0x32640  3      OPC=cmpl_r32_r32    
  movl %edi, %edi            #  41    0x32643  2      OPC=movl_r32_r32    
  movl %r10d, (%r15,%rdi,1)  #  42    0x32645  4      OPC=movl_m32_r32    
  setb %r8b                  #  43    0x32649  4      OPC=setb_r8         
  addl $0x4, %edi            #  44    0x3264d  3      OPC=addl_r32_imm8   
  orl %r8d, %eax             #  45    0x32650  3      OPC=orl_r32_r32     
  andl $0x1, %eax            #  46    0x32653  3      OPC=andl_r32_imm8   
  subl $0x1, %ecx            #  47    0x32656  3      OPC=subl_r32_imm8   
  jne .L_32620               #  48    0x32659  2      OPC=jne_label       
  popq %r11                  #  49    0x3265b  2      OPC=popq_r64_1      
  nop                        #  50    0x3265d  1      OPC=nop             
  nop                        #  51    0x3265e  1      OPC=nop             
  nop                        #  52    0x3265f  1      OPC=nop             
  andl $0xffffffe0, %r11d    #  53    0x32660  7      OPC=andl_r32_imm32  
  nop                        #  54    0x32667  1      OPC=nop             
  nop                        #  55    0x32668  1      OPC=nop             
  nop                        #  56    0x32669  1      OPC=nop             
  nop                        #  57    0x3266a  1      OPC=nop             
  addq %r15, %r11            #  58    0x3266b  3      OPC=addq_r64_r64    
  jmpq %r11                  #  59    0x3266e  3      OPC=jmpq_r64        
  nop                        #  60    0x32671  1      OPC=nop             
  nop                        #  61    0x32672  1      OPC=nop             
  nop                        #  62    0x32673  1      OPC=nop             
  nop                        #  63    0x32674  1      OPC=nop             
  nop                        #  64    0x32675  1      OPC=nop             
  nop                        #  65    0x32676  1      OPC=nop             
  nop                        #  66    0x32677  1      OPC=nop             
  nop                        #  67    0x32678  1      OPC=nop             
  nop                        #  68    0x32679  1      OPC=nop             
  nop                        #  69    0x3267a  1      OPC=nop             
  nop                        #  70    0x3267b  1      OPC=nop             
  nop                        #  71    0x3267c  1      OPC=nop             
  nop                        #  72    0x3267d  1      OPC=nop             
  nop                        #  73    0x3267e  1      OPC=nop             
  nop                        #  74    0x3267f  1      OPC=nop             
  nop                        #  75    0x32680  1      OPC=nop             
  nop                        #  76    0x32681  1      OPC=nop             
  nop                        #  77    0x32682  1      OPC=nop             
  nop                        #  78    0x32683  1      OPC=nop             
  nop                        #  79    0x32684  1      OPC=nop             
  nop                        #  80    0x32685  1      OPC=nop             
  nop                        #  81    0x32686  1      OPC=nop             
                                                                          
.size __gmpn_add_n, .-__gmpn_add_n

