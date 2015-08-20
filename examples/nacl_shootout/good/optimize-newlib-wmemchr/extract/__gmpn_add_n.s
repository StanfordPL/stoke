  .text
  .globl __gmpn_add_n
  .type __gmpn_add_n, @function

#! file-offset 0x72900
#! rip-offset  0x32900
#! capacity    128 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_add_n:               #        0x32900  0      OPC=<label>         
  movl %edi, %edi            #  1     0x32900  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  2     0x32902  2      OPC=movl_r32_r32    
  movl %edx, %edx            #  3     0x32904  2      OPC=movl_r32_r32    
  xorl %eax, %eax            #  4     0x32906  2      OPC=xorl_r32_r32    
  nop                        #  5     0x32908  1      OPC=nop             
  nop                        #  6     0x32909  1      OPC=nop             
  nop                        #  7     0x3290a  1      OPC=nop             
  nop                        #  8     0x3290b  1      OPC=nop             
  nop                        #  9     0x3290c  1      OPC=nop             
  nop                        #  10    0x3290d  1      OPC=nop             
  nop                        #  11    0x3290e  1      OPC=nop             
  nop                        #  12    0x3290f  1      OPC=nop             
  nop                        #  13    0x32910  1      OPC=nop             
  nop                        #  14    0x32911  1      OPC=nop             
  nop                        #  15    0x32912  1      OPC=nop             
  nop                        #  16    0x32913  1      OPC=nop             
  nop                        #  17    0x32914  1      OPC=nop             
  nop                        #  18    0x32915  1      OPC=nop             
  nop                        #  19    0x32916  1      OPC=nop             
  nop                        #  20    0x32917  1      OPC=nop             
  nop                        #  21    0x32918  1      OPC=nop             
  nop                        #  22    0x32919  1      OPC=nop             
  nop                        #  23    0x3291a  1      OPC=nop             
  nop                        #  24    0x3291b  1      OPC=nop             
  nop                        #  25    0x3291c  1      OPC=nop             
  nop                        #  26    0x3291d  1      OPC=nop             
  nop                        #  27    0x3291e  1      OPC=nop             
  nop                        #  28    0x3291f  1      OPC=nop             
.L_32920:                    #        0x32920  0      OPC=<label>         
  movl %esi, %esi            #  29    0x32920  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r9d   #  30    0x32922  4      OPC=movl_r32_m32    
  movl %edx, %edx            #  31    0x32926  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d   #  32    0x32928  4      OPC=movl_r32_m32    
  movl %eax, %r10d           #  33    0x3292c  3      OPC=movl_r32_r32    
  addl $0x4, %esi            #  34    0x3292f  3      OPC=addl_r32_imm8   
  addl $0x4, %edx            #  35    0x32932  3      OPC=addl_r32_imm8   
  addl %r9d, %r8d            #  36    0x32935  3      OPC=addl_r32_r32    
  addl %r8d, %r10d           #  37    0x32938  3      OPC=addl_r32_r32    
  setb %al                   #  38    0x3293b  3      OPC=setb_r8         
  xchgw %ax, %ax             #  39    0x3293e  2      OPC=xchgw_ax_r16    
  cmpl %r9d, %r8d            #  40    0x32940  3      OPC=cmpl_r32_r32    
  movl %edi, %edi            #  41    0x32943  2      OPC=movl_r32_r32    
  movl %r10d, (%r15,%rdi,1)  #  42    0x32945  4      OPC=movl_m32_r32    
  setb %r8b                  #  43    0x32949  4      OPC=setb_r8         
  addl $0x4, %edi            #  44    0x3294d  3      OPC=addl_r32_imm8   
  orl %r8d, %eax             #  45    0x32950  3      OPC=orl_r32_r32     
  andl $0x1, %eax            #  46    0x32953  3      OPC=andl_r32_imm8   
  subl $0x1, %ecx            #  47    0x32956  3      OPC=subl_r32_imm8   
  jne .L_32920               #  48    0x32959  2      OPC=jne_label       
  popq %r11                  #  49    0x3295b  2      OPC=popq_r64_1      
  nop                        #  50    0x3295d  1      OPC=nop             
  nop                        #  51    0x3295e  1      OPC=nop             
  nop                        #  52    0x3295f  1      OPC=nop             
  andl $0xffffffe0, %r11d    #  53    0x32960  7      OPC=andl_r32_imm32  
  nop                        #  54    0x32967  1      OPC=nop             
  nop                        #  55    0x32968  1      OPC=nop             
  nop                        #  56    0x32969  1      OPC=nop             
  nop                        #  57    0x3296a  1      OPC=nop             
  addq %r15, %r11            #  58    0x3296b  3      OPC=addq_r64_r64    
  jmpq %r11                  #  59    0x3296e  3      OPC=jmpq_r64        
  nop                        #  60    0x32971  1      OPC=nop             
  nop                        #  61    0x32972  1      OPC=nop             
  nop                        #  62    0x32973  1      OPC=nop             
  nop                        #  63    0x32974  1      OPC=nop             
  nop                        #  64    0x32975  1      OPC=nop             
  nop                        #  65    0x32976  1      OPC=nop             
  nop                        #  66    0x32977  1      OPC=nop             
  nop                        #  67    0x32978  1      OPC=nop             
  nop                        #  68    0x32979  1      OPC=nop             
  nop                        #  69    0x3297a  1      OPC=nop             
  nop                        #  70    0x3297b  1      OPC=nop             
  nop                        #  71    0x3297c  1      OPC=nop             
  nop                        #  72    0x3297d  1      OPC=nop             
  nop                        #  73    0x3297e  1      OPC=nop             
  nop                        #  74    0x3297f  1      OPC=nop             
  nop                        #  75    0x32980  1      OPC=nop             
  nop                        #  76    0x32981  1      OPC=nop             
  nop                        #  77    0x32982  1      OPC=nop             
  nop                        #  78    0x32983  1      OPC=nop             
  nop                        #  79    0x32984  1      OPC=nop             
  nop                        #  80    0x32985  1      OPC=nop             
  nop                        #  81    0x32986  1      OPC=nop             
                                                                          
.size __gmpn_add_n, .-__gmpn_add_n

