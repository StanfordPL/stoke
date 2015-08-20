  .text
  .globl findtcb
  .type findtcb, @function

#! file-offset 0x651a0
#! rip-offset  0x251a0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.findtcb:                             #        0x251a0  0      OPC=<label>         
  subl $0x8, %esp                     #  1     0x251a0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  2     0x251a3  3      OPC=addq_r64_r64    
  testl %edi, %edi                    #  3     0x251a6  2      OPC=testl_r32_r32   
  jg .L_25200                         #  4     0x251a8  2      OPC=jg_label        
  nop                                 #  5     0x251aa  1      OPC=nop             
  nop                                 #  6     0x251ab  1      OPC=nop             
  nop                                 #  7     0x251ac  1      OPC=nop             
  nop                                 #  8     0x251ad  1      OPC=nop             
  nop                                 #  9     0x251ae  1      OPC=nop             
  nop                                 #  10    0x251af  1      OPC=nop             
  nop                                 #  11    0x251b0  1      OPC=nop             
  nop                                 #  12    0x251b1  1      OPC=nop             
  nop                                 #  13    0x251b2  1      OPC=nop             
  nop                                 #  14    0x251b3  1      OPC=nop             
  nop                                 #  15    0x251b4  1      OPC=nop             
  nop                                 #  16    0x251b5  1      OPC=nop             
  nop                                 #  17    0x251b6  1      OPC=nop             
  nop                                 #  18    0x251b7  1      OPC=nop             
  nop                                 #  19    0x251b8  1      OPC=nop             
  nop                                 #  20    0x251b9  1      OPC=nop             
  nop                                 #  21    0x251ba  1      OPC=nop             
  nop                                 #  22    0x251bb  1      OPC=nop             
  nop                                 #  23    0x251bc  1      OPC=nop             
  nop                                 #  24    0x251bd  1      OPC=nop             
  nop                                 #  25    0x251be  1      OPC=nop             
  nop                                 #  26    0x251bf  1      OPC=nop             
.L_251c0:                             #        0x251c0  0      OPC=<label>         
  movl %edi, %esi                     #  27    0x251c0  2      OPC=movl_r32_r32    
  movl $0x100209e1, %edi              #  28    0x251c2  5      OPC=movl_r32_imm32  
  xorl %eax, %eax                     #  29    0x251c7  2      OPC=xorl_r32_r32    
  nop                                 #  30    0x251c9  1      OPC=nop             
  nop                                 #  31    0x251ca  1      OPC=nop             
  nop                                 #  32    0x251cb  1      OPC=nop             
  nop                                 #  33    0x251cc  1      OPC=nop             
  nop                                 #  34    0x251cd  1      OPC=nop             
  nop                                 #  35    0x251ce  1      OPC=nop             
  nop                                 #  36    0x251cf  1      OPC=nop             
  nop                                 #  37    0x251d0  1      OPC=nop             
  nop                                 #  38    0x251d1  1      OPC=nop             
  nop                                 #  39    0x251d2  1      OPC=nop             
  nop                                 #  40    0x251d3  1      OPC=nop             
  nop                                 #  41    0x251d4  1      OPC=nop             
  nop                                 #  42    0x251d5  1      OPC=nop             
  nop                                 #  43    0x251d6  1      OPC=nop             
  nop                                 #  44    0x251d7  1      OPC=nop             
  nop                                 #  45    0x251d8  1      OPC=nop             
  nop                                 #  46    0x251d9  1      OPC=nop             
  nop                                 #  47    0x251da  1      OPC=nop             
  callq .printf                       #  48    0x251db  5      OPC=callq_label     
  xorl %eax, %eax                     #  49    0x251e0  2      OPC=xorl_r32_r32    
  addl $0x8, %esp                     #  50    0x251e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  51    0x251e5  3      OPC=addq_r64_r64    
  popq %r11                           #  52    0x251e8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  53    0x251ea  7      OPC=andl_r32_imm32  
  nop                                 #  54    0x251f1  1      OPC=nop             
  nop                                 #  55    0x251f2  1      OPC=nop             
  nop                                 #  56    0x251f3  1      OPC=nop             
  nop                                 #  57    0x251f4  1      OPC=nop             
  addq %r15, %r11                     #  58    0x251f5  3      OPC=addq_r64_r64    
  jmpq %r11                           #  59    0x251f8  3      OPC=jmpq_r64        
  nop                                 #  60    0x251fb  1      OPC=nop             
  nop                                 #  61    0x251fc  1      OPC=nop             
  nop                                 #  62    0x251fd  1      OPC=nop             
  nop                                 #  63    0x251fe  1      OPC=nop             
  nop                                 #  64    0x251ff  1      OPC=nop             
  nop                                 #  65    0x25200  1      OPC=nop             
  nop                                 #  66    0x25201  1      OPC=nop             
  nop                                 #  67    0x25202  1      OPC=nop             
  nop                                 #  68    0x25203  1      OPC=nop             
  nop                                 #  69    0x25204  1      OPC=nop             
  nop                                 #  70    0x25205  1      OPC=nop             
  nop                                 #  71    0x25206  1      OPC=nop             
.L_25200:                             #        0x25207  0      OPC=<label>         
  cmpl %edi, 0x1004b41a(%rip)         #  72    0x25207  6      OPC=cmpl_m32_r32    
  jl .L_251c0                         #  73    0x2520d  2      OPC=jl_label        
  leal (,%rdi,4), %eax                #  74    0x2520f  7      OPC=leal_r32_m16    
  cltq                                #  75    0x25216  2      OPC=cltq            
  movl %eax, %eax                     #  76    0x25218  2      OPC=movl_r32_r32    
  movl 0x10070620(%r15,%rax,1), %eax  #  77    0x2521a  8      OPC=movl_r32_m32    
  testq %rax, %rax                    #  78    0x25222  3      OPC=testq_r64_r64   
  xchgw %ax, %ax                      #  79    0x25225  2      OPC=xchgw_ax_r16    
  je .L_251c0                         #  80    0x25227  2      OPC=je_label        
  addl $0x8, %esp                     #  81    0x25229  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  82    0x2522c  3      OPC=addq_r64_r64    
  popq %r11                           #  83    0x2522f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  84    0x25231  7      OPC=andl_r32_imm32  
  nop                                 #  85    0x25238  1      OPC=nop             
  nop                                 #  86    0x25239  1      OPC=nop             
  nop                                 #  87    0x2523a  1      OPC=nop             
  nop                                 #  88    0x2523b  1      OPC=nop             
  addq %r15, %r11                     #  89    0x2523c  3      OPC=addq_r64_r64    
  jmpq %r11                           #  90    0x2523f  3      OPC=jmpq_r64        
  nop                                 #  91    0x25242  1      OPC=nop             
  nop                                 #  92    0x25243  1      OPC=nop             
  nop                                 #  93    0x25244  1      OPC=nop             
  nop                                 #  94    0x25245  1      OPC=nop             
  nop                                 #  95    0x25246  1      OPC=nop             
  nop                                 #  96    0x25247  1      OPC=nop             
  nop                                 #  97    0x25248  1      OPC=nop             
  nop                                 #  98    0x25249  1      OPC=nop             
  nop                                 #  99    0x2524a  1      OPC=nop             
  nop                                 #  100   0x2524b  1      OPC=nop             
  nop                                 #  101   0x2524c  1      OPC=nop             
  nop                                 #  102   0x2524d  1      OPC=nop             
                                                                                   
.size findtcb, .-findtcb

