  .text
  .globl _ZNKSt5ctypeIcE5widenEc
  .type _ZNKSt5ctypeIcE5widenEc, @function

#! file-offset 0xba6a0
#! rip-offset  0x7a6a0
#! capacity    192 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE5widenEc:                  #        0x7a6a0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                   #  1     0x7a6a0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                          #  2     0x7a6a5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                    #  3     0x7a6a7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                         #  4     0x7a6ac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  5     0x7a6af  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                          #  6     0x7a6b2  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x1c(%r15,%rbx,1)             #  7     0x7a6b4  6      OPC=cmpb_m8_imm8    
  movl %esi, %r12d                         #  8     0x7a6ba  3      OPC=movl_r32_r32    
  nop                                      #  9     0x7a6bd  1      OPC=nop             
  nop                                      #  10    0x7a6be  1      OPC=nop             
  nop                                      #  11    0x7a6bf  1      OPC=nop             
  je .L_7a700                              #  12    0x7a6c0  2      OPC=je_label        
  movzbl %sil, %r12d                       #  13    0x7a6c2  4      OPC=movzbl_r32_r8   
  leaq 0x10(%rbx,%r12,1), %rax             #  14    0x7a6c6  5      OPC=leaq_r64_m16    
  movq 0x8(%rsp), %rbx                     #  15    0x7a6cb  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                    #  16    0x7a6d0  5      OPC=movq_r64_m64    
  movl %eax, %eax                          #  17    0x7a6d5  2      OPC=movl_r32_r32    
  movzbl 0xd(%r15,%rax,1), %eax            #  18    0x7a6d7  6      OPC=movzbl_r32_m8   
  nop                                      #  19    0x7a6dd  1      OPC=nop             
  nop                                      #  20    0x7a6de  1      OPC=nop             
  nop                                      #  21    0x7a6df  1      OPC=nop             
  addl $0x18, %esp                         #  22    0x7a6e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  23    0x7a6e3  3      OPC=addq_r64_r64    
  popq %r11                                #  24    0x7a6e6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  25    0x7a6e8  7      OPC=andl_r32_imm32  
  nop                                      #  26    0x7a6ef  1      OPC=nop             
  nop                                      #  27    0x7a6f0  1      OPC=nop             
  nop                                      #  28    0x7a6f1  1      OPC=nop             
  nop                                      #  29    0x7a6f2  1      OPC=nop             
  addq %r15, %r11                          #  30    0x7a6f3  3      OPC=addq_r64_r64    
  jmpq %r11                                #  31    0x7a6f6  3      OPC=jmpq_r64        
  nop                                      #  32    0x7a6f9  1      OPC=nop             
  nop                                      #  33    0x7a6fa  1      OPC=nop             
  nop                                      #  34    0x7a6fb  1      OPC=nop             
  nop                                      #  35    0x7a6fc  1      OPC=nop             
  nop                                      #  36    0x7a6fd  1      OPC=nop             
  nop                                      #  37    0x7a6fe  1      OPC=nop             
  nop                                      #  38    0x7a6ff  1      OPC=nop             
  nop                                      #  39    0x7a700  1      OPC=nop             
  nop                                      #  40    0x7a701  1      OPC=nop             
  nop                                      #  41    0x7a702  1      OPC=nop             
  nop                                      #  42    0x7a703  1      OPC=nop             
  nop                                      #  43    0x7a704  1      OPC=nop             
  nop                                      #  44    0x7a705  1      OPC=nop             
  nop                                      #  45    0x7a706  1      OPC=nop             
