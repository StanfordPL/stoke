  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj, @function

#! file-offset 0x116980
#! rip-offset  0xd6980
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode                
._ZNKSbIwSt11char_traitsIwESaIwEE4findEwj:  #        0xd6980  0      OPC=<label>           
  movl %edi, %edi                           #  1     0xd6980  2      OPC=movl_r32_r32      
  pushq %rbx                                #  2     0xd6982  1      OPC=pushq_r64_1       
  movl %edi, %edi                           #  3     0xd6983  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ebx                  #  4     0xd6985  4      OPC=movl_r32_m32      
  leal -0xc(%rbx), %eax                     #  5     0xd6989  3      OPC=leal_r32_m16      
  movl %eax, %eax                           #  6     0xd698c  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax                  #  7     0xd698e  4      OPC=movl_r32_m32      
  cmpl %eax, %edx                           #  8     0xd6992  2      OPC=cmpl_r32_r32      
  jb .L_d69c0                               #  9     0xd6994  2      OPC=jb_label          
  nop                                       #  10    0xd6996  1      OPC=nop               
  nop                                       #  11    0xd6997  1      OPC=nop               
  nop                                       #  12    0xd6998  1      OPC=nop               
  nop                                       #  13    0xd6999  1      OPC=nop               
  nop                                       #  14    0xd699a  1      OPC=nop               
  nop                                       #  15    0xd699b  1      OPC=nop               
  nop                                       #  16    0xd699c  1      OPC=nop               
  nop                                       #  17    0xd699d  1      OPC=nop               
  nop                                       #  18    0xd699e  1      OPC=nop               
  nop                                       #  19    0xd699f  1      OPC=nop               
.L_d69a0:                                   #        0xd69a0  0      OPC=<label>           
  popq %rbx                                 #  20    0xd69a0  1      OPC=popq_r64_1        
  popq %r11                                 #  21    0xd69a1  2      OPC=popq_r64_1        
  movl $0xffffffff, %eax                    #  22    0xd69a3  6      OPC=movl_r32_imm32_1  
  andl $0xffffffe0, %r11d                   #  23    0xd69a9  7      OPC=andl_r32_imm32    
  nop                                       #  24    0xd69b0  1      OPC=nop               
  nop                                       #  25    0xd69b1  1      OPC=nop               
  nop                                       #  26    0xd69b2  1      OPC=nop               
  nop                                       #  27    0xd69b3  1      OPC=nop               
  addq %r15, %r11                           #  28    0xd69b4  3      OPC=addq_r64_r64      
  jmpq %r11                                 #  29    0xd69b7  3      OPC=jmpq_r64          
  nop                                       #  30    0xd69ba  1      OPC=nop               
  nop                                       #  31    0xd69bb  1      OPC=nop               
  nop                                       #  32    0xd69bc  1      OPC=nop               
  nop                                       #  33    0xd69bd  1      OPC=nop               
  nop                                       #  34    0xd69be  1      OPC=nop               
  nop                                       #  35    0xd69bf  1      OPC=nop               
  nop                                       #  36    0xd69c0  1      OPC=nop               
  nop                                       #  37    0xd69c1  1      OPC=nop               
  nop                                       #  38    0xd69c2  1      OPC=nop               
  nop                                       #  39    0xd69c3  1      OPC=nop               
  nop                                       #  40    0xd69c4  1      OPC=nop               
  nop                                       #  41    0xd69c5  1      OPC=nop               
  nop                                       #  42    0xd69c6  1      OPC=nop               
  nop                                       #  43    0xd69c7  1      OPC=nop               
.L_d69c0:                                   #        0xd69c8  0      OPC=<label>           
  subl %edx, %eax                           #  44    0xd69c8  2      OPC=subl_r32_r32      
  leal (%rbx,%rdx,4), %edi                  #  45    0xd69ca  3      OPC=leal_r32_m16      
  movl %eax, %edx                           #  46    0xd69cd  2      OPC=movl_r32_r32      
  nop                                       #  47    0xd69cf  1      OPC=nop               
  nop                                       #  48    0xd69d0  1      OPC=nop               
  nop                                       #  49    0xd69d1  1      OPC=nop               
  nop                                       #  50    0xd69d2  1      OPC=nop               
  nop                                       #  51    0xd69d3  1      OPC=nop               
  nop                                       #  52    0xd69d4  1      OPC=nop               
  nop                                       #  53    0xd69d5  1      OPC=nop               
  nop                                       #  54    0xd69d6  1      OPC=nop               
  nop                                       #  55    0xd69d7  1      OPC=nop               
  nop                                       #  56    0xd69d8  1      OPC=nop               
  nop                                       #  57    0xd69d9  1      OPC=nop               
  nop                                       #  58    0xd69da  1      OPC=nop               
  nop                                       #  59    0xd69db  1      OPC=nop               
  nop                                       #  60    0xd69dc  1      OPC=nop               
  nop                                       #  61    0xd69dd  1      OPC=nop               
  nop                                       #  62    0xd69de  1      OPC=nop               
  nop                                       #  63    0xd69df  1      OPC=nop               
  nop                                       #  64    0xd69e0  1      OPC=nop               
  nop                                       #  65    0xd69e1  1      OPC=nop               
  nop                                       #  66    0xd69e2  1      OPC=nop               
  callq .wmemchr                            #  67    0xd69e3  5      OPC=callq_label       
  movl %eax, %eax                           #  68    0xd69e8  2      OPC=movl_r32_r32      
  testq %rax, %rax                          #  69    0xd69ea  3      OPC=testq_r64_r64     
  je .L_d69a0                               #  70    0xd69ed  2      OPC=je_label          
  subl %ebx, %eax                           #  71    0xd69ef  2      OPC=subl_r32_r32      
  popq %rbx                                 #  72    0xd69f1  1      OPC=popq_r64_1        
  popq %r11                                 #  73    0xd69f2  2      OPC=popq_r64_1        
  sarl $0x2, %eax                           #  74    0xd69f4  3      OPC=sarl_r32_imm8     
  andl $0xffffffe0, %r11d                   #  75    0xd69f7  7      OPC=andl_r32_imm32    
  nop                                       #  76    0xd69fe  1      OPC=nop               
  nop                                       #  77    0xd69ff  1      OPC=nop               
  nop                                       #  78    0xd6a00  1      OPC=nop               
  nop                                       #  79    0xd6a01  1      OPC=nop               
  addq %r15, %r11                           #  80    0xd6a02  3      OPC=addq_r64_r64      
  jmpq %r11                                 #  81    0xd6a05  3      OPC=jmpq_r64          
  nop                                       #  82    0xd6a08  1      OPC=nop               
  nop                                       #  83    0xd6a09  1      OPC=nop               
  nop                                       #  84    0xd6a0a  1      OPC=nop               
  nop                                       #  85    0xd6a0b  1      OPC=nop               
  nop                                       #  86    0xd6a0c  1      OPC=nop               
  nop                                       #  87    0xd6a0d  1      OPC=nop               
  nop                                       #  88    0xd6a0e  1      OPC=nop               
                                                                                           
.size _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE4findEwj

