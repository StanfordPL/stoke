  .text
  .globl findtcb
  .type findtcb, @function

#! file-offset 0x65700
#! rip-offset  0x25700
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.findtcb:                             #        0x25700  0      OPC=<label>         
  subl $0x8, %esp                     #  1     0x25700  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  2     0x25703  3      OPC=addq_r64_r64    
  testl %edi, %edi                    #  3     0x25706  2      OPC=testl_r32_r32   
  jg .L_25760                         #  4     0x25708  2      OPC=jg_label        
  nop                                 #  5     0x2570a  1      OPC=nop             
  nop                                 #  6     0x2570b  1      OPC=nop             
  nop                                 #  7     0x2570c  1      OPC=nop             
  nop                                 #  8     0x2570d  1      OPC=nop             
  nop                                 #  9     0x2570e  1      OPC=nop             
  nop                                 #  10    0x2570f  1      OPC=nop             
  nop                                 #  11    0x25710  1      OPC=nop             
  nop                                 #  12    0x25711  1      OPC=nop             
  nop                                 #  13    0x25712  1      OPC=nop             
  nop                                 #  14    0x25713  1      OPC=nop             
  nop                                 #  15    0x25714  1      OPC=nop             
  nop                                 #  16    0x25715  1      OPC=nop             
  nop                                 #  17    0x25716  1      OPC=nop             
  nop                                 #  18    0x25717  1      OPC=nop             
  nop                                 #  19    0x25718  1      OPC=nop             
  nop                                 #  20    0x25719  1      OPC=nop             
  nop                                 #  21    0x2571a  1      OPC=nop             
  nop                                 #  22    0x2571b  1      OPC=nop             
  nop                                 #  23    0x2571c  1      OPC=nop             
  nop                                 #  24    0x2571d  1      OPC=nop             
  nop                                 #  25    0x2571e  1      OPC=nop             
  nop                                 #  26    0x2571f  1      OPC=nop             
.L_25720:                             #        0x25720  0      OPC=<label>         
  movl %edi, %esi                     #  27    0x25720  2      OPC=movl_r32_r32    
  movl $0x100209e1, %edi              #  28    0x25722  5      OPC=movl_r32_imm32  
  xorl %eax, %eax                     #  29    0x25727  2      OPC=xorl_r32_r32    
  nop                                 #  30    0x25729  1      OPC=nop             
  nop                                 #  31    0x2572a  1      OPC=nop             
  nop                                 #  32    0x2572b  1      OPC=nop             
  nop                                 #  33    0x2572c  1      OPC=nop             
  nop                                 #  34    0x2572d  1      OPC=nop             
  nop                                 #  35    0x2572e  1      OPC=nop             
  nop                                 #  36    0x2572f  1      OPC=nop             
  nop                                 #  37    0x25730  1      OPC=nop             
  nop                                 #  38    0x25731  1      OPC=nop             
  nop                                 #  39    0x25732  1      OPC=nop             
  nop                                 #  40    0x25733  1      OPC=nop             
  nop                                 #  41    0x25734  1      OPC=nop             
  nop                                 #  42    0x25735  1      OPC=nop             
  nop                                 #  43    0x25736  1      OPC=nop             
  nop                                 #  44    0x25737  1      OPC=nop             
  nop                                 #  45    0x25738  1      OPC=nop             
  nop                                 #  46    0x25739  1      OPC=nop             
  nop                                 #  47    0x2573a  1      OPC=nop             
  callq .printf                       #  48    0x2573b  5      OPC=callq_label     
  xorl %eax, %eax                     #  49    0x25740  2      OPC=xorl_r32_r32    
  addl $0x8, %esp                     #  50    0x25742  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  51    0x25745  3      OPC=addq_r64_r64    
  popq %r11                           #  52    0x25748  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  53    0x2574a  7      OPC=andl_r32_imm32  
  nop                                 #  54    0x25751  1      OPC=nop             
  nop                                 #  55    0x25752  1      OPC=nop             
  nop                                 #  56    0x25753  1      OPC=nop             
  nop                                 #  57    0x25754  1      OPC=nop             
  addq %r15, %r11                     #  58    0x25755  3      OPC=addq_r64_r64    
  jmpq %r11                           #  59    0x25758  3      OPC=jmpq_r64        
  nop                                 #  60    0x2575b  1      OPC=nop             
  nop                                 #  61    0x2575c  1      OPC=nop             
  nop                                 #  62    0x2575d  1      OPC=nop             
  nop                                 #  63    0x2575e  1      OPC=nop             
  nop                                 #  64    0x2575f  1      OPC=nop             
  nop                                 #  65    0x25760  1      OPC=nop             
  nop                                 #  66    0x25761  1      OPC=nop             
  nop                                 #  67    0x25762  1      OPC=nop             
  nop                                 #  68    0x25763  1      OPC=nop             
  nop                                 #  69    0x25764  1      OPC=nop             
  nop                                 #  70    0x25765  1      OPC=nop             
  nop                                 #  71    0x25766  1      OPC=nop             
.L_25760:                             #        0x25767  0      OPC=<label>         
  cmpl %edi, 0x1004aeba(%rip)         #  72    0x25767  6      OPC=cmpl_m32_r32    
  jl .L_25720                         #  73    0x2576d  2      OPC=jl_label        
  leal (,%rdi,4), %eax                #  74    0x2576f  7      OPC=leal_r32_m16    
  cltq                                #  75    0x25776  2      OPC=cltq            
  movl %eax, %eax                     #  76    0x25778  2      OPC=movl_r32_r32    
  movl 0x10070620(%r15,%rax,1), %eax  #  77    0x2577a  8      OPC=movl_r32_m32    
  testq %rax, %rax                    #  78    0x25782  3      OPC=testq_r64_r64   
  xchgw %ax, %ax                      #  79    0x25785  2      OPC=xchgw_ax_r16    
  je .L_25720                         #  80    0x25787  2      OPC=je_label        
  addl $0x8, %esp                     #  81    0x25789  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  82    0x2578c  3      OPC=addq_r64_r64    
  popq %r11                           #  83    0x2578f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  84    0x25791  7      OPC=andl_r32_imm32  
  nop                                 #  85    0x25798  1      OPC=nop             
  nop                                 #  86    0x25799  1      OPC=nop             
  nop                                 #  87    0x2579a  1      OPC=nop             
  nop                                 #  88    0x2579b  1      OPC=nop             
  addq %r15, %r11                     #  89    0x2579c  3      OPC=addq_r64_r64    
  jmpq %r11                           #  90    0x2579f  3      OPC=jmpq_r64        
  nop                                 #  91    0x257a2  1      OPC=nop             
  nop                                 #  92    0x257a3  1      OPC=nop             
  nop                                 #  93    0x257a4  1      OPC=nop             
  nop                                 #  94    0x257a5  1      OPC=nop             
  nop                                 #  95    0x257a6  1      OPC=nop             
  nop                                 #  96    0x257a7  1      OPC=nop             
  nop                                 #  97    0x257a8  1      OPC=nop             
  nop                                 #  98    0x257a9  1      OPC=nop             
  nop                                 #  99    0x257aa  1      OPC=nop             
  nop                                 #  100   0x257ab  1      OPC=nop             
  nop                                 #  101   0x257ac  1      OPC=nop             
  nop                                 #  102   0x257ad  1      OPC=nop             
                                                                                   
.size findtcb, .-findtcb