.L_7a700:                                  #        0x7a707  0      OPC=<label>         
  movl %ebx, %edi                          #  46    0x7a707  2      OPC=movl_r32_r32    
  nop                                      #  47    0x7a709  1      OPC=nop             
  nop                                      #  48    0x7a70a  1      OPC=nop             
  nop                                      #  49    0x7a70b  1      OPC=nop             
  nop                                      #  50    0x7a70c  1      OPC=nop             
  nop                                      #  51    0x7a70d  1      OPC=nop             
  nop                                      #  52    0x7a70e  1      OPC=nop             
  nop                                      #  53    0x7a70f  1      OPC=nop             
  nop                                      #  54    0x7a710  1      OPC=nop             
  nop                                      #  55    0x7a711  1      OPC=nop             
  nop                                      #  56    0x7a712  1      OPC=nop             
  nop                                      #  57    0x7a713  1      OPC=nop             
  nop                                      #  58    0x7a714  1      OPC=nop             
  nop                                      #  59    0x7a715  1      OPC=nop             
  nop                                      #  60    0x7a716  1      OPC=nop             
  nop                                      #  61    0x7a717  1      OPC=nop             
  nop                                      #  62    0x7a718  1      OPC=nop             
  nop                                      #  63    0x7a719  1      OPC=nop             
  nop                                      #  64    0x7a71a  1      OPC=nop             
  nop                                      #  65    0x7a71b  1      OPC=nop             
  nop                                      #  66    0x7a71c  1      OPC=nop             
  nop                                      #  67    0x7a71d  1      OPC=nop             
  nop                                      #  68    0x7a71e  1      OPC=nop             
  nop                                      #  69    0x7a71f  1      OPC=nop             
  nop                                      #  70    0x7a720  1      OPC=nop             
  nop                                      #  71    0x7a721  1      OPC=nop             
  callq ._ZNKSt5ctypeIcE13_M_widen_initEv  #  72    0x7a722  5      OPC=callq_label     
  movl %ebx, %ebx                          #  73    0x7a727  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                 #  74    0x7a729  4      OPC=movl_r32_m32    
  movsbl %r12b, %esi                       #  75    0x7a72d  4      OPC=movsbl_r32_r8   
  movl %ebx, %edi                          #  76    0x7a731  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                    #  77    0x7a733  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                     #  78    0x7a738  5      OPC=movq_r64_m64    
  movl %eax, %eax                          #  79    0x7a73d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax             #  80    0x7a73f  5      OPC=movl_r32_m32    
  nop                                      #  81    0x7a744  1      OPC=nop             
  nop                                      #  82    0x7a745  1      OPC=nop             
  nop                                      #  83    0x7a746  1      OPC=nop             
  addl $0x18, %esp                         #  84    0x7a747  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  85    0x7a74a  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                   #  86    0x7a74d  6      OPC=andl_r32_imm32  
  nop                                      #  87    0x7a753  1      OPC=nop             
  nop                                      #  88    0x7a754  1      OPC=nop             
  nop                                      #  89    0x7a755  1      OPC=nop             
  addq %r15, %rax                          #  90    0x7a756  3      OPC=addq_r64_r64    
  jmpq %rax                                #  91    0x7a759  2      OPC=jmpq_r64        
  nop                                      #  92    0x7a75b  1      OPC=nop             
  nop                                      #  93    0x7a75c  1      OPC=nop             
  nop                                      #  94    0x7a75d  1      OPC=nop             
  nop                                      #  95    0x7a75e  1      OPC=nop             
  nop                                      #  96    0x7a75f  1      OPC=nop             
  nop                                      #  97    0x7a760  1      OPC=nop             
  nop                                      #  98    0x7a761  1      OPC=nop             
  nop                                      #  99    0x7a762  1      OPC=nop             
  nop                                      #  100   0x7a763  1      OPC=nop             
  nop                                      #  101   0x7a764  1      OPC=nop             
  nop                                      #  102   0x7a765  1      OPC=nop             
  nop                                      #  103   0x7a766  1      OPC=nop             
  nop                                      #  104   0x7a767  1      OPC=nop             
  nop                                      #  105   0x7a768  1      OPC=nop             
  nop                                      #  106   0x7a769  1      OPC=nop             
  nop                                      #  107   0x7a76a  1      OPC=nop             
  nop                                      #  108   0x7a76b  1      OPC=nop             
  nop                                      #  109   0x7a76c  1      OPC=nop             
                                                                                        
.size _ZNKSt5ctypeIcE5widenEc, .-_ZNKSt5ctypeIcE5widenEc

