  .text
  .globl _ZNKSs4findEcj
  .type _ZNKSs4findEcj, @function

#! file-offset 0xeb0c0
#! rip-offset  0xab0c0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode                
._ZNKSs4findEcj:            #        0xab0c0  0      OPC=<label>           
  movl %edi, %edi           #  1     0xab0c0  2      OPC=movl_r32_r32      
  pushq %rbx                #  2     0xab0c2  1      OPC=pushq_r64_1       
  movl %edi, %edi           #  3     0xab0c3  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ebx  #  4     0xab0c5  4      OPC=movl_r32_m32      
  leal -0xc(%rbx), %eax     #  5     0xab0c9  3      OPC=leal_r32_m16      
  movl %eax, %eax           #  6     0xab0cc  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax  #  7     0xab0ce  4      OPC=movl_r32_m32      
  cmpl %eax, %edx           #  8     0xab0d2  2      OPC=cmpl_r32_r32      
  jb .L_ab100               #  9     0xab0d4  2      OPC=jb_label          
  nop                       #  10    0xab0d6  1      OPC=nop               
  nop                       #  11    0xab0d7  1      OPC=nop               
  nop                       #  12    0xab0d8  1      OPC=nop               
  nop                       #  13    0xab0d9  1      OPC=nop               
  nop                       #  14    0xab0da  1      OPC=nop               
  nop                       #  15    0xab0db  1      OPC=nop               
  nop                       #  16    0xab0dc  1      OPC=nop               
  nop                       #  17    0xab0dd  1      OPC=nop               
  nop                       #  18    0xab0de  1      OPC=nop               
  nop                       #  19    0xab0df  1      OPC=nop               
.L_ab0e0:                   #        0xab0e0  0      OPC=<label>           
  popq %rbx                 #  20    0xab0e0  1      OPC=popq_r64_1        
  popq %r11                 #  21    0xab0e1  2      OPC=popq_r64_1        
  movl $0xffffffff, %eax    #  22    0xab0e3  6      OPC=movl_r32_imm32_1  
  andl $0xffffffe0, %r11d   #  23    0xab0e9  7      OPC=andl_r32_imm32    
  nop                       #  24    0xab0f0  1      OPC=nop               
  nop                       #  25    0xab0f1  1      OPC=nop               
  nop                       #  26    0xab0f2  1      OPC=nop               
  nop                       #  27    0xab0f3  1      OPC=nop               
  addq %r15, %r11           #  28    0xab0f4  3      OPC=addq_r64_r64      
  jmpq %r11                 #  29    0xab0f7  3      OPC=jmpq_r64          
  nop                       #  30    0xab0fa  1      OPC=nop               
  nop                       #  31    0xab0fb  1      OPC=nop               
  nop                       #  32    0xab0fc  1      OPC=nop               
  nop                       #  33    0xab0fd  1      OPC=nop               
  nop                       #  34    0xab0fe  1      OPC=nop               
  nop                       #  35    0xab0ff  1      OPC=nop               
  nop                       #  36    0xab100  1      OPC=nop               
  nop                       #  37    0xab101  1      OPC=nop               
  nop                       #  38    0xab102  1      OPC=nop               
  nop                       #  39    0xab103  1      OPC=nop               
  nop                       #  40    0xab104  1      OPC=nop               
  nop                       #  41    0xab105  1      OPC=nop               
  nop                       #  42    0xab106  1      OPC=nop               
  nop                       #  43    0xab107  1      OPC=nop               
.L_ab100:                   #        0xab108  0      OPC=<label>           
  subl %edx, %eax           #  44    0xab108  2      OPC=subl_r32_r32      
  leal (%rdx,%rbx,1), %edi  #  45    0xab10a  3      OPC=leal_r32_m16      
  movsbl %sil, %esi         #  46    0xab10d  4      OPC=movsbl_r32_r8     
  movl %eax, %edx           #  47    0xab111  2      OPC=movl_r32_r32      
  nop                       #  48    0xab113  1      OPC=nop               
  nop                       #  49    0xab114  1      OPC=nop               
  nop                       #  50    0xab115  1      OPC=nop               
  nop                       #  51    0xab116  1      OPC=nop               
  nop                       #  52    0xab117  1      OPC=nop               
  nop                       #  53    0xab118  1      OPC=nop               
  nop                       #  54    0xab119  1      OPC=nop               
  nop                       #  55    0xab11a  1      OPC=nop               
  nop                       #  56    0xab11b  1      OPC=nop               
  nop                       #  57    0xab11c  1      OPC=nop               
  nop                       #  58    0xab11d  1      OPC=nop               
  nop                       #  59    0xab11e  1      OPC=nop               
  nop                       #  60    0xab11f  1      OPC=nop               
  nop                       #  61    0xab120  1      OPC=nop               
  nop                       #  62    0xab121  1      OPC=nop               
  nop                       #  63    0xab122  1      OPC=nop               
  callq .memchr             #  64    0xab123  5      OPC=callq_label       
  movl %eax, %eax           #  65    0xab128  2      OPC=movl_r32_r32      
  testq %rax, %rax          #  66    0xab12a  3      OPC=testq_r64_r64     
  je .L_ab0e0               #  67    0xab12d  2      OPC=je_label          
  subl %ebx, %eax           #  68    0xab12f  2      OPC=subl_r32_r32      
  popq %rbx                 #  69    0xab131  1      OPC=popq_r64_1        
  popq %r11                 #  70    0xab132  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d   #  71    0xab134  7      OPC=andl_r32_imm32    
  nop                       #  72    0xab13b  1      OPC=nop               
  nop                       #  73    0xab13c  1      OPC=nop               
  nop                       #  74    0xab13d  1      OPC=nop               
  nop                       #  75    0xab13e  1      OPC=nop               
  addq %r15, %r11           #  76    0xab13f  3      OPC=addq_r64_r64      
  jmpq %r11                 #  77    0xab142  3      OPC=jmpq_r64          
  nop                       #  78    0xab145  1      OPC=nop               
  nop                       #  79    0xab146  1      OPC=nop               
  nop                       #  80    0xab147  1      OPC=nop               
  nop                       #  81    0xab148  1      OPC=nop               
  nop                       #  82    0xab149  1      OPC=nop               
  nop                       #  83    0xab14a  1      OPC=nop               
  nop                       #  84    0xab14b  1      OPC=nop               
  nop                       #  85    0xab14c  1      OPC=nop               
  nop                       #  86    0xab14d  1      OPC=nop               
  nop                       #  87    0xab14e  1      OPC=nop               
                                                                           
.size _ZNKSs4findEcj, .-_ZNKSs4findEcj

