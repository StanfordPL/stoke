  .text
  .globl __gmpn_add_n
  .type __gmpn_add_n, @function

#! file-offset 0x73020
#! rip-offset  0x33020
#! capacity    128 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_add_n:               #        0x33020  0      OPC=<label>         
  movl %edi, %edi            #  1     0x33020  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  2     0x33022  2      OPC=movl_r32_r32    
  movl %edx, %edx            #  3     0x33024  2      OPC=movl_r32_r32    
  xorl %eax, %eax            #  4     0x33026  2      OPC=xorl_r32_r32    
  nop                        #  5     0x33028  1      OPC=nop             
  nop                        #  6     0x33029  1      OPC=nop             
  nop                        #  7     0x3302a  1      OPC=nop             
  nop                        #  8     0x3302b  1      OPC=nop             
  nop                        #  9     0x3302c  1      OPC=nop             
  nop                        #  10    0x3302d  1      OPC=nop             
  nop                        #  11    0x3302e  1      OPC=nop             
  nop                        #  12    0x3302f  1      OPC=nop             
  nop                        #  13    0x33030  1      OPC=nop             
  nop                        #  14    0x33031  1      OPC=nop             
  nop                        #  15    0x33032  1      OPC=nop             
  nop                        #  16    0x33033  1      OPC=nop             
  nop                        #  17    0x33034  1      OPC=nop             
  nop                        #  18    0x33035  1      OPC=nop             
  nop                        #  19    0x33036  1      OPC=nop             
  nop                        #  20    0x33037  1      OPC=nop             
  nop                        #  21    0x33038  1      OPC=nop             
  nop                        #  22    0x33039  1      OPC=nop             
  nop                        #  23    0x3303a  1      OPC=nop             
  nop                        #  24    0x3303b  1      OPC=nop             
  nop                        #  25    0x3303c  1      OPC=nop             
  nop                        #  26    0x3303d  1      OPC=nop             
  nop                        #  27    0x3303e  1      OPC=nop             
  nop                        #  28    0x3303f  1      OPC=nop             
.L_33040:                    #        0x33040  0      OPC=<label>         
  movl %esi, %esi            #  29    0x33040  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r9d   #  30    0x33042  4      OPC=movl_r32_m32    
  movl %edx, %edx            #  31    0x33046  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d   #  32    0x33048  4      OPC=movl_r32_m32    
  movl %eax, %r10d           #  33    0x3304c  3      OPC=movl_r32_r32    
  addl $0x4, %esi            #  34    0x3304f  3      OPC=addl_r32_imm8   
  addl $0x4, %edx            #  35    0x33052  3      OPC=addl_r32_imm8   
  addl %r9d, %r8d            #  36    0x33055  3      OPC=addl_r32_r32    
  addl %r8d, %r10d           #  37    0x33058  3      OPC=addl_r32_r32    
  setb %al                   #  38    0x3305b  3      OPC=setb_r8         
  xchgw %ax, %ax             #  39    0x3305e  2      OPC=xchgw_ax_r16    
  cmpl %r9d, %r8d            #  40    0x33060  3      OPC=cmpl_r32_r32    
  movl %edi, %edi            #  41    0x33063  2      OPC=movl_r32_r32    
  movl %r10d, (%r15,%rdi,1)  #  42    0x33065  4      OPC=movl_m32_r32    
  setb %r8b                  #  43    0x33069  4      OPC=setb_r8         
  addl $0x4, %edi            #  44    0x3306d  3      OPC=addl_r32_imm8   
  orl %r8d, %eax             #  45    0x33070  3      OPC=orl_r32_r32     
  andl $0x1, %eax            #  46    0x33073  3      OPC=andl_r32_imm8   
  subl $0x1, %ecx            #  47    0x33076  3      OPC=subl_r32_imm8   
  jne .L_33040               #  48    0x33079  2      OPC=jne_label       
  popq %r11                  #  49    0x3307b  2      OPC=popq_r64_1      
  nop                        #  50    0x3307d  1      OPC=nop             
  nop                        #  51    0x3307e  1      OPC=nop             
  nop                        #  52    0x3307f  1      OPC=nop             
  andl $0xffffffe0, %r11d    #  53    0x33080  7      OPC=andl_r32_imm32  
  nop                        #  54    0x33087  1      OPC=nop             
  nop                        #  55    0x33088  1      OPC=nop             
  nop                        #  56    0x33089  1      OPC=nop             
  nop                        #  57    0x3308a  1      OPC=nop             
  addq %r15, %r11            #  58    0x3308b  3      OPC=addq_r64_r64    
  jmpq %r11                  #  59    0x3308e  3      OPC=jmpq_r64        
  nop                        #  60    0x33091  1      OPC=nop             
  nop                        #  61    0x33092  1      OPC=nop             
  nop                        #  62    0x33093  1      OPC=nop             
  nop                        #  63    0x33094  1      OPC=nop             
  nop                        #  64    0x33095  1      OPC=nop             
  nop                        #  65    0x33096  1      OPC=nop             
  nop                        #  66    0x33097  1      OPC=nop             
  nop                        #  67    0x33098  1      OPC=nop             
  nop                        #  68    0x33099  1      OPC=nop             
  nop                        #  69    0x3309a  1      OPC=nop             
  nop                        #  70    0x3309b  1      OPC=nop             
  nop                        #  71    0x3309c  1      OPC=nop             
  nop                        #  72    0x3309d  1      OPC=nop             
  nop                        #  73    0x3309e  1      OPC=nop             
  nop                        #  74    0x3309f  1      OPC=nop             
  nop                        #  75    0x330a0  1      OPC=nop             
  nop                        #  76    0x330a1  1      OPC=nop             
  nop                        #  77    0x330a2  1      OPC=nop             
  nop                        #  78    0x330a3  1      OPC=nop             
  nop                        #  79    0x330a4  1      OPC=nop             
  nop                        #  80    0x330a5  1      OPC=nop             
  nop                        #  81    0x330a6  1      OPC=nop             
                                                                          
.size __gmpn_add_n, .-__gmpn_add_n

