  .text
  .globl _ZNSo8_M_writeEPKci
  .type _ZNSo8_M_writeEPKci, @function

#! file-offset 0xdd900
#! rip-offset  0x9d900
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSo8_M_writeEPKci:                                                #        0x9d900  0      OPC=<label>         
  pushq %r12                                                         #  1     0x9d900  2      OPC=pushq_r64_1     
  movl %edx, %r12d                                                   #  2     0x9d902  3      OPC=movl_r32_r32    
  movl %esi, %esi                                                    #  3     0x9d905  2      OPC=movl_r32_r32    
  pushq %rbx                                                         #  4     0x9d907  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  5     0x9d908  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                    #  6     0x9d90a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  7     0x9d90d  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                    #  8     0x9d910  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  9     0x9d912  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  10    0x9d916  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  11    0x9d919  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                           #  12    0x9d91b  4      OPC=movl_r32_m32    
  nop                                                                #  13    0x9d91f  1      OPC=nop             
  addl %ebx, %eax                                                    #  14    0x9d920  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                    #  15    0x9d922  2      OPC=movl_r32_r32    
  movl 0x78(%r15,%rax,1), %edi                                       #  16    0x9d924  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                    #  17    0x9d929  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                           #  18    0x9d92b  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                    #  19    0x9d92f  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                       #  20    0x9d931  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                     #  21    0x9d936  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %eax                                             #  22    0x9d938  6      OPC=andl_r32_imm32  
  nop                                                                #  23    0x9d93e  1      OPC=nop             
  nop                                                                #  24    0x9d93f  1      OPC=nop             
  nop                                                                #  25    0x9d940  1      OPC=nop             
  addq %r15, %rax                                                    #  26    0x9d941  3      OPC=addq_r64_r64    
  callq %rax                                                         #  27    0x9d944  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                   #  28    0x9d946  3      OPC=cmpl_r32_r32    
  je .L_9d980                                                        #  29    0x9d949  2      OPC=je_label        
  movl %ebx, %ebx                                                    #  30    0x9d94b  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  31    0x9d94d  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  32    0x9d951  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  33    0x9d954  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  34    0x9d956  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  35    0x9d95a  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  36    0x9d95c  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  37    0x9d95e  5      OPC=movl_r32_m32    
  nop                                                                #  38    0x9d963  1      OPC=nop             
  nop                                                                #  39    0x9d964  1      OPC=nop             
  nop                                                                #  40    0x9d965  1      OPC=nop             
  addl $0x8, %esp                                                    #  41    0x9d966  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  42    0x9d969  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  43    0x9d96c  1      OPC=popq_r64_1      
  popq %r12                                                          #  44    0x9d96d  2      OPC=popq_r64_1      
  orl $0x1, %esi                                                     #  45    0x9d96f  3      OPC=orl_r32_imm8    
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  46    0x9d972  5      OPC=jmpq_label_1    
  nop                                                                #  47    0x9d977  1      OPC=nop             
  nop                                                                #  48    0x9d978  1      OPC=nop             
  nop                                                                #  49    0x9d979  1      OPC=nop             
  nop                                                                #  50    0x9d97a  1      OPC=nop             
  nop                                                                #  51    0x9d97b  1      OPC=nop             
  nop                                                                #  52    0x9d97c  1      OPC=nop             
  nop                                                                #  53    0x9d97d  1      OPC=nop             
  nop                                                                #  54    0x9d97e  1      OPC=nop             
  nop                                                                #  55    0x9d97f  1      OPC=nop             
  nop                                                                #  56    0x9d980  1      OPC=nop             
  nop                                                                #  57    0x9d981  1      OPC=nop             
  nop                                                                #  58    0x9d982  1      OPC=nop             
  nop                                                                #  59    0x9d983  1      OPC=nop             
  nop                                                                #  60    0x9d984  1      OPC=nop             
  nop                                                                #  61    0x9d985  1      OPC=nop             
.L_9d980:                                                            #        0x9d986  0      OPC=<label>         
  addl $0x8, %esp                                                    #  62    0x9d986  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  63    0x9d989  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  64    0x9d98c  1      OPC=popq_r64_1      
  popq %r12                                                          #  65    0x9d98d  2      OPC=popq_r64_1      
  popq %r11                                                          #  66    0x9d98f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  67    0x9d991  7      OPC=andl_r32_imm32  
  nop                                                                #  68    0x9d998  1      OPC=nop             
  nop                                                                #  69    0x9d999  1      OPC=nop             
  nop                                                                #  70    0x9d99a  1      OPC=nop             
  nop                                                                #  71    0x9d99b  1      OPC=nop             
  addq %r15, %r11                                                    #  72    0x9d99c  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  73    0x9d99f  3      OPC=jmpq_r64        
  nop                                                                #  74    0x9d9a2  1      OPC=nop             
  nop                                                                #  75    0x9d9a3  1      OPC=nop             
  nop                                                                #  76    0x9d9a4  1      OPC=nop             
  nop                                                                #  77    0x9d9a5  1      OPC=nop             
  nop                                                                #  78    0x9d9a6  1      OPC=nop             
  nop                                                                #  79    0x9d9a7  1      OPC=nop             
  nop                                                                #  80    0x9d9a8  1      OPC=nop             
  nop                                                                #  81    0x9d9a9  1      OPC=nop             
  nop                                                                #  82    0x9d9aa  1      OPC=nop             
  nop                                                                #  83    0x9d9ab  1      OPC=nop             
  nop                                                                #  84    0x9d9ac  1      OPC=nop             
                                                                                                                  
.size _ZNSo8_M_writeEPKci, .-_ZNSo8_M_writeEPKci

