  .text
  .globl _ZNKSt5ctypeIcE5widenEc
  .type _ZNKSt5ctypeIcE5widenEc, @function

#! file-offset 0xb9c80
#! rip-offset  0x79c80
#! capacity    192 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE5widenEc:                  #        0x79c80  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                   #  1     0x79c80  5      OPC=movq_m64_r64    
  movl %edi, %ebx                          #  2     0x79c85  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                    #  3     0x79c87  5      OPC=movq_m64_r64    
  subl $0x18, %esp                         #  4     0x79c8c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  5     0x79c8f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                          #  6     0x79c92  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x1c(%r15,%rbx,1)             #  7     0x79c94  6      OPC=cmpb_m8_imm8    
  movl %esi, %r12d                         #  8     0x79c9a  3      OPC=movl_r32_r32    
  nop                                      #  9     0x79c9d  1      OPC=nop             
  nop                                      #  10    0x79c9e  1      OPC=nop             
  nop                                      #  11    0x79c9f  1      OPC=nop             
  je .L_79ce0                              #  12    0x79ca0  2      OPC=je_label        
  movzbl %sil, %r12d                       #  13    0x79ca2  4      OPC=movzbl_r32_r8   
  leaq 0x10(%rbx,%r12,1), %rax             #  14    0x79ca6  5      OPC=leaq_r64_m16    
  movq 0x8(%rsp), %rbx                     #  15    0x79cab  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                    #  16    0x79cb0  5      OPC=movq_r64_m64    
  movl %eax, %eax                          #  17    0x79cb5  2      OPC=movl_r32_r32    
  movzbl 0xd(%r15,%rax,1), %eax            #  18    0x79cb7  6      OPC=movzbl_r32_m8   
  nop                                      #  19    0x79cbd  1      OPC=nop             
  nop                                      #  20    0x79cbe  1      OPC=nop             
  nop                                      #  21    0x79cbf  1      OPC=nop             
  addl $0x18, %esp                         #  22    0x79cc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  23    0x79cc3  3      OPC=addq_r64_r64    
  popq %r11                                #  24    0x79cc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  25    0x79cc8  7      OPC=andl_r32_imm32  
  nop                                      #  26    0x79ccf  1      OPC=nop             
  nop                                      #  27    0x79cd0  1      OPC=nop             
  nop                                      #  28    0x79cd1  1      OPC=nop             
  nop                                      #  29    0x79cd2  1      OPC=nop             
  addq %r15, %r11                          #  30    0x79cd3  3      OPC=addq_r64_r64    
  jmpq %r11                                #  31    0x79cd6  3      OPC=jmpq_r64        
  nop                                      #  32    0x79cd9  1      OPC=nop             
  nop                                      #  33    0x79cda  1      OPC=nop             
  nop                                      #  34    0x79cdb  1      OPC=nop             
  nop                                      #  35    0x79cdc  1      OPC=nop             
  nop                                      #  36    0x79cdd  1      OPC=nop             
  nop                                      #  37    0x79cde  1      OPC=nop             
  nop                                      #  38    0x79cdf  1      OPC=nop             
  nop                                      #  39    0x79ce0  1      OPC=nop             
  nop                                      #  40    0x79ce1  1      OPC=nop             
  nop                                      #  41    0x79ce2  1      OPC=nop             
  nop                                      #  42    0x79ce3  1      OPC=nop             
  nop                                      #  43    0x79ce4  1      OPC=nop             
  nop                                      #  44    0x79ce5  1      OPC=nop             
  nop                                      #  45    0x79ce6  1      OPC=nop             
