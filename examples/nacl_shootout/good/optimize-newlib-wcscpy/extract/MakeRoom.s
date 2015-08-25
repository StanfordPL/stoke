  .text
  .globl MakeRoom
  .type MakeRoom, @function

#! file-offset 0x67080
#! rip-offset  0x27080
#! capacity    256 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.MakeRoom:                      #        0x27080  0      OPC=<label>         
  pushq %r14                    #  1     0x27080  2      OPC=pushq_r64_1     
  pushq %r13                    #  2     0x27082  2      OPC=pushq_r64_1     
  pushq %r12                    #  3     0x27084  2      OPC=pushq_r64_1     
  pushq %rbx                    #  4     0x27086  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  5     0x27087  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  6     0x2708a  3      OPC=addq_r64_r64    
  movl %edi, %r12d              #  7     0x2708d  3      OPC=movl_r32_r32    
  movl %r12d, %r12d             #  8     0x27090  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %ebx      #  9     0x27093  4      OPC=movl_r32_m32    
  movl %r12d, %r12d             #  10    0x27097  3      OPC=movl_r32_r32    
  movl 0x8(%r15,%r12,1), %edx   #  11    0x2709a  5      OPC=movl_r32_m32    
  nop                           #  12    0x2709f  1      OPC=nop             
  movl %edx, %r14d              #  13    0x270a0  3      OPC=movl_r32_r32    
  movl %r12d, %r12d             #  14    0x270a3  3      OPC=movl_r32_r32    
  movl 0xc(%r15,%r12,1), %r13d  #  15    0x270a6  5      OPC=movl_r32_m32    
  leal 0x1(%r13), %eax          #  16    0x270ab  4      OPC=leal_r32_m16    
  subl %edx, %eax               #  17    0x270af  2      OPC=subl_r32_r32    
  movl %r12d, %r12d             #  18    0x270b1  3      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%r12,1), %eax   #  19    0x270b4  5      OPC=cmpl_r32_m32    
  jge .L_27140                  #  20    0x270b9  6      OPC=jge_label_1     
  nop                           #  21    0x270bf  1      OPC=nop             
.L_270c0:                       #        0x270c0  0      OPC=<label>         
  testl %edx, %edx              #  22    0x270c0  2      OPC=testl_r32_r32   
  je .L_27120                   #  23    0x270c2  2      OPC=je_label        
  leal (%rbx,%r14,4), %r14d     #  24    0x270c4  4      OPC=leal_r32_m16    
  leal (%rbx,%r13,4), %r13d     #  25    0x270c8  4      OPC=leal_r32_m16    
  cmpl %r13d, %r14d             #  26    0x270cc  3      OPC=cmpl_r32_r32    
  ja .L_27100                   #  27    0x270cf  2      OPC=ja_label        
  nop                           #  28    0x270d1  1      OPC=nop             
  nop                           #  29    0x270d2  1      OPC=nop             
  nop                           #  30    0x270d3  1      OPC=nop             
  nop                           #  31    0x270d4  1      OPC=nop             
  nop                           #  32    0x270d5  1      OPC=nop             
  nop                           #  33    0x270d6  1      OPC=nop             
  nop                           #  34    0x270d7  1      OPC=nop             
  nop                           #  35    0x270d8  1      OPC=nop             
  nop                           #  36    0x270d9  1      OPC=nop             
  nop                           #  37    0x270da  1      OPC=nop             
  nop                           #  38    0x270db  1      OPC=nop             
  nop                           #  39    0x270dc  1      OPC=nop             
  nop                           #  40    0x270dd  1      OPC=nop             
  nop                           #  41    0x270de  1      OPC=nop             
  nop                           #  42    0x270df  1      OPC=nop             
.L_270e0:                       #        0x270e0  0      OPC=<label>         
  movl %r14d, %r14d             #  43    0x270e0  3      OPC=movl_r32_r32    
  movl (%r15,%r14,1), %eax      #  44    0x270e3  4      OPC=movl_r32_m32    
  movl %ebx, %ebx               #  45    0x270e7  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)      #  46    0x270e9  4      OPC=movl_m32_r32    
  addl $0x4, %ebx               #  47    0x270ed  3      OPC=addl_r32_imm8   
  addl $0x4, %r14d              #  48    0x270f0  4      OPC=addl_r32_imm8   
  cmpl %r14d, %r13d             #  49    0x270f4  3      OPC=cmpl_r32_r32    
  jae .L_270e0                  #  50    0x270f7  2      OPC=jae_label       
  nop                           #  51    0x270f9  1      OPC=nop             
  nop                           #  52    0x270fa  1      OPC=nop             
  nop                           #  53    0x270fb  1      OPC=nop             
  nop                           #  54    0x270fc  1      OPC=nop             
  nop                           #  55    0x270fd  1      OPC=nop             
  nop                           #  56    0x270fe  1      OPC=nop             
  nop                           #  57    0x270ff  1      OPC=nop             
