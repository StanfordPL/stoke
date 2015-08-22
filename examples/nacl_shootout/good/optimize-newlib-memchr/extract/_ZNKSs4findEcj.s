  .text
  .globl _ZNKSs4findEcj
  .type _ZNKSs4findEcj, @function

#! file-offset 0xeb7e0
#! rip-offset  0xab7e0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode                
._ZNKSs4findEcj:            #        0xab7e0  0      OPC=<label>           
  movl %edi, %edi           #  1     0xab7e0  2      OPC=movl_r32_r32      
  pushq %rbx                #  2     0xab7e2  1      OPC=pushq_r64_1       
  movl %edi, %edi           #  3     0xab7e3  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ebx  #  4     0xab7e5  4      OPC=movl_r32_m32      
  leal -0xc(%rbx), %eax     #  5     0xab7e9  3      OPC=leal_r32_m16      
  movl %eax, %eax           #  6     0xab7ec  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax  #  7     0xab7ee  4      OPC=movl_r32_m32      
  cmpl %eax, %edx           #  8     0xab7f2  2      OPC=cmpl_r32_r32      
  jb .L_ab820               #  9     0xab7f4  2      OPC=jb_label          
  nop                       #  10    0xab7f6  1      OPC=nop               
  nop                       #  11    0xab7f7  1      OPC=nop               
  nop                       #  12    0xab7f8  1      OPC=nop               
  nop                       #  13    0xab7f9  1      OPC=nop               
  nop                       #  14    0xab7fa  1      OPC=nop               
  nop                       #  15    0xab7fb  1      OPC=nop               
  nop                       #  16    0xab7fc  1      OPC=nop               
  nop                       #  17    0xab7fd  1      OPC=nop               
  nop                       #  18    0xab7fe  1      OPC=nop               
  nop                       #  19    0xab7ff  1      OPC=nop               
.L_ab800:                   #        0xab800  0      OPC=<label>           
  popq %rbx                 #  20    0xab800  1      OPC=popq_r64_1        
  popq %r11                 #  21    0xab801  2      OPC=popq_r64_1        
  movl $0xffffffff, %eax    #  22    0xab803  6      OPC=movl_r32_imm32_1  
  andl $0xffffffe0, %r11d   #  23    0xab809  7      OPC=andl_r32_imm32    
  nop                       #  24    0xab810  1      OPC=nop               
  nop                       #  25    0xab811  1      OPC=nop               
  nop                       #  26    0xab812  1      OPC=nop               
  nop                       #  27    0xab813  1      OPC=nop               
  addq %r15, %r11           #  28    0xab814  3      OPC=addq_r64_r64      
  jmpq %r11                 #  29    0xab817  3      OPC=jmpq_r64          
  nop                       #  30    0xab81a  1      OPC=nop               
  nop                       #  31    0xab81b  1      OPC=nop               
  nop                       #  32    0xab81c  1      OPC=nop               
  nop                       #  33    0xab81d  1      OPC=nop               
  nop                       #  34    0xab81e  1      OPC=nop               
  nop                       #  35    0xab81f  1      OPC=nop               
  nop                       #  36    0xab820  1      OPC=nop               
  nop                       #  37    0xab821  1      OPC=nop               
  nop                       #  38    0xab822  1      OPC=nop               
  nop                       #  39    0xab823  1      OPC=nop               
  nop                       #  40    0xab824  1      OPC=nop               
  nop                       #  41    0xab825  1      OPC=nop               
  nop                       #  42    0xab826  1      OPC=nop               
  nop                       #  43    0xab827  1      OPC=nop               
.L_ab820:                   #        0xab828  0      OPC=<label>           
  subl %edx, %eax           #  44    0xab828  2      OPC=subl_r32_r32      
  leal (%rdx,%rbx,1), %edi  #  45    0xab82a  3      OPC=leal_r32_m16      
  movsbl %sil, %esi         #  46    0xab82d  4      OPC=movsbl_r32_r8     
  movl %eax, %edx           #  47    0xab831  2      OPC=movl_r32_r32      
  nop                       #  48    0xab833  1      OPC=nop               
  nop                       #  49    0xab834  1      OPC=nop               
  nop                       #  50    0xab835  1      OPC=nop               
  nop                       #  51    0xab836  1      OPC=nop               
  nop                       #  52    0xab837  1      OPC=nop               
  nop                       #  53    0xab838  1      OPC=nop               
  nop                       #  54    0xab839  1      OPC=nop               
  nop                       #  55    0xab83a  1      OPC=nop               
  nop                       #  56    0xab83b  1      OPC=nop               
  nop                       #  57    0xab83c  1      OPC=nop               
  nop                       #  58    0xab83d  1      OPC=nop               
  nop                       #  59    0xab83e  1      OPC=nop               
  nop                       #  60    0xab83f  1      OPC=nop               
  nop                       #  61    0xab840  1      OPC=nop               
  nop                       #  62    0xab841  1      OPC=nop               
  nop                       #  63    0xab842  1      OPC=nop               
  callq .memchr             #  64    0xab843  5      OPC=callq_label       
  movl %eax, %eax           #  65    0xab848  2      OPC=movl_r32_r32      
  testq %rax, %rax          #  66    0xab84a  3      OPC=testq_r64_r64     
  je .L_ab800               #  67    0xab84d  2      OPC=je_label          
  subl %ebx, %eax           #  68    0xab84f  2      OPC=subl_r32_r32      
  popq %rbx                 #  69    0xab851  1      OPC=popq_r64_1        
  popq %r11                 #  70    0xab852  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d   #  71    0xab854  7      OPC=andl_r32_imm32    
  nop                       #  72    0xab85b  1      OPC=nop               
  nop                       #  73    0xab85c  1      OPC=nop               
  nop                       #  74    0xab85d  1      OPC=nop               
  nop                       #  75    0xab85e  1      OPC=nop               
  addq %r15, %r11           #  76    0xab85f  3      OPC=addq_r64_r64      
  jmpq %r11                 #  77    0xab862  3      OPC=jmpq_r64          
  nop                       #  78    0xab865  1      OPC=nop               
  nop                       #  79    0xab866  1      OPC=nop               
  nop                       #  80    0xab867  1      OPC=nop               
  nop                       #  81    0xab868  1      OPC=nop               
  nop                       #  82    0xab869  1      OPC=nop               
  nop                       #  83    0xab86a  1      OPC=nop               
  nop                       #  84    0xab86b  1      OPC=nop               
  nop                       #  85    0xab86c  1      OPC=nop               
  nop                       #  86    0xab86d  1      OPC=nop               
  nop                       #  87    0xab86e  1      OPC=nop               
                                                                           
.size _ZNKSs4findEcj, .-_ZNKSs4findEcj

