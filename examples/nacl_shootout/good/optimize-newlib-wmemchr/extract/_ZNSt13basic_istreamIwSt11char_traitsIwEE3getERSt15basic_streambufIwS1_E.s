  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E, @function

#! file-offset 0xae820
#! rip-offset  0x6e820
#! capacity    160 bytes

# Text                                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E:         #        0x6e820  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                           #  1     0x6e820  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                                  #  2     0x6e825  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                            #  3     0x6e827  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                 #  4     0x6e82c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                  #  5     0x6e82f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                  #  6     0x6e832  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                         #  7     0x6e834  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                                                 #  8     0x6e838  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                                                  #  9     0x6e83b  3      OPC=subl_r32_imm8   
  xchgw %ax, %ax                                                                   #  10    0x6e83e  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                                                  #  11    0x6e840  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                         #  12    0x6e842  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                                                  #  13    0x6e846  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                                  #  14    0x6e848  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                                     #  15    0x6e84a  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                                 #  16    0x6e852  3      OPC=testq_r64_r64   
  je .L_6e8a0                                                                      #  17    0x6e855  2      OPC=je_label        
  movl %edi, %edi                                                                  #  18    0x6e857  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                         #  19    0x6e859  4      OPC=movl_r32_m32    
  nop                                                                              #  20    0x6e85d  1      OPC=nop             
  nop                                                                              #  21    0x6e85e  1      OPC=nop             
  nop                                                                              #  22    0x6e85f  1      OPC=nop             
  movl $0xa, %esi                                                                  #  23    0x6e860  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                                                  #  24    0x6e865  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                                     #  25    0x6e867  5      OPC=movl_r32_m32    
  nop                                                                              #  26    0x6e86c  1      OPC=nop             
  nop                                                                              #  27    0x6e86d  1      OPC=nop             
  nop                                                                              #  28    0x6e86e  1      OPC=nop             
  nop                                                                              #  29    0x6e86f  1      OPC=nop             
  nop                                                                              #  30    0x6e870  1      OPC=nop             
  nop                                                                              #  31    0x6e871  1      OPC=nop             
  nop                                                                              #  32    0x6e872  1      OPC=nop             
  nop                                                                              #  33    0x6e873  1      OPC=nop             
  nop                                                                              #  34    0x6e874  1      OPC=nop             
  nop                                                                              #  35    0x6e875  1      OPC=nop             
  nop                                                                              #  36    0x6e876  1      OPC=nop             
  nop                                                                              #  37    0x6e877  1      OPC=nop             
  andl $0xffffffe0, %eax                                                           #  38    0x6e878  6      OPC=andl_r32_imm32  
  nop                                                                              #  39    0x6e87e  1      OPC=nop             
  nop                                                                              #  40    0x6e87f  1      OPC=nop             
  nop                                                                              #  41    0x6e880  1      OPC=nop             
  addq %r15, %rax                                                                  #  42    0x6e881  3      OPC=addq_r64_r64    
  callq %rax                                                                       #  43    0x6e884  2      OPC=callq_r64       
  movl %r12d, %esi                                                                 #  44    0x6e886  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                  #  45    0x6e889  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                                            #  46    0x6e88b  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                             #  47    0x6e890  5      OPC=movq_r64_m64    
  movl %eax, %edx                                                                  #  48    0x6e895  2      OPC=movl_r32_r32    
  addl $0x18, %esp                                                                 #  49    0x6e897  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                  #  50    0x6e89a  3      OPC=addq_r64_r64    
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_Ew  #  51    0x6e89d  5      OPC=jmpq_label_1    
  nop                                                                              #  52    0x6e8a2  1      OPC=nop             
  nop                                                                              #  53    0x6e8a3  1      OPC=nop             
  nop                                                                              #  54    0x6e8a4  1      OPC=nop             
  nop                                                                              #  55    0x6e8a5  1      OPC=nop             
.L_6e8a0:                                                                          #        0x6e8a6  0      OPC=<label>         
  nop                                                                              #  56    0x6e8a6  1      OPC=nop             
  nop                                                                              #  57    0x6e8a7  1      OPC=nop             
  nop                                                                              #  58    0x6e8a8  1      OPC=nop             
  nop                                                                              #  59    0x6e8a9  1      OPC=nop             
  nop                                                                              #  60    0x6e8aa  1      OPC=nop             
  nop                                                                              #  61    0x6e8ab  1      OPC=nop             
  nop                                                                              #  62    0x6e8ac  1      OPC=nop             
  nop                                                                              #  63    0x6e8ad  1      OPC=nop             
  nop                                                                              #  64    0x6e8ae  1      OPC=nop             
  nop                                                                              #  65    0x6e8af  1      OPC=nop             
  nop                                                                              #  66    0x6e8b0  1      OPC=nop             
  nop                                                                              #  67    0x6e8b1  1      OPC=nop             
  nop                                                                              #  68    0x6e8b2  1      OPC=nop             
  nop                                                                              #  69    0x6e8b3  1      OPC=nop             
  nop                                                                              #  70    0x6e8b4  1      OPC=nop             
  nop                                                                              #  71    0x6e8b5  1      OPC=nop             
  nop                                                                              #  72    0x6e8b6  1      OPC=nop             
  nop                                                                              #  73    0x6e8b7  1      OPC=nop             
  nop                                                                              #  74    0x6e8b8  1      OPC=nop             
  nop                                                                              #  75    0x6e8b9  1      OPC=nop             
  nop                                                                              #  76    0x6e8ba  1      OPC=nop             
  nop                                                                              #  77    0x6e8bb  1      OPC=nop             
  nop                                                                              #  78    0x6e8bc  1      OPC=nop             
  nop                                                                              #  79    0x6e8bd  1      OPC=nop             
  nop                                                                              #  80    0x6e8be  1      OPC=nop             
  nop                                                                              #  81    0x6e8bf  1      OPC=nop             
  nop                                                                              #  82    0x6e8c0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                                   #  83    0x6e8c1  5      OPC=callq_label     
                                                                                                                                
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E

