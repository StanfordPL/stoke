  .text
  .globl DestroyConstraint
  .type DestroyConstraint, @function

#! file-offset 0x681e0
#! rip-offset  0x281e0
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  Opcode             
.DestroyConstraint:               #        0x281e0  0      OPC=<label>        
  pushq %r14                      #  1     0x281e0  2      OPC=pushq_r64_1    
  pushq %r13                      #  2     0x281e2  2      OPC=pushq_r64_1    
  pushq %r12                      #  3     0x281e4  2      OPC=pushq_r64_1    
  pushq %rbx                      #  4     0x281e6  1      OPC=pushq_r64_1    
  subl $0x8, %esp                 #  5     0x281e7  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                 #  6     0x281ea  3      OPC=addq_r64_r64   
  movl %edi, %r13d                #  7     0x281ed  3      OPC=movl_r32_r32   
  movl %r13d, %r13d               #  8     0x281f0  3      OPC=movl_r32_r32   
  cmpb $0xff, 0xc(%r15,%r13,1)    #  9     0x281f3  6      OPC=cmpb_m8_imm8   
  je .L_28220                     #  10    0x281f9  2      OPC=je_label       
  movl %r13d, %edi                #  11    0x281fb  3      OPC=movl_r32_r32   
  xchgw %ax, %ax                  #  12    0x281fe  2      OPC=xchgw_ax_r16   
  nop                             #  13    0x28200  1      OPC=nop            
  nop                             #  14    0x28201  1      OPC=nop            
  nop                             #  15    0x28202  1      OPC=nop            
  nop                             #  16    0x28203  1      OPC=nop            
  nop                             #  17    0x28204  1      OPC=nop            
  nop                             #  18    0x28205  1      OPC=nop            
  nop                             #  19    0x28206  1      OPC=nop            
  nop                             #  20    0x28207  1      OPC=nop            
  nop                             #  21    0x28208  1      OPC=nop            
  nop                             #  22    0x28209  1      OPC=nop            
  nop                             #  23    0x2820a  1      OPC=nop            
  nop                             #  24    0x2820b  1      OPC=nop            
  nop                             #  25    0x2820c  1      OPC=nop            
  nop                             #  26    0x2820d  1      OPC=nop            
  nop                             #  27    0x2820e  1      OPC=nop            
  nop                             #  28    0x2820f  1      OPC=nop            
  nop                             #  29    0x28210  1      OPC=nop            
  nop                             #  30    0x28211  1      OPC=nop            
  nop                             #  31    0x28212  1      OPC=nop            
  nop                             #  32    0x28213  1      OPC=nop            
  nop                             #  33    0x28214  1      OPC=nop            
  nop                             #  34    0x28215  1      OPC=nop            
  nop                             #  35    0x28216  1      OPC=nop            
  nop                             #  36    0x28217  1      OPC=nop            
  nop                             #  37    0x28218  1      OPC=nop            
  nop                             #  38    0x28219  1      OPC=nop            
  nop                             #  39    0x2821a  1      OPC=nop            
  callq .IncrementalRemove        #  40    0x2821b  5      OPC=callq_label    
.L_28220:                         #        0x28220  0      OPC=<label>        
  movl %r13d, %r13d               #  41    0x28220  3      OPC=movl_r32_r32   
  movsbl 0xe(%r15,%r13,1), %r12d  #  42    0x28223  6      OPC=movsbl_r32_m8  
  movl %r12d, %r14d               #  43    0x28229  3      OPC=movl_r32_r32   
  subl $0x1, %r14d                #  44    0x2822c  4      OPC=subl_r32_imm8  
  js .L_28280                     #  45    0x28230  2      OPC=js_label       
  leal 0x14(%r13,%r12,4), %r12d   #  46    0x28232  5      OPC=leal_r32_m16   
  xorl %ebx, %ebx                 #  47    0x28237  2      OPC=xorl_r32_r32   
  nop                             #  48    0x28239  1      OPC=nop            
  nop                             #  49    0x2823a  1      OPC=nop            
  nop                             #  50    0x2823b  1      OPC=nop            
  nop                             #  51    0x2823c  1      OPC=nop            
  nop                             #  52    0x2823d  1      OPC=nop            
  nop                             #  53    0x2823e  1      OPC=nop            
  nop                             #  54    0x2823f  1      OPC=nop            
