  .text
  .globl mbrlen
  .type mbrlen, @function

#! file-offset 0x1981c0
#! rip-offset  0x1581c0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.mbrlen:                    #        0x1581c0  0      OPC=<label>         
  pushq %rbx                #  1     0x1581c0  1      OPC=pushq_r64_1     
  movl %edx, %ecx           #  2     0x1581c1  2      OPC=movl_r32_r32    
  movl %edi, %ebx           #  3     0x1581c3  2      OPC=movl_r32_r32    
  subl $0x10, %esp          #  4     0x1581c5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  5     0x1581c8  3      OPC=addq_r64_r64    
  testq %rcx, %rcx          #  6     0x1581cb  3      OPC=testq_r64_r64   
  je .L_158200              #  7     0x1581ce  2      OPC=je_label        
  movl %esi, %edx           #  8     0x1581d0  2      OPC=movl_r32_r32    
  addl $0x10, %esp          #  9     0x1581d2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  10    0x1581d5  3      OPC=addq_r64_r64    
  movl %ebx, %esi           #  11    0x1581d8  2      OPC=movl_r32_r32    
  popq %rbx                 #  12    0x1581da  1      OPC=popq_r64_1      
  xorl %edi, %edi           #  13    0x1581db  2      OPC=xorl_r32_r32    
  nop                       #  14    0x1581dd  1      OPC=nop             
  nop                       #  15    0x1581de  1      OPC=nop             
  nop                       #  16    0x1581df  1      OPC=nop             
  jmpq .mbrtowc             #  17    0x1581e0  5      OPC=jmpq_label_1    
  nop                       #  18    0x1581e5  1      OPC=nop             
  nop                       #  19    0x1581e6  1      OPC=nop             
  nop                       #  20    0x1581e7  1      OPC=nop             
  nop                       #  21    0x1581e8  1      OPC=nop             
  nop                       #  22    0x1581e9  1      OPC=nop             
  nop                       #  23    0x1581ea  1      OPC=nop             
  nop                       #  24    0x1581eb  1      OPC=nop             
  nop                       #  25    0x1581ec  1      OPC=nop             
  nop                       #  26    0x1581ed  1      OPC=nop             
  nop                       #  27    0x1581ee  1      OPC=nop             
  nop                       #  28    0x1581ef  1      OPC=nop             
  nop                       #  29    0x1581f0  1      OPC=nop             
  nop                       #  30    0x1581f1  1      OPC=nop             
  nop                       #  31    0x1581f2  1      OPC=nop             
  nop                       #  32    0x1581f3  1      OPC=nop             
  nop                       #  33    0x1581f4  1      OPC=nop             
  nop                       #  34    0x1581f5  1      OPC=nop             
  nop                       #  35    0x1581f6  1      OPC=nop             
  nop                       #  36    0x1581f7  1      OPC=nop             
  nop                       #  37    0x1581f8  1      OPC=nop             
  nop                       #  38    0x1581f9  1      OPC=nop             
  nop                       #  39    0x1581fa  1      OPC=nop             
  nop                       #  40    0x1581fb  1      OPC=nop             
  nop                       #  41    0x1581fc  1      OPC=nop             
  nop                       #  42    0x1581fd  1      OPC=nop             
  nop                       #  43    0x1581fe  1      OPC=nop             
  nop                       #  44    0x1581ff  1      OPC=nop             
.L_158200:                  #        0x158200  0      OPC=<label>         
  movl %esi, 0x8(%rsp)      #  45    0x158200  4      OPC=movl_m32_r32    
  nop                       #  46    0x158204  1      OPC=nop             
  nop                       #  47    0x158205  1      OPC=nop             
  nop                       #  48    0x158206  1      OPC=nop             
  nop                       #  49    0x158207  1      OPC=nop             
  nop                       #  50    0x158208  1      OPC=nop             
  nop                       #  51    0x158209  1      OPC=nop             
  nop                       #  52    0x15820a  1      OPC=nop             
  nop                       #  53    0x15820b  1      OPC=nop             
  nop                       #  54    0x15820c  1      OPC=nop             
  nop                       #  55    0x15820d  1      OPC=nop             
  nop                       #  56    0x15820e  1      OPC=nop             
  nop                       #  57    0x15820f  1      OPC=nop             
  nop                       #  58    0x158210  1      OPC=nop             
  nop                       #  59    0x158211  1      OPC=nop             
  nop                       #  60    0x158212  1      OPC=nop             
  nop                       #  61    0x158213  1      OPC=nop             
  nop                       #  62    0x158214  1      OPC=nop             
  nop                       #  63    0x158215  1      OPC=nop             
  nop                       #  64    0x158216  1      OPC=nop             
  nop                       #  65    0x158217  1      OPC=nop             
  nop                       #  66    0x158218  1      OPC=nop             
  nop                       #  67    0x158219  1      OPC=nop             
  nop                       #  68    0x15821a  1      OPC=nop             
  callq .__nacl_read_tp     #  69    0x15821b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax   #  70    0x158220  7      OPC=leaq_r64_m16    
  movl 0x8(%rsp), %esi      #  71    0x158227  4      OPC=movl_r32_m32    
  xorl %edi, %edi           #  72    0x15822b  2      OPC=xorl_r32_r32    
  movl %esi, %edx           #  73    0x15822d  2      OPC=movl_r32_r32    
  movl %ebx, %esi           #  74    0x15822f  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  75    0x158231  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx  #  76    0x158233  4      OPC=movl_r32_m32    
  addl $0x10, %esp          #  77    0x158237  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  78    0x15823a  3      OPC=addq_r64_r64    
  popq %rbx                 #  79    0x15823d  1      OPC=popq_r64_1      
  xchgw %ax, %ax            #  80    0x15823e  2      OPC=xchgw_ax_r16    
  addl $0xfc, %ecx          #  81    0x158240  6      OPC=addl_r32_imm32  
  jmpq .mbrtowc             #  82    0x158246  5      OPC=jmpq_label_1    
  nop                       #  83    0x15824b  1      OPC=nop             
  nop                       #  84    0x15824c  1      OPC=nop             
  nop                       #  85    0x15824d  1      OPC=nop             
  nop                       #  86    0x15824e  1      OPC=nop             
  nop                       #  87    0x15824f  1      OPC=nop             
  nop                       #  88    0x158250  1      OPC=nop             
  nop                       #  89    0x158251  1      OPC=nop             
  nop                       #  90    0x158252  1      OPC=nop             
  nop                       #  91    0x158253  1      OPC=nop             
  nop                       #  92    0x158254  1      OPC=nop             
  nop                       #  93    0x158255  1      OPC=nop             
  nop                       #  94    0x158256  1      OPC=nop             
  nop                       #  95    0x158257  1      OPC=nop             
  nop                       #  96    0x158258  1      OPC=nop             
  nop                       #  97    0x158259  1      OPC=nop             
  nop                       #  98    0x15825a  1      OPC=nop             
  nop                       #  99    0x15825b  1      OPC=nop             
  nop                       #  100   0x15825c  1      OPC=nop             
  nop                       #  101   0x15825d  1      OPC=nop             
  nop                       #  102   0x15825e  1      OPC=nop             
  nop                       #  103   0x15825f  1      OPC=nop             
                                                                          
.size mbrlen, .-mbrlen

