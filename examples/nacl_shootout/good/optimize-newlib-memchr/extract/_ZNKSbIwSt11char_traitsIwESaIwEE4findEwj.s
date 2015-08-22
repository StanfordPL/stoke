  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj, @function

#! file-offset 0x1170a0
#! rip-offset  0xd70a0
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode                
._ZNKSbIwSt11char_traitsIwESaIwEE4findEwj:  #        0xd70a0  0      OPC=<label>           
  movl %edi, %edi                           #  1     0xd70a0  2      OPC=movl_r32_r32      
  pushq %rbx                                #  2     0xd70a2  1      OPC=pushq_r64_1       
  movl %edi, %edi                           #  3     0xd70a3  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ebx                  #  4     0xd70a5  4      OPC=movl_r32_m32      
  leal -0xc(%rbx), %eax                     #  5     0xd70a9  3      OPC=leal_r32_m16      
  movl %eax, %eax                           #  6     0xd70ac  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax                  #  7     0xd70ae  4      OPC=movl_r32_m32      
  cmpl %eax, %edx                           #  8     0xd70b2  2      OPC=cmpl_r32_r32      
  jb .L_d70e0                               #  9     0xd70b4  2      OPC=jb_label          
  nop                                       #  10    0xd70b6  1      OPC=nop               
  nop                                       #  11    0xd70b7  1      OPC=nop               
  nop                                       #  12    0xd70b8  1      OPC=nop               
  nop                                       #  13    0xd70b9  1      OPC=nop               
  nop                                       #  14    0xd70ba  1      OPC=nop               
  nop                                       #  15    0xd70bb  1      OPC=nop               
  nop                                       #  16    0xd70bc  1      OPC=nop               
  nop                                       #  17    0xd70bd  1      OPC=nop               
  nop                                       #  18    0xd70be  1      OPC=nop               
  nop                                       #  19    0xd70bf  1      OPC=nop               
.L_d70c0:                                   #        0xd70c0  0      OPC=<label>           
  popq %rbx                                 #  20    0xd70c0  1      OPC=popq_r64_1        
  popq %r11                                 #  21    0xd70c1  2      OPC=popq_r64_1        
  movl $0xffffffff, %eax                    #  22    0xd70c3  6      OPC=movl_r32_imm32_1  
  andl $0xffffffe0, %r11d                   #  23    0xd70c9  7      OPC=andl_r32_imm32    
  nop                                       #  24    0xd70d0  1      OPC=nop               
  nop                                       #  25    0xd70d1  1      OPC=nop               
  nop                                       #  26    0xd70d2  1      OPC=nop               
  nop                                       #  27    0xd70d3  1      OPC=nop               
  addq %r15, %r11                           #  28    0xd70d4  3      OPC=addq_r64_r64      
  jmpq %r11                                 #  29    0xd70d7  3      OPC=jmpq_r64          
  nop                                       #  30    0xd70da  1      OPC=nop               
  nop                                       #  31    0xd70db  1      OPC=nop               
  nop                                       #  32    0xd70dc  1      OPC=nop               
  nop                                       #  33    0xd70dd  1      OPC=nop               
  nop                                       #  34    0xd70de  1      OPC=nop               
  nop                                       #  35    0xd70df  1      OPC=nop               
  nop                                       #  36    0xd70e0  1      OPC=nop               
  nop                                       #  37    0xd70e1  1      OPC=nop               
  nop                                       #  38    0xd70e2  1      OPC=nop               
  nop                                       #  39    0xd70e3  1      OPC=nop               
  nop                                       #  40    0xd70e4  1      OPC=nop               
  nop                                       #  41    0xd70e5  1      OPC=nop               
  nop                                       #  42    0xd70e6  1      OPC=nop               
  nop                                       #  43    0xd70e7  1      OPC=nop               
.L_d70e0:                                   #        0xd70e8  0      OPC=<label>           
  subl %edx, %eax                           #  44    0xd70e8  2      OPC=subl_r32_r32      
  leal (%rbx,%rdx,4), %edi                  #  45    0xd70ea  3      OPC=leal_r32_m16      
  movl %eax, %edx                           #  46    0xd70ed  2      OPC=movl_r32_r32      
  nop                                       #  47    0xd70ef  1      OPC=nop               
  nop                                       #  48    0xd70f0  1      OPC=nop               
  nop                                       #  49    0xd70f1  1      OPC=nop               
  nop                                       #  50    0xd70f2  1      OPC=nop               
  nop                                       #  51    0xd70f3  1      OPC=nop               
  nop                                       #  52    0xd70f4  1      OPC=nop               
  nop                                       #  53    0xd70f5  1      OPC=nop               
  nop                                       #  54    0xd70f6  1      OPC=nop               
  nop                                       #  55    0xd70f7  1      OPC=nop               
  nop                                       #  56    0xd70f8  1      OPC=nop               
  nop                                       #  57    0xd70f9  1      OPC=nop               
  nop                                       #  58    0xd70fa  1      OPC=nop               
  nop                                       #  59    0xd70fb  1      OPC=nop               
  nop                                       #  60    0xd70fc  1      OPC=nop               
  nop                                       #  61    0xd70fd  1      OPC=nop               
  nop                                       #  62    0xd70fe  1      OPC=nop               
  nop                                       #  63    0xd70ff  1      OPC=nop               
  nop                                       #  64    0xd7100  1      OPC=nop               
  nop                                       #  65    0xd7101  1      OPC=nop               
  nop                                       #  66    0xd7102  1      OPC=nop               
  callq .wmemchr                            #  67    0xd7103  5      OPC=callq_label       
  movl %eax, %eax                           #  68    0xd7108  2      OPC=movl_r32_r32      
  testq %rax, %rax                          #  69    0xd710a  3      OPC=testq_r64_r64     
  je .L_d70c0                               #  70    0xd710d  2      OPC=je_label          
  subl %ebx, %eax                           #  71    0xd710f  2      OPC=subl_r32_r32      
  popq %rbx                                 #  72    0xd7111  1      OPC=popq_r64_1        
  popq %r11                                 #  73    0xd7112  2      OPC=popq_r64_1        
  sarl $0x2, %eax                           #  74    0xd7114  3      OPC=sarl_r32_imm8     
  andl $0xffffffe0, %r11d                   #  75    0xd7117  7      OPC=andl_r32_imm32    
  nop                                       #  76    0xd711e  1      OPC=nop               
  nop                                       #  77    0xd711f  1      OPC=nop               
  nop                                       #  78    0xd7120  1      OPC=nop               
  nop                                       #  79    0xd7121  1      OPC=nop               
  addq %r15, %r11                           #  80    0xd7122  3      OPC=addq_r64_r64      
  jmpq %r11                                 #  81    0xd7125  3      OPC=jmpq_r64          
  nop                                       #  82    0xd7128  1      OPC=nop               
  nop                                       #  83    0xd7129  1      OPC=nop               
  nop                                       #  84    0xd712a  1      OPC=nop               
  nop                                       #  85    0xd712b  1      OPC=nop               
  nop                                       #  86    0xd712c  1      OPC=nop               
  nop                                       #  87    0xd712d  1      OPC=nop               
  nop                                       #  88    0xd712e  1      OPC=nop               
                                                                                           
.size _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE4findEwj