.L_28240:                         #        0x28240  0      OPC=<label>        
  movl %r12d, %eax                #  55    0x28240  3      OPC=movl_r32_r32   
  movl %eax, %eax                 #  56    0x28243  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %eax        #  57    0x28245  4      OPC=movl_r32_m32   
  movl %eax, %eax                 #  58    0x28249  2      OPC=movl_r32_r32   
  movl 0x4(%r15,%rax,1), %edi     #  59    0x2824b  5      OPC=movl_r32_m32   
  movl %r13d, %esi                #  60    0x28250  3      OPC=movl_r32_r32   
  nop                             #  61    0x28253  1      OPC=nop            
  nop                             #  62    0x28254  1      OPC=nop            
  nop                             #  63    0x28255  1      OPC=nop            
  nop                             #  64    0x28256  1      OPC=nop            
  nop                             #  65    0x28257  1      OPC=nop            
  nop                             #  66    0x28258  1      OPC=nop            
  nop                             #  67    0x28259  1      OPC=nop            
  nop                             #  68    0x2825a  1      OPC=nop            
  callq .List_Remove              #  69    0x2825b  5      OPC=callq_label    
  addl $0x1, %ebx                 #  70    0x28260  3      OPC=addl_r32_imm8  
  subl $0x4, %r12d                #  71    0x28263  4      OPC=subl_r32_imm8  
  cmpl %ebx, %r14d                #  72    0x28267  3      OPC=cmpl_r32_r32   
  jns .L_28240                    #  73    0x2826a  2      OPC=jns_label      
  nop                             #  74    0x2826c  1      OPC=nop            
  nop                             #  75    0x2826d  1      OPC=nop            
  nop                             #  76    0x2826e  1      OPC=nop            
  nop                             #  77    0x2826f  1      OPC=nop            
  nop                             #  78    0x28270  1      OPC=nop            
  nop                             #  79    0x28271  1      OPC=nop            
  nop                             #  80    0x28272  1      OPC=nop            
  nop                             #  81    0x28273  1      OPC=nop            
  nop                             #  82    0x28274  1      OPC=nop            
  nop                             #  83    0x28275  1      OPC=nop            
  nop                             #  84    0x28276  1      OPC=nop            
  nop                             #  85    0x28277  1      OPC=nop            
  nop                             #  86    0x28278  1      OPC=nop            
  nop                             #  87    0x28279  1      OPC=nop            
  nop                             #  88    0x2827a  1      OPC=nop            
  nop                             #  89    0x2827b  1      OPC=nop            
  nop                             #  90    0x2827c  1      OPC=nop            
  nop                             #  91    0x2827d  1      OPC=nop            
  nop                             #  92    0x2827e  1      OPC=nop            
  nop                             #  93    0x2827f  1      OPC=nop            
.L_28280:                         #        0x28280  0      OPC=<label>        
  movl %r13d, %edi                #  94    0x28280  3      OPC=movl_r32_r32   
  addl $0x8, %esp                 #  95    0x28283  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                 #  96    0x28286  3      OPC=addq_r64_r64   
  popq %rbx                       #  97    0x28289  1      OPC=popq_r64_1     
  popq %r12                       #  98    0x2828a  2      OPC=popq_r64_1     
  popq %r13                       #  99    0x2828c  2      OPC=popq_r64_1     
  popq %r14                       #  100   0x2828e  2      OPC=popq_r64_1     
  jmpq .Constraint_Destroy        #  101   0x28290  5      OPC=jmpq_label_1   
  nop                             #  102   0x28295  1      OPC=nop            
  nop                             #  103   0x28296  1      OPC=nop            
  nop                             #  104   0x28297  1      OPC=nop            
  nop                             #  105   0x28298  1      OPC=nop            
  nop                             #  106   0x28299  1      OPC=nop            
  nop                             #  107   0x2829a  1      OPC=nop            
  nop                             #  108   0x2829b  1      OPC=nop            
  nop                             #  109   0x2829c  1      OPC=nop            
  nop                             #  110   0x2829d  1      OPC=nop            
  nop                             #  111   0x2829e  1      OPC=nop            
  nop                             #  112   0x2829f  1      OPC=nop            
                                                                              
.size DestroyConstraint, .-DestroyConstraint