.L_27100:                       #        0x27100  0      OPC=<label>         
  movl %r12d, %r12d             #  58    0x27100  3      OPC=movl_r32_r32    
  subl %edx, 0xc(%r15,%r12,1)   #  59    0x27103  5      OPC=subl_m32_r32    
  movl %r12d, %r12d             #  60    0x27108  3      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%r12,1)   #  61    0x2710b  9      OPC=movl_m32_imm32  
  nop                           #  62    0x27114  1      OPC=nop             
  nop                           #  63    0x27115  1      OPC=nop             
  nop                           #  64    0x27116  1      OPC=nop             
  nop                           #  65    0x27117  1      OPC=nop             
  nop                           #  66    0x27118  1      OPC=nop             
  nop                           #  67    0x27119  1      OPC=nop             
  nop                           #  68    0x2711a  1      OPC=nop             
  nop                           #  69    0x2711b  1      OPC=nop             
  nop                           #  70    0x2711c  1      OPC=nop             
  nop                           #  71    0x2711d  1      OPC=nop             
  nop                           #  72    0x2711e  1      OPC=nop             
  nop                           #  73    0x2711f  1      OPC=nop             
.L_27120:                       #        0x27120  0      OPC=<label>         
  addl $0x8, %esp               #  74    0x27120  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  75    0x27123  3      OPC=addq_r64_r64    
  popq %rbx                     #  76    0x27126  1      OPC=popq_r64_1      
  popq %r12                     #  77    0x27127  2      OPC=popq_r64_1      
  popq %r13                     #  78    0x27129  2      OPC=popq_r64_1      
  popq %r14                     #  79    0x2712b  2      OPC=popq_r64_1      
  popq %r11                     #  80    0x2712d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  81    0x2712f  7      OPC=andl_r32_imm32  
  nop                           #  82    0x27136  1      OPC=nop             
  nop                           #  83    0x27137  1      OPC=nop             
  nop                           #  84    0x27138  1      OPC=nop             
  nop                           #  85    0x27139  1      OPC=nop             
  addq %r15, %r11               #  86    0x2713a  3      OPC=addq_r64_r64    
  jmpq %r11                     #  87    0x2713d  3      OPC=jmpq_r64        
  nop                           #  88    0x27140  1      OPC=nop             
  nop                           #  89    0x27141  1      OPC=nop             
  nop                           #  90    0x27142  1      OPC=nop             
  nop                           #  91    0x27143  1      OPC=nop             
  nop                           #  92    0x27144  1      OPC=nop             
  nop                           #  93    0x27145  1      OPC=nop             
  nop                           #  94    0x27146  1      OPC=nop             
.L_27140:                       #        0x27147  0      OPC=<label>         
  movl %r12d, %edi              #  95    0x27147  3      OPC=movl_r32_r32    
  nop                           #  96    0x2714a  1      OPC=nop             
  nop                           #  97    0x2714b  1      OPC=nop             
  nop                           #  98    0x2714c  1      OPC=nop             
  nop                           #  99    0x2714d  1      OPC=nop             
  nop                           #  100   0x2714e  1      OPC=nop             
  nop                           #  101   0x2714f  1      OPC=nop             
  nop                           #  102   0x27150  1      OPC=nop             
  nop                           #  103   0x27151  1      OPC=nop             
  nop                           #  104   0x27152  1      OPC=nop             
  nop                           #  105   0x27153  1      OPC=nop             
  nop                           #  106   0x27154  1      OPC=nop             
  nop                           #  107   0x27155  1      OPC=nop             
  nop                           #  108   0x27156  1      OPC=nop             
  nop                           #  109   0x27157  1      OPC=nop             
  nop                           #  110   0x27158  1      OPC=nop             
  nop                           #  111   0x27159  1      OPC=nop             
  nop                           #  112   0x2715a  1      OPC=nop             
  nop                           #  113   0x2715b  1      OPC=nop             
  nop                           #  114   0x2715c  1      OPC=nop             
  nop                           #  115   0x2715d  1      OPC=nop             
  nop                           #  116   0x2715e  1      OPC=nop             
  nop                           #  117   0x2715f  1      OPC=nop             
  nop                           #  118   0x27160  1      OPC=nop             
  nop                           #  119   0x27161  1      OPC=nop             
  callq .Grow                   #  120   0x27162  5      OPC=callq_label     
  movl %r12d, %r12d             #  121   0x27167  3      OPC=movl_r32_r32    
  movl 0x8(%r15,%r12,1), %edx   #  122   0x2716a  5      OPC=movl_r32_m32    
  jmpq .L_270c0                 #  123   0x2716f  5      OPC=jmpq_label_1    
  nop                           #  124   0x27174  1      OPC=nop             
  nop                           #  125   0x27175  1      OPC=nop             
  nop                           #  126   0x27176  1      OPC=nop             
  nop                           #  127   0x27177  1      OPC=nop             
  nop                           #  128   0x27178  1      OPC=nop             
  nop                           #  129   0x27179  1      OPC=nop             
  nop                           #  130   0x2717a  1      OPC=nop             
  nop                           #  131   0x2717b  1      OPC=nop             
  nop                           #  132   0x2717c  1      OPC=nop             
  nop                           #  133   0x2717d  1      OPC=nop             
  nop                           #  134   0x2717e  1      OPC=nop             
  nop                           #  135   0x2717f  1      OPC=nop             
  nop                           #  136   0x27180  1      OPC=nop             
  nop                           #  137   0x27181  1      OPC=nop             
  nop                           #  138   0x27182  1      OPC=nop             
  nop                           #  139   0x27183  1      OPC=nop             
  nop                           #  140   0x27184  1      OPC=nop             
  nop                           #  141   0x27185  1      OPC=nop             
  nop                           #  142   0x27186  1      OPC=nop             
                                                                             
.size MakeRoom, .-MakeRoom
