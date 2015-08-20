  .text
  .globl _ZNKSt5ctypeIcE5widenEc
  .type _ZNKSt5ctypeIcE5widenEc, @function

#! file-offset 0xb9f80
#! rip-offset  0x79f80
#! capacity    192 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE5widenEc:                  #        0x79f80  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                   #  1     0x79f80  5      OPC=movq_m64_r64    
  movl %edi, %ebx                          #  2     0x79f85  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                    #  3     0x79f87  5      OPC=movq_m64_r64    
  subl $0x18, %esp                         #  4     0x79f8c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  5     0x79f8f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                          #  6     0x79f92  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x1c(%r15,%rbx,1)             #  7     0x79f94  6      OPC=cmpb_m8_imm8    
  movl %esi, %r12d                         #  8     0x79f9a  3      OPC=movl_r32_r32    
  nop                                      #  9     0x79f9d  1      OPC=nop             
  nop                                      #  10    0x79f9e  1      OPC=nop             
  nop                                      #  11    0x79f9f  1      OPC=nop             
  je .L_79fe0                              #  12    0x79fa0  2      OPC=je_label        
  movzbl %sil, %r12d                       #  13    0x79fa2  4      OPC=movzbl_r32_r8   
  leaq 0x10(%rbx,%r12,1), %rax             #  14    0x79fa6  5      OPC=leaq_r64_m16    
  movq 0x8(%rsp), %rbx                     #  15    0x79fab  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                    #  16    0x79fb0  5      OPC=movq_r64_m64    
  movl %eax, %eax                          #  17    0x79fb5  2      OPC=movl_r32_r32    
  movzbl 0xd(%r15,%rax,1), %eax            #  18    0x79fb7  6      OPC=movzbl_r32_m8   
  nop                                      #  19    0x79fbd  1      OPC=nop             
  nop                                      #  20    0x79fbe  1      OPC=nop             
  nop                                      #  21    0x79fbf  1      OPC=nop             
  addl $0x18, %esp                         #  22    0x79fc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  23    0x79fc3  3      OPC=addq_r64_r64    
  popq %r11                                #  24    0x79fc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  25    0x79fc8  7      OPC=andl_r32_imm32  
  nop                                      #  26    0x79fcf  1      OPC=nop             
  nop                                      #  27    0x79fd0  1      OPC=nop             
  nop                                      #  28    0x79fd1  1      OPC=nop             
  nop                                      #  29    0x79fd2  1      OPC=nop             
  addq %r15, %r11                          #  30    0x79fd3  3      OPC=addq_r64_r64    
  jmpq %r11                                #  31    0x79fd6  3      OPC=jmpq_r64        
  nop                                      #  32    0x79fd9  1      OPC=nop             
  nop                                      #  33    0x79fda  1      OPC=nop             
  nop                                      #  34    0x79fdb  1      OPC=nop             
  nop                                      #  35    0x79fdc  1      OPC=nop             
  nop                                      #  36    0x79fdd  1      OPC=nop             
  nop                                      #  37    0x79fde  1      OPC=nop             
  nop                                      #  38    0x79fdf  1      OPC=nop             
  nop                                      #  39    0x79fe0  1      OPC=nop             
  nop                                      #  40    0x79fe1  1      OPC=nop             
  nop                                      #  41    0x79fe2  1      OPC=nop             
  nop                                      #  42    0x79fe3  1      OPC=nop             
  nop                                      #  43    0x79fe4  1      OPC=nop             
  nop                                      #  44    0x79fe5  1      OPC=nop             
  nop                                      #  45    0x79fe6  1      OPC=nop             
