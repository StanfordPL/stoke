  .text
  .globl __gmpn_sub_n
  .type __gmpn_sub_n, @function

#! file-offset 0x72980
#! rip-offset  0x32980
#! capacity    128 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_sub_n:               #        0x32980  0      OPC=<label>         
  pushq %rbx                 #  1     0x32980  1      OPC=pushq_r64_1     
  movl %edi, %edi            #  2     0x32981  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  3     0x32983  2      OPC=movl_r32_r32    
  movl %edx, %edx            #  4     0x32985  2      OPC=movl_r32_r32    
  xorl %eax, %eax            #  5     0x32987  2      OPC=xorl_r32_r32    
  nop                        #  6     0x32989  1      OPC=nop             
  nop                        #  7     0x3298a  1      OPC=nop             
  nop                        #  8     0x3298b  1      OPC=nop             
  nop                        #  9     0x3298c  1      OPC=nop             
  nop                        #  10    0x3298d  1      OPC=nop             
  nop                        #  11    0x3298e  1      OPC=nop             
  nop                        #  12    0x3298f  1      OPC=nop             
  nop                        #  13    0x32990  1      OPC=nop             
  nop                        #  14    0x32991  1      OPC=nop             
  nop                        #  15    0x32992  1      OPC=nop             
  nop                        #  16    0x32993  1      OPC=nop             
  nop                        #  17    0x32994  1      OPC=nop             
  nop                        #  18    0x32995  1      OPC=nop             
  nop                        #  19    0x32996  1      OPC=nop             
  nop                        #  20    0x32997  1      OPC=nop             
  nop                        #  21    0x32998  1      OPC=nop             
  nop                        #  22    0x32999  1      OPC=nop             
  nop                        #  23    0x3299a  1      OPC=nop             
  nop                        #  24    0x3299b  1      OPC=nop             
  nop                        #  25    0x3299c  1      OPC=nop             
  nop                        #  26    0x3299d  1      OPC=nop             
  nop                        #  27    0x3299e  1      OPC=nop             
  nop                        #  28    0x3299f  1      OPC=nop             
.L_329a0:                    #        0x329a0  0      OPC=<label>         
  movl %esi, %esi            #  29    0x329a0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r9d   #  30    0x329a2  4      OPC=movl_r32_m32    
  movl %edx, %edx            #  31    0x329a6  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d   #  32    0x329a8  4      OPC=movl_r32_m32    
  addl $0x4, %esi            #  33    0x329ac  3      OPC=addl_r32_imm8   
  addl $0x4, %edx            #  34    0x329af  3      OPC=addl_r32_imm8   
  movl %r9d, %ebx            #  35    0x329b2  3      OPC=movl_r32_r32    
  subl %r8d, %ebx            #  36    0x329b5  3      OPC=subl_r32_r32    
  movl %ebx, %r10d           #  37    0x329b8  3      OPC=movl_r32_r32    
  subl %eax, %r10d           #  38    0x329bb  3      OPC=subl_r32_r32    
  xchgw %ax, %ax             #  39    0x329be  2      OPC=xchgw_ax_r16    
  setb %al                   #  40    0x329c0  3      OPC=setb_r8         
  cmpl %r9d, %ebx            #  41    0x329c3  3      OPC=cmpl_r32_r32    
  movl %edi, %edi            #  42    0x329c6  2      OPC=movl_r32_r32    
  movl %r10d, (%r15,%rdi,1)  #  43    0x329c8  4      OPC=movl_m32_r32    
  seta %r8b                  #  44    0x329cc  4      OPC=seta_r8         
  addl $0x4, %edi            #  45    0x329d0  3      OPC=addl_r32_imm8   
  orl %r8d, %eax             #  46    0x329d3  3      OPC=orl_r32_r32     
  andl $0x1, %eax            #  47    0x329d6  3      OPC=andl_r32_imm8   
  subl $0x1, %ecx            #  48    0x329d9  3      OPC=subl_r32_imm8   
  nop                        #  49    0x329dc  1      OPC=nop             
  nop                        #  50    0x329dd  1      OPC=nop             
  nop                        #  51    0x329de  1      OPC=nop             
  nop                        #  52    0x329df  1      OPC=nop             
  jne .L_329a0               #  53    0x329e0  2      OPC=jne_label       
  popq %rbx                  #  54    0x329e2  1      OPC=popq_r64_1      
  popq %r11                  #  55    0x329e3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  56    0x329e5  7      OPC=andl_r32_imm32  
  nop                        #  57    0x329ec  1      OPC=nop             
  nop                        #  58    0x329ed  1      OPC=nop             
  nop                        #  59    0x329ee  1      OPC=nop             
  nop                        #  60    0x329ef  1      OPC=nop             
  addq %r15, %r11            #  61    0x329f0  3      OPC=addq_r64_r64    
  jmpq %r11                  #  62    0x329f3  3      OPC=jmpq_r64        
  nop                        #  63    0x329f6  1      OPC=nop             
  nop                        #  64    0x329f7  1      OPC=nop             
  nop                        #  65    0x329f8  1      OPC=nop             
  nop                        #  66    0x329f9  1      OPC=nop             
  nop                        #  67    0x329fa  1      OPC=nop             
  nop                        #  68    0x329fb  1      OPC=nop             
  nop                        #  69    0x329fc  1      OPC=nop             
  nop                        #  70    0x329fd  1      OPC=nop             
  nop                        #  71    0x329fe  1      OPC=nop             
  nop                        #  72    0x329ff  1      OPC=nop             
  nop                        #  73    0x32a00  1      OPC=nop             
  nop                        #  74    0x32a01  1      OPC=nop             
  nop                        #  75    0x32a02  1      OPC=nop             
  nop                        #  76    0x32a03  1      OPC=nop             
  nop                        #  77    0x32a04  1      OPC=nop             
  nop                        #  78    0x32a05  1      OPC=nop             
  nop                        #  79    0x32a06  1      OPC=nop             
                                                                          
.size __gmpn_sub_n, .-__gmpn_sub_n

