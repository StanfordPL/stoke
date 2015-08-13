  .text
  .globl findtcb
  .type findtcb, @function

#! file-offset 0x65180
#! rip-offset  0x25180
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.findtcb:                             #        0x25180  0      OPC=<label>         
  subl $0x8, %esp                     #  1     0x25180  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  2     0x25183  3      OPC=addq_r64_r64    
  testl %edi, %edi                    #  3     0x25186  2      OPC=testl_r32_r32   
  jg .L_251e0                         #  4     0x25188  2      OPC=jg_label        
  nop                                 #  5     0x2518a  1      OPC=nop             
  nop                                 #  6     0x2518b  1      OPC=nop             
  nop                                 #  7     0x2518c  1      OPC=nop             
  nop                                 #  8     0x2518d  1      OPC=nop             
  nop                                 #  9     0x2518e  1      OPC=nop             
  nop                                 #  10    0x2518f  1      OPC=nop             
  nop                                 #  11    0x25190  1      OPC=nop             
  nop                                 #  12    0x25191  1      OPC=nop             
  nop                                 #  13    0x25192  1      OPC=nop             
  nop                                 #  14    0x25193  1      OPC=nop             
  nop                                 #  15    0x25194  1      OPC=nop             
  nop                                 #  16    0x25195  1      OPC=nop             
  nop                                 #  17    0x25196  1      OPC=nop             
  nop                                 #  18    0x25197  1      OPC=nop             
  nop                                 #  19    0x25198  1      OPC=nop             
  nop                                 #  20    0x25199  1      OPC=nop             
  nop                                 #  21    0x2519a  1      OPC=nop             
  nop                                 #  22    0x2519b  1      OPC=nop             
  nop                                 #  23    0x2519c  1      OPC=nop             
  nop                                 #  24    0x2519d  1      OPC=nop             
  nop                                 #  25    0x2519e  1      OPC=nop             
  nop                                 #  26    0x2519f  1      OPC=nop             
.L_251a0:                             #        0x251a0  0      OPC=<label>         
  movl %edi, %esi                     #  27    0x251a0  2      OPC=movl_r32_r32    
  movl $0x100209e1, %edi              #  28    0x251a2  5      OPC=movl_r32_imm32  
  xorl %eax, %eax                     #  29    0x251a7  2      OPC=xorl_r32_r32    
  nop                                 #  30    0x251a9  1      OPC=nop             
  nop                                 #  31    0x251aa  1      OPC=nop             
  nop                                 #  32    0x251ab  1      OPC=nop             
  nop                                 #  33    0x251ac  1      OPC=nop             
  nop                                 #  34    0x251ad  1      OPC=nop             
  nop                                 #  35    0x251ae  1      OPC=nop             
  nop                                 #  36    0x251af  1      OPC=nop             
  nop                                 #  37    0x251b0  1      OPC=nop             
  nop                                 #  38    0x251b1  1      OPC=nop             
  nop                                 #  39    0x251b2  1      OPC=nop             
  nop                                 #  40    0x251b3  1      OPC=nop             
  nop                                 #  41    0x251b4  1      OPC=nop             
  nop                                 #  42    0x251b5  1      OPC=nop             
  nop                                 #  43    0x251b6  1      OPC=nop             
  nop                                 #  44    0x251b7  1      OPC=nop             
  nop                                 #  45    0x251b8  1      OPC=nop             
  nop                                 #  46    0x251b9  1      OPC=nop             
  nop                                 #  47    0x251ba  1      OPC=nop             
  callq .printf                       #  48    0x251bb  5      OPC=callq_label     
  xorl %eax, %eax                     #  49    0x251c0  2      OPC=xorl_r32_r32    
  addl $0x8, %esp                     #  50    0x251c2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  51    0x251c5  3      OPC=addq_r64_r64    
  popq %r11                           #  52    0x251c8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  53    0x251ca  7      OPC=andl_r32_imm32  
  nop                                 #  54    0x251d1  1      OPC=nop             
  nop                                 #  55    0x251d2  1      OPC=nop             
  nop                                 #  56    0x251d3  1      OPC=nop             
  nop                                 #  57    0x251d4  1      OPC=nop             
  addq %r15, %r11                     #  58    0x251d5  3      OPC=addq_r64_r64    
  jmpq %r11                           #  59    0x251d8  3      OPC=jmpq_r64        
  nop                                 #  60    0x251db  1      OPC=nop             
  nop                                 #  61    0x251dc  1      OPC=nop             
  nop                                 #  62    0x251dd  1      OPC=nop             
  nop                                 #  63    0x251de  1      OPC=nop             
  nop                                 #  64    0x251df  1      OPC=nop             
  nop                                 #  65    0x251e0  1      OPC=nop             
  nop                                 #  66    0x251e1  1      OPC=nop             
  nop                                 #  67    0x251e2  1      OPC=nop             
  nop                                 #  68    0x251e3  1      OPC=nop             
  nop                                 #  69    0x251e4  1      OPC=nop             
  nop                                 #  70    0x251e5  1      OPC=nop             
  nop                                 #  71    0x251e6  1      OPC=nop             
.L_251e0:                             #        0x251e7  0      OPC=<label>         
  cmpl %edi, 0x1004b43a(%rip)         #  72    0x251e7  6      OPC=cmpl_m32_r32    
  jl .L_251a0                         #  73    0x251ed  2      OPC=jl_label        
  leal (,%rdi,4), %eax                #  74    0x251ef  7      OPC=leal_r32_m16    
  cltq                                #  75    0x251f6  2      OPC=cltq            
  movl %eax, %eax                     #  76    0x251f8  2      OPC=movl_r32_r32    
  movl 0x10070620(%r15,%rax,1), %eax  #  77    0x251fa  8      OPC=movl_r32_m32    
  testq %rax, %rax                    #  78    0x25202  3      OPC=testq_r64_r64   
  xchgw %ax, %ax                      #  79    0x25205  2      OPC=xchgw_ax_r16    
  je .L_251a0                         #  80    0x25207  2      OPC=je_label        
  addl $0x8, %esp                     #  81    0x25209  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  82    0x2520c  3      OPC=addq_r64_r64    
  popq %r11                           #  83    0x2520f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  84    0x25211  7      OPC=andl_r32_imm32  
  nop                                 #  85    0x25218  1      OPC=nop             
  nop                                 #  86    0x25219  1      OPC=nop             
  nop                                 #  87    0x2521a  1      OPC=nop             
  nop                                 #  88    0x2521b  1      OPC=nop             
  addq %r15, %r11                     #  89    0x2521c  3      OPC=addq_r64_r64    
  jmpq %r11                           #  90    0x2521f  3      OPC=jmpq_r64        
  nop                                 #  91    0x25222  1      OPC=nop             
  nop                                 #  92    0x25223  1      OPC=nop             
  nop                                 #  93    0x25224  1      OPC=nop             
  nop                                 #  94    0x25225  1      OPC=nop             
  nop                                 #  95    0x25226  1      OPC=nop             
  nop                                 #  96    0x25227  1      OPC=nop             
  nop                                 #  97    0x25228  1      OPC=nop             
  nop                                 #  98    0x25229  1      OPC=nop             
  nop                                 #  99    0x2522a  1      OPC=nop             
  nop                                 #  100   0x2522b  1      OPC=nop             
  nop                                 #  101   0x2522c  1      OPC=nop             
  nop                                 #  102   0x2522d  1      OPC=nop             
                                                                                   
.size findtcb, .-findtcb

