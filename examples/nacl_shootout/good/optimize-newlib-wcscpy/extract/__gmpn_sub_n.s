  .text
  .globl __gmpn_sub_n
  .type __gmpn_sub_n, @function

#! file-offset 0x72680
#! rip-offset  0x32680
#! capacity    128 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_sub_n:               #        0x32680  0      OPC=<label>         
  pushq %rbx                 #  1     0x32680  1      OPC=pushq_r64_1     
  movl %edi, %edi            #  2     0x32681  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  3     0x32683  2      OPC=movl_r32_r32    
  movl %edx, %edx            #  4     0x32685  2      OPC=movl_r32_r32    
  xorl %eax, %eax            #  5     0x32687  2      OPC=xorl_r32_r32    
  nop                        #  6     0x32689  1      OPC=nop             
  nop                        #  7     0x3268a  1      OPC=nop             
  nop                        #  8     0x3268b  1      OPC=nop             
  nop                        #  9     0x3268c  1      OPC=nop             
  nop                        #  10    0x3268d  1      OPC=nop             
  nop                        #  11    0x3268e  1      OPC=nop             
  nop                        #  12    0x3268f  1      OPC=nop             
  nop                        #  13    0x32690  1      OPC=nop             
  nop                        #  14    0x32691  1      OPC=nop             
  nop                        #  15    0x32692  1      OPC=nop             
  nop                        #  16    0x32693  1      OPC=nop             
  nop                        #  17    0x32694  1      OPC=nop             
  nop                        #  18    0x32695  1      OPC=nop             
  nop                        #  19    0x32696  1      OPC=nop             
  nop                        #  20    0x32697  1      OPC=nop             
  nop                        #  21    0x32698  1      OPC=nop             
  nop                        #  22    0x32699  1      OPC=nop             
  nop                        #  23    0x3269a  1      OPC=nop             
  nop                        #  24    0x3269b  1      OPC=nop             
  nop                        #  25    0x3269c  1      OPC=nop             
  nop                        #  26    0x3269d  1      OPC=nop             
  nop                        #  27    0x3269e  1      OPC=nop             
  nop                        #  28    0x3269f  1      OPC=nop             
.L_326a0:                    #        0x326a0  0      OPC=<label>         
  movl %esi, %esi            #  29    0x326a0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r9d   #  30    0x326a2  4      OPC=movl_r32_m32    
  movl %edx, %edx            #  31    0x326a6  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d   #  32    0x326a8  4      OPC=movl_r32_m32    
  addl $0x4, %esi            #  33    0x326ac  3      OPC=addl_r32_imm8   
  addl $0x4, %edx            #  34    0x326af  3      OPC=addl_r32_imm8   
  movl %r9d, %ebx            #  35    0x326b2  3      OPC=movl_r32_r32    
  subl %r8d, %ebx            #  36    0x326b5  3      OPC=subl_r32_r32    
  movl %ebx, %r10d           #  37    0x326b8  3      OPC=movl_r32_r32    
  subl %eax, %r10d           #  38    0x326bb  3      OPC=subl_r32_r32    
  xchgw %ax, %ax             #  39    0x326be  2      OPC=xchgw_ax_r16    
  setb %al                   #  40    0x326c0  3      OPC=setb_r8         
  cmpl %r9d, %ebx            #  41    0x326c3  3      OPC=cmpl_r32_r32    
  movl %edi, %edi            #  42    0x326c6  2      OPC=movl_r32_r32    
  movl %r10d, (%r15,%rdi,1)  #  43    0x326c8  4      OPC=movl_m32_r32    
  seta %r8b                  #  44    0x326cc  4      OPC=seta_r8         
  addl $0x4, %edi            #  45    0x326d0  3      OPC=addl_r32_imm8   
  orl %r8d, %eax             #  46    0x326d3  3      OPC=orl_r32_r32     
  andl $0x1, %eax            #  47    0x326d6  3      OPC=andl_r32_imm8   
  subl $0x1, %ecx            #  48    0x326d9  3      OPC=subl_r32_imm8   
  nop                        #  49    0x326dc  1      OPC=nop             
  nop                        #  50    0x326dd  1      OPC=nop             
  nop                        #  51    0x326de  1      OPC=nop             
  nop                        #  52    0x326df  1      OPC=nop             
  jne .L_326a0               #  53    0x326e0  2      OPC=jne_label       
  popq %rbx                  #  54    0x326e2  1      OPC=popq_r64_1      
  popq %r11                  #  55    0x326e3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  56    0x326e5  7      OPC=andl_r32_imm32  
  nop                        #  57    0x326ec  1      OPC=nop             
  nop                        #  58    0x326ed  1      OPC=nop             
  nop                        #  59    0x326ee  1      OPC=nop             
  nop                        #  60    0x326ef  1      OPC=nop             
  addq %r15, %r11            #  61    0x326f0  3      OPC=addq_r64_r64    
  jmpq %r11                  #  62    0x326f3  3      OPC=jmpq_r64        
  nop                        #  63    0x326f6  1      OPC=nop             
  nop                        #  64    0x326f7  1      OPC=nop             
  nop                        #  65    0x326f8  1      OPC=nop             
  nop                        #  66    0x326f9  1      OPC=nop             
  nop                        #  67    0x326fa  1      OPC=nop             
  nop                        #  68    0x326fb  1      OPC=nop             
  nop                        #  69    0x326fc  1      OPC=nop             
  nop                        #  70    0x326fd  1      OPC=nop             
  nop                        #  71    0x326fe  1      OPC=nop             
  nop                        #  72    0x326ff  1      OPC=nop             
  nop                        #  73    0x32700  1      OPC=nop             
  nop                        #  74    0x32701  1      OPC=nop             
  nop                        #  75    0x32702  1      OPC=nop             
  nop                        #  76    0x32703  1      OPC=nop             
  nop                        #  77    0x32704  1      OPC=nop             
  nop                        #  78    0x32705  1      OPC=nop             
  nop                        #  79    0x32706  1      OPC=nop             
                                                                          
.size __gmpn_sub_n, .-__gmpn_sub_n

