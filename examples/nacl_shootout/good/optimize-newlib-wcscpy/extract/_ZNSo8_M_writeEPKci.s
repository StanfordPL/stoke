  .text
  .globl _ZNSo8_M_writeEPKci
  .type _ZNSo8_M_writeEPKci, @function

#! file-offset 0xdd600
#! rip-offset  0x9d600
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSo8_M_writeEPKci:                                                #        0x9d600  0      OPC=<label>         
  pushq %r12                                                         #  1     0x9d600  2      OPC=pushq_r64_1     
  movl %edx, %r12d                                                   #  2     0x9d602  3      OPC=movl_r32_r32    
  movl %esi, %esi                                                    #  3     0x9d605  2      OPC=movl_r32_r32    
  pushq %rbx                                                         #  4     0x9d607  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  5     0x9d608  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                    #  6     0x9d60a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  7     0x9d60d  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                    #  8     0x9d610  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  9     0x9d612  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  10    0x9d616  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  11    0x9d619  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                           #  12    0x9d61b  4      OPC=movl_r32_m32    
  nop                                                                #  13    0x9d61f  1      OPC=nop             
  addl %ebx, %eax                                                    #  14    0x9d620  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                    #  15    0x9d622  2      OPC=movl_r32_r32    
  movl 0x78(%r15,%rax,1), %edi                                       #  16    0x9d624  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                    #  17    0x9d629  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                           #  18    0x9d62b  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                    #  19    0x9d62f  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                       #  20    0x9d631  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                     #  21    0x9d636  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %eax                                             #  22    0x9d638  6      OPC=andl_r32_imm32  
  nop                                                                #  23    0x9d63e  1      OPC=nop             
  nop                                                                #  24    0x9d63f  1      OPC=nop             
  nop                                                                #  25    0x9d640  1      OPC=nop             
  addq %r15, %rax                                                    #  26    0x9d641  3      OPC=addq_r64_r64    
  callq %rax                                                         #  27    0x9d644  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                   #  28    0x9d646  3      OPC=cmpl_r32_r32    
  je .L_9d680                                                        #  29    0x9d649  2      OPC=je_label        
  movl %ebx, %ebx                                                    #  30    0x9d64b  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  31    0x9d64d  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  32    0x9d651  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  33    0x9d654  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  34    0x9d656  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  35    0x9d65a  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  36    0x9d65c  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  37    0x9d65e  5      OPC=movl_r32_m32    
  nop                                                                #  38    0x9d663  1      OPC=nop             
  nop                                                                #  39    0x9d664  1      OPC=nop             
  nop                                                                #  40    0x9d665  1      OPC=nop             
  addl $0x8, %esp                                                    #  41    0x9d666  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  42    0x9d669  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  43    0x9d66c  1      OPC=popq_r64_1      
  popq %r12                                                          #  44    0x9d66d  2      OPC=popq_r64_1      
  orl $0x1, %esi                                                     #  45    0x9d66f  3      OPC=orl_r32_imm8    
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  46    0x9d672  5      OPC=jmpq_label_1    
  nop                                                                #  47    0x9d677  1      OPC=nop             
  nop                                                                #  48    0x9d678  1      OPC=nop             
  nop                                                                #  49    0x9d679  1      OPC=nop             
  nop                                                                #  50    0x9d67a  1      OPC=nop             
  nop                                                                #  51    0x9d67b  1      OPC=nop             
  nop                                                                #  52    0x9d67c  1      OPC=nop             
  nop                                                                #  53    0x9d67d  1      OPC=nop             
  nop                                                                #  54    0x9d67e  1      OPC=nop             
  nop                                                                #  55    0x9d67f  1      OPC=nop             
  nop                                                                #  56    0x9d680  1      OPC=nop             
  nop                                                                #  57    0x9d681  1      OPC=nop             
  nop                                                                #  58    0x9d682  1      OPC=nop             
  nop                                                                #  59    0x9d683  1      OPC=nop             
  nop                                                                #  60    0x9d684  1      OPC=nop             
  nop                                                                #  61    0x9d685  1      OPC=nop             
.L_9d680:                                                            #        0x9d686  0      OPC=<label>         
  addl $0x8, %esp                                                    #  62    0x9d686  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  63    0x9d689  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  64    0x9d68c  1      OPC=popq_r64_1      
  popq %r12                                                          #  65    0x9d68d  2      OPC=popq_r64_1      
  popq %r11                                                          #  66    0x9d68f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  67    0x9d691  7      OPC=andl_r32_imm32  
  nop                                                                #  68    0x9d698  1      OPC=nop             
  nop                                                                #  69    0x9d699  1      OPC=nop             
  nop                                                                #  70    0x9d69a  1      OPC=nop             
  nop                                                                #  71    0x9d69b  1      OPC=nop             
  addq %r15, %r11                                                    #  72    0x9d69c  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  73    0x9d69f  3      OPC=jmpq_r64        
  nop                                                                #  74    0x9d6a2  1      OPC=nop             
  nop                                                                #  75    0x9d6a3  1      OPC=nop             
  nop                                                                #  76    0x9d6a4  1      OPC=nop             
  nop                                                                #  77    0x9d6a5  1      OPC=nop             
  nop                                                                #  78    0x9d6a6  1      OPC=nop             
  nop                                                                #  79    0x9d6a7  1      OPC=nop             
  nop                                                                #  80    0x9d6a8  1      OPC=nop             
  nop                                                                #  81    0x9d6a9  1      OPC=nop             
  nop                                                                #  82    0x9d6aa  1      OPC=nop             
  nop                                                                #  83    0x9d6ab  1      OPC=nop             
  nop                                                                #  84    0x9d6ac  1      OPC=nop             
                                                                                                                  
.size _ZNSo8_M_writeEPKci, .-_ZNSo8_M_writeEPKci