.L_79ce0:                                  #        0x79ce7  0      OPC=<label>         
  movl %ebx, %edi                          #  46    0x79ce7  2      OPC=movl_r32_r32    
  nop                                      #  47    0x79ce9  1      OPC=nop             
  nop                                      #  48    0x79cea  1      OPC=nop             
  nop                                      #  49    0x79ceb  1      OPC=nop             
  nop                                      #  50    0x79cec  1      OPC=nop             
  nop                                      #  51    0x79ced  1      OPC=nop             
  nop                                      #  52    0x79cee  1      OPC=nop             
  nop                                      #  53    0x79cef  1      OPC=nop             
  nop                                      #  54    0x79cf0  1      OPC=nop             
  nop                                      #  55    0x79cf1  1      OPC=nop             
  nop                                      #  56    0x79cf2  1      OPC=nop             
  nop                                      #  57    0x79cf3  1      OPC=nop             
  nop                                      #  58    0x79cf4  1      OPC=nop             
  nop                                      #  59    0x79cf5  1      OPC=nop             
  nop                                      #  60    0x79cf6  1      OPC=nop             
  nop                                      #  61    0x79cf7  1      OPC=nop             
  nop                                      #  62    0x79cf8  1      OPC=nop             
  nop                                      #  63    0x79cf9  1      OPC=nop             
  nop                                      #  64    0x79cfa  1      OPC=nop             
  nop                                      #  65    0x79cfb  1      OPC=nop             
  nop                                      #  66    0x79cfc  1      OPC=nop             
  nop                                      #  67    0x79cfd  1      OPC=nop             
  nop                                      #  68    0x79cfe  1      OPC=nop             
  nop                                      #  69    0x79cff  1      OPC=nop             
  nop                                      #  70    0x79d00  1      OPC=nop             
  nop                                      #  71    0x79d01  1      OPC=nop             
  callq ._ZNKSt5ctypeIcE13_M_widen_initEv  #  72    0x79d02  5      OPC=callq_label     
  movl %ebx, %ebx                          #  73    0x79d07  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                 #  74    0x79d09  4      OPC=movl_r32_m32    
  movsbl %r12b, %esi                       #  75    0x79d0d  4      OPC=movsbl_r32_r8   
  movl %ebx, %edi                          #  76    0x79d11  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                    #  77    0x79d13  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                     #  78    0x79d18  5      OPC=movq_r64_m64    
  movl %eax, %eax                          #  79    0x79d1d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax             #  80    0x79d1f  5      OPC=movl_r32_m32    
  nop                                      #  81    0x79d24  1      OPC=nop             
  nop                                      #  82    0x79d25  1      OPC=nop             
  nop                                      #  83    0x79d26  1      OPC=nop             
  addl $0x18, %esp                         #  84    0x79d27  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  85    0x79d2a  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                   #  86    0x79d2d  6      OPC=andl_r32_imm32  
  nop                                      #  87    0x79d33  1      OPC=nop             
  nop                                      #  88    0x79d34  1      OPC=nop             
  nop                                      #  89    0x79d35  1      OPC=nop             
  addq %r15, %rax                          #  90    0x79d36  3      OPC=addq_r64_r64    
  jmpq %rax                                #  91    0x79d39  2      OPC=jmpq_r64        
  nop                                      #  92    0x79d3b  1      OPC=nop             
  nop                                      #  93    0x79d3c  1      OPC=nop             
  nop                                      #  94    0x79d3d  1      OPC=nop             
  nop                                      #  95    0x79d3e  1      OPC=nop             
  nop                                      #  96    0x79d3f  1      OPC=nop             
  nop                                      #  97    0x79d40  1      OPC=nop             
  nop                                      #  98    0x79d41  1      OPC=nop             
  nop                                      #  99    0x79d42  1      OPC=nop             
  nop                                      #  100   0x79d43  1      OPC=nop             
  nop                                      #  101   0x79d44  1      OPC=nop             
  nop                                      #  102   0x79d45  1      OPC=nop             
  nop                                      #  103   0x79d46  1      OPC=nop             
  nop                                      #  104   0x79d47  1      OPC=nop             
  nop                                      #  105   0x79d48  1      OPC=nop             
  nop                                      #  106   0x79d49  1      OPC=nop             
  nop                                      #  107   0x79d4a  1      OPC=nop             
  nop                                      #  108   0x79d4b  1      OPC=nop             
  nop                                      #  109   0x79d4c  1      OPC=nop             
                                                                                        
.size _ZNKSt5ctypeIcE5widenEc, .-_ZNKSt5ctypeIcE5widenEc

