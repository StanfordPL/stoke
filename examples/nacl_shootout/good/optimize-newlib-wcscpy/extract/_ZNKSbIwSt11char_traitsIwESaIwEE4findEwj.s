  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj, @function

#! file-offset 0x116680
#! rip-offset  0xd6680
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode                
._ZNKSbIwSt11char_traitsIwESaIwEE4findEwj:  #        0xd6680  0      OPC=<label>           
  movl %edi, %edi                           #  1     0xd6680  2      OPC=movl_r32_r32      
  pushq %rbx                                #  2     0xd6682  1      OPC=pushq_r64_1       
  movl %edi, %edi                           #  3     0xd6683  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ebx                  #  4     0xd6685  4      OPC=movl_r32_m32      
  leal -0xc(%rbx), %eax                     #  5     0xd6689  3      OPC=leal_r32_m16      
  movl %eax, %eax                           #  6     0xd668c  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax                  #  7     0xd668e  4      OPC=movl_r32_m32      
  cmpl %eax, %edx                           #  8     0xd6692  2      OPC=cmpl_r32_r32      
  jb .L_d66c0                               #  9     0xd6694  2      OPC=jb_label          
  nop                                       #  10    0xd6696  1      OPC=nop               
  nop                                       #  11    0xd6697  1      OPC=nop               
  nop                                       #  12    0xd6698  1      OPC=nop               
  nop                                       #  13    0xd6699  1      OPC=nop               
  nop                                       #  14    0xd669a  1      OPC=nop               
  nop                                       #  15    0xd669b  1      OPC=nop               
  nop                                       #  16    0xd669c  1      OPC=nop               
  nop                                       #  17    0xd669d  1      OPC=nop               
  nop                                       #  18    0xd669e  1      OPC=nop               
  nop                                       #  19    0xd669f  1      OPC=nop               
.L_d66a0:                                   #        0xd66a0  0      OPC=<label>           
  popq %rbx                                 #  20    0xd66a0  1      OPC=popq_r64_1        
  popq %r11                                 #  21    0xd66a1  2      OPC=popq_r64_1        
  movl $0xffffffff, %eax                    #  22    0xd66a3  6      OPC=movl_r32_imm32_1  
  andl $0xffffffe0, %r11d                   #  23    0xd66a9  7      OPC=andl_r32_imm32    
  nop                                       #  24    0xd66b0  1      OPC=nop               
  nop                                       #  25    0xd66b1  1      OPC=nop               
  nop                                       #  26    0xd66b2  1      OPC=nop               
  nop                                       #  27    0xd66b3  1      OPC=nop               
  addq %r15, %r11                           #  28    0xd66b4  3      OPC=addq_r64_r64      
  jmpq %r11                                 #  29    0xd66b7  3      OPC=jmpq_r64          
  nop                                       #  30    0xd66ba  1      OPC=nop               
  nop                                       #  31    0xd66bb  1      OPC=nop               
  nop                                       #  32    0xd66bc  1      OPC=nop               
  nop                                       #  33    0xd66bd  1      OPC=nop               
  nop                                       #  34    0xd66be  1      OPC=nop               
  nop                                       #  35    0xd66bf  1      OPC=nop               
  nop                                       #  36    0xd66c0  1      OPC=nop               
  nop                                       #  37    0xd66c1  1      OPC=nop               
  nop                                       #  38    0xd66c2  1      OPC=nop               
  nop                                       #  39    0xd66c3  1      OPC=nop               
  nop                                       #  40    0xd66c4  1      OPC=nop               
  nop                                       #  41    0xd66c5  1      OPC=nop               
  nop                                       #  42    0xd66c6  1      OPC=nop               
  nop                                       #  43    0xd66c7  1      OPC=nop               
.L_d66c0:                                   #        0xd66c8  0      OPC=<label>           
  subl %edx, %eax                           #  44    0xd66c8  2      OPC=subl_r32_r32      
  leal (%rbx,%rdx,4), %edi                  #  45    0xd66ca  3      OPC=leal_r32_m16      
  movl %eax, %edx                           #  46    0xd66cd  2      OPC=movl_r32_r32      
  nop                                       #  47    0xd66cf  1      OPC=nop               
  nop                                       #  48    0xd66d0  1      OPC=nop               
  nop                                       #  49    0xd66d1  1      OPC=nop               
  nop                                       #  50    0xd66d2  1      OPC=nop               
  nop                                       #  51    0xd66d3  1      OPC=nop               
  nop                                       #  52    0xd66d4  1      OPC=nop               
  nop                                       #  53    0xd66d5  1      OPC=nop               
  nop                                       #  54    0xd66d6  1      OPC=nop               
  nop                                       #  55    0xd66d7  1      OPC=nop               
  nop                                       #  56    0xd66d8  1      OPC=nop               
  nop                                       #  57    0xd66d9  1      OPC=nop               
  nop                                       #  58    0xd66da  1      OPC=nop               
  nop                                       #  59    0xd66db  1      OPC=nop               
  nop                                       #  60    0xd66dc  1      OPC=nop               
  nop                                       #  61    0xd66dd  1      OPC=nop               
  nop                                       #  62    0xd66de  1      OPC=nop               
  nop                                       #  63    0xd66df  1      OPC=nop               
  nop                                       #  64    0xd66e0  1      OPC=nop               
  nop                                       #  65    0xd66e1  1      OPC=nop               
  nop                                       #  66    0xd66e2  1      OPC=nop               
  callq .wmemchr                            #  67    0xd66e3  5      OPC=callq_label       
  movl %eax, %eax                           #  68    0xd66e8  2      OPC=movl_r32_r32      
  testq %rax, %rax                          #  69    0xd66ea  3      OPC=testq_r64_r64     
  je .L_d66a0                               #  70    0xd66ed  2      OPC=je_label          
  subl %ebx, %eax                           #  71    0xd66ef  2      OPC=subl_r32_r32      
  popq %rbx                                 #  72    0xd66f1  1      OPC=popq_r64_1        
  popq %r11                                 #  73    0xd66f2  2      OPC=popq_r64_1        
  sarl $0x2, %eax                           #  74    0xd66f4  3      OPC=sarl_r32_imm8     
  andl $0xffffffe0, %r11d                   #  75    0xd66f7  7      OPC=andl_r32_imm32    
  nop                                       #  76    0xd66fe  1      OPC=nop               
  nop                                       #  77    0xd66ff  1      OPC=nop               
  nop                                       #  78    0xd6700  1      OPC=nop               
  nop                                       #  79    0xd6701  1      OPC=nop               
  addq %r15, %r11                           #  80    0xd6702  3      OPC=addq_r64_r64      
  jmpq %r11                                 #  81    0xd6705  3      OPC=jmpq_r64          
  nop                                       #  82    0xd6708  1      OPC=nop               
  nop                                       #  83    0xd6709  1      OPC=nop               
  nop                                       #  84    0xd670a  1      OPC=nop               
  nop                                       #  85    0xd670b  1      OPC=nop               
  nop                                       #  86    0xd670c  1      OPC=nop               
  nop                                       #  87    0xd670d  1      OPC=nop               
  nop                                       #  88    0xd670e  1      OPC=nop               
                                                                                           
.size _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE4findEwj