.L_79fe0:                                  #        0x79fe7  0      OPC=<label>         
  movl %ebx, %edi                          #  46    0x79fe7  2      OPC=movl_r32_r32    
  nop                                      #  47    0x79fe9  1      OPC=nop             
  nop                                      #  48    0x79fea  1      OPC=nop             
  nop                                      #  49    0x79feb  1      OPC=nop             
  nop                                      #  50    0x79fec  1      OPC=nop             
  nop                                      #  51    0x79fed  1      OPC=nop             
  nop                                      #  52    0x79fee  1      OPC=nop             
  nop                                      #  53    0x79fef  1      OPC=nop             
  nop                                      #  54    0x79ff0  1      OPC=nop             
  nop                                      #  55    0x79ff1  1      OPC=nop             
  nop                                      #  56    0x79ff2  1      OPC=nop             
  nop                                      #  57    0x79ff3  1      OPC=nop             
  nop                                      #  58    0x79ff4  1      OPC=nop             
  nop                                      #  59    0x79ff5  1      OPC=nop             
  nop                                      #  60    0x79ff6  1      OPC=nop             
  nop                                      #  61    0x79ff7  1      OPC=nop             
  nop                                      #  62    0x79ff8  1      OPC=nop             
  nop                                      #  63    0x79ff9  1      OPC=nop             
  nop                                      #  64    0x79ffa  1      OPC=nop             
  nop                                      #  65    0x79ffb  1      OPC=nop             
  nop                                      #  66    0x79ffc  1      OPC=nop             
  nop                                      #  67    0x79ffd  1      OPC=nop             
  nop                                      #  68    0x79ffe  1      OPC=nop             
  nop                                      #  69    0x79fff  1      OPC=nop             
  nop                                      #  70    0x7a000  1      OPC=nop             
  nop                                      #  71    0x7a001  1      OPC=nop             
  callq ._ZNKSt5ctypeIcE13_M_widen_initEv  #  72    0x7a002  5      OPC=callq_label     
  movl %ebx, %ebx                          #  73    0x7a007  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                 #  74    0x7a009  4      OPC=movl_r32_m32    
  movsbl %r12b, %esi                       #  75    0x7a00d  4      OPC=movsbl_r32_r8   
  movl %ebx, %edi                          #  76    0x7a011  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                    #  77    0x7a013  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                     #  78    0x7a018  5      OPC=movq_r64_m64    
  movl %eax, %eax                          #  79    0x7a01d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax             #  80    0x7a01f  5      OPC=movl_r32_m32    
  nop                                      #  81    0x7a024  1      OPC=nop             
  nop                                      #  82    0x7a025  1      OPC=nop             
  nop                                      #  83    0x7a026  1      OPC=nop             
  addl $0x18, %esp                         #  84    0x7a027  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  85    0x7a02a  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                   #  86    0x7a02d  6      OPC=andl_r32_imm32  
  nop                                      #  87    0x7a033  1      OPC=nop             
  nop                                      #  88    0x7a034  1      OPC=nop             
  nop                                      #  89    0x7a035  1      OPC=nop             
  addq %r15, %rax                          #  90    0x7a036  3      OPC=addq_r64_r64    
  jmpq %rax                                #  91    0x7a039  2      OPC=jmpq_r64        
  nop                                      #  92    0x7a03b  1      OPC=nop             
  nop                                      #  93    0x7a03c  1      OPC=nop             
  nop                                      #  94    0x7a03d  1      OPC=nop             
  nop                                      #  95    0x7a03e  1      OPC=nop             
  nop                                      #  96    0x7a03f  1      OPC=nop             
  nop                                      #  97    0x7a040  1      OPC=nop             
  nop                                      #  98    0x7a041  1      OPC=nop             
  nop                                      #  99    0x7a042  1      OPC=nop             
  nop                                      #  100   0x7a043  1      OPC=nop             
  nop                                      #  101   0x7a044  1      OPC=nop             
  nop                                      #  102   0x7a045  1      OPC=nop             
  nop                                      #  103   0x7a046  1      OPC=nop             
  nop                                      #  104   0x7a047  1      OPC=nop             
  nop                                      #  105   0x7a048  1      OPC=nop             
  nop                                      #  106   0x7a049  1      OPC=nop             
  nop                                      #  107   0x7a04a  1      OPC=nop             
  nop                                      #  108   0x7a04b  1      OPC=nop             
  nop                                      #  109   0x7a04c  1      OPC=nop             
                                                                                        
.size _ZNKSt5ctypeIcE5widenEc, .-_ZNKSt5ctypeIcE5widenEc

