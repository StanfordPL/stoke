  .text
  .globl __gmpn_sub_n
  .type __gmpn_sub_n, @function

#! file-offset 0x730a0
#! rip-offset  0x330a0
#! capacity    128 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_sub_n:               #        0x330a0  0      OPC=<label>         
  pushq %rbx                 #  1     0x330a0  1      OPC=pushq_r64_1     
  movl %edi, %edi            #  2     0x330a1  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  3     0x330a3  2      OPC=movl_r32_r32    
  movl %edx, %edx            #  4     0x330a5  2      OPC=movl_r32_r32    
  xorl %eax, %eax            #  5     0x330a7  2      OPC=xorl_r32_r32    
  nop                        #  6     0x330a9  1      OPC=nop             
  nop                        #  7     0x330aa  1      OPC=nop             
  nop                        #  8     0x330ab  1      OPC=nop             
  nop                        #  9     0x330ac  1      OPC=nop             
  nop                        #  10    0x330ad  1      OPC=nop             
  nop                        #  11    0x330ae  1      OPC=nop             
  nop                        #  12    0x330af  1      OPC=nop             
  nop                        #  13    0x330b0  1      OPC=nop             
  nop                        #  14    0x330b1  1      OPC=nop             
  nop                        #  15    0x330b2  1      OPC=nop             
  nop                        #  16    0x330b3  1      OPC=nop             
  nop                        #  17    0x330b4  1      OPC=nop             
  nop                        #  18    0x330b5  1      OPC=nop             
  nop                        #  19    0x330b6  1      OPC=nop             
  nop                        #  20    0x330b7  1      OPC=nop             
  nop                        #  21    0x330b8  1      OPC=nop             
  nop                        #  22    0x330b9  1      OPC=nop             
  nop                        #  23    0x330ba  1      OPC=nop             
  nop                        #  24    0x330bb  1      OPC=nop             
  nop                        #  25    0x330bc  1      OPC=nop             
  nop                        #  26    0x330bd  1      OPC=nop             
  nop                        #  27    0x330be  1      OPC=nop             
  nop                        #  28    0x330bf  1      OPC=nop             
.L_330c0:                    #        0x330c0  0      OPC=<label>         
  movl %esi, %esi            #  29    0x330c0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r9d   #  30    0x330c2  4      OPC=movl_r32_m32    
  movl %edx, %edx            #  31    0x330c6  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d   #  32    0x330c8  4      OPC=movl_r32_m32    
  addl $0x4, %esi            #  33    0x330cc  3      OPC=addl_r32_imm8   
  addl $0x4, %edx            #  34    0x330cf  3      OPC=addl_r32_imm8   
  movl %r9d, %ebx            #  35    0x330d2  3      OPC=movl_r32_r32    
  subl %r8d, %ebx            #  36    0x330d5  3      OPC=subl_r32_r32    
  movl %ebx, %r10d           #  37    0x330d8  3      OPC=movl_r32_r32    
  subl %eax, %r10d           #  38    0x330db  3      OPC=subl_r32_r32    
  xchgw %ax, %ax             #  39    0x330de  2      OPC=xchgw_ax_r16    
  setb %al                   #  40    0x330e0  3      OPC=setb_r8         
  cmpl %r9d, %ebx            #  41    0x330e3  3      OPC=cmpl_r32_r32    
  movl %edi, %edi            #  42    0x330e6  2      OPC=movl_r32_r32    
  movl %r10d, (%r15,%rdi,1)  #  43    0x330e8  4      OPC=movl_m32_r32    
  seta %r8b                  #  44    0x330ec  4      OPC=seta_r8         
  addl $0x4, %edi            #  45    0x330f0  3      OPC=addl_r32_imm8   
  orl %r8d, %eax             #  46    0x330f3  3      OPC=orl_r32_r32     
  andl $0x1, %eax            #  47    0x330f6  3      OPC=andl_r32_imm8   
  subl $0x1, %ecx            #  48    0x330f9  3      OPC=subl_r32_imm8   
  nop                        #  49    0x330fc  1      OPC=nop             
  nop                        #  50    0x330fd  1      OPC=nop             
  nop                        #  51    0x330fe  1      OPC=nop             
  nop                        #  52    0x330ff  1      OPC=nop             
  jne .L_330c0               #  53    0x33100  2      OPC=jne_label       
  popq %rbx                  #  54    0x33102  1      OPC=popq_r64_1      
  popq %r11                  #  55    0x33103  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  56    0x33105  7      OPC=andl_r32_imm32  
  nop                        #  57    0x3310c  1      OPC=nop             
  nop                        #  58    0x3310d  1      OPC=nop             
  nop                        #  59    0x3310e  1      OPC=nop             
  nop                        #  60    0x3310f  1      OPC=nop             
  addq %r15, %r11            #  61    0x33110  3      OPC=addq_r64_r64    
  jmpq %r11                  #  62    0x33113  3      OPC=jmpq_r64        
  nop                        #  63    0x33116  1      OPC=nop             
  nop                        #  64    0x33117  1      OPC=nop             
  nop                        #  65    0x33118  1      OPC=nop             
  nop                        #  66    0x33119  1      OPC=nop             
  nop                        #  67    0x3311a  1      OPC=nop             
  nop                        #  68    0x3311b  1      OPC=nop             
  nop                        #  69    0x3311c  1      OPC=nop             
  nop                        #  70    0x3311d  1      OPC=nop             
  nop                        #  71    0x3311e  1      OPC=nop             
  nop                        #  72    0x3311f  1      OPC=nop             
  nop                        #  73    0x33120  1      OPC=nop             
  nop                        #  74    0x33121  1      OPC=nop             
  nop                        #  75    0x33122  1      OPC=nop             
  nop                        #  76    0x33123  1      OPC=nop             
  nop                        #  77    0x33124  1      OPC=nop             
  nop                        #  78    0x33125  1      OPC=nop             
  nop                        #  79    0x33126  1      OPC=nop             
                                                                          
.size __gmpn_sub_n, .-__gmpn_sub_n

