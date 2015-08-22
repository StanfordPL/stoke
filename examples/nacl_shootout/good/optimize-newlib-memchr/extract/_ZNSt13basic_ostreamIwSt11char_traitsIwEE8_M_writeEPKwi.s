  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi, @function

#! file-offset 0xde0c0
#! rip-offset  0x9e0c0
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi:            #        0x9e0c0  0      OPC=<label>         
  pushq %r12                                                         #  1     0x9e0c0  2      OPC=pushq_r64_1     
  movl %edx, %r12d                                                   #  2     0x9e0c2  3      OPC=movl_r32_r32    
  movl %esi, %esi                                                    #  3     0x9e0c5  2      OPC=movl_r32_r32    
  pushq %rbx                                                         #  4     0x9e0c7  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  5     0x9e0c8  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                    #  6     0x9e0ca  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  7     0x9e0cd  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                    #  8     0x9e0d0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  9     0x9e0d2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  10    0x9e0d6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  11    0x9e0d9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                           #  12    0x9e0db  4      OPC=movl_r32_m32    
  nop                                                                #  13    0x9e0df  1      OPC=nop             
  addl %ebx, %eax                                                    #  14    0x9e0e0  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                    #  15    0x9e0e2  2      OPC=movl_r32_r32    
  movl 0x7c(%r15,%rax,1), %edi                                       #  16    0x9e0e4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                    #  17    0x9e0e9  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                           #  18    0x9e0eb  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                    #  19    0x9e0ef  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                       #  20    0x9e0f1  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                     #  21    0x9e0f6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %eax                                             #  22    0x9e0f8  6      OPC=andl_r32_imm32  
  nop                                                                #  23    0x9e0fe  1      OPC=nop             
  nop                                                                #  24    0x9e0ff  1      OPC=nop             
  nop                                                                #  25    0x9e100  1      OPC=nop             
  addq %r15, %rax                                                    #  26    0x9e101  3      OPC=addq_r64_r64    
  callq %rax                                                         #  27    0x9e104  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                   #  28    0x9e106  3      OPC=cmpl_r32_r32    
  je .L_9e140                                                        #  29    0x9e109  2      OPC=je_label        
  movl %ebx, %ebx                                                    #  30    0x9e10b  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  31    0x9e10d  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  32    0x9e111  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  33    0x9e114  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  34    0x9e116  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  35    0x9e11a  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  36    0x9e11c  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  37    0x9e11e  5      OPC=movl_r32_m32    
  nop                                                                #  38    0x9e123  1      OPC=nop             
  nop                                                                #  39    0x9e124  1      OPC=nop             
  nop                                                                #  40    0x9e125  1      OPC=nop             
  addl $0x8, %esp                                                    #  41    0x9e126  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  42    0x9e129  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  43    0x9e12c  1      OPC=popq_r64_1      
  popq %r12                                                          #  44    0x9e12d  2      OPC=popq_r64_1      
  orl $0x1, %esi                                                     #  45    0x9e12f  3      OPC=orl_r32_imm8    
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  46    0x9e132  5      OPC=jmpq_label_1    
  nop                                                                #  47    0x9e137  1      OPC=nop             
  nop                                                                #  48    0x9e138  1      OPC=nop             
  nop                                                                #  49    0x9e139  1      OPC=nop             
  nop                                                                #  50    0x9e13a  1      OPC=nop             
  nop                                                                #  51    0x9e13b  1      OPC=nop             
  nop                                                                #  52    0x9e13c  1      OPC=nop             
  nop                                                                #  53    0x9e13d  1      OPC=nop             
  nop                                                                #  54    0x9e13e  1      OPC=nop             
  nop                                                                #  55    0x9e13f  1      OPC=nop             
  nop                                                                #  56    0x9e140  1      OPC=nop             
  nop                                                                #  57    0x9e141  1      OPC=nop             
  nop                                                                #  58    0x9e142  1      OPC=nop             
  nop                                                                #  59    0x9e143  1      OPC=nop             
  nop                                                                #  60    0x9e144  1      OPC=nop             
  nop                                                                #  61    0x9e145  1      OPC=nop             
.L_9e140:                                                            #        0x9e146  0      OPC=<label>         
  addl $0x8, %esp                                                    #  62    0x9e146  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  63    0x9e149  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  64    0x9e14c  1      OPC=popq_r64_1      
  popq %r12                                                          #  65    0x9e14d  2      OPC=popq_r64_1      
  popq %r11                                                          #  66    0x9e14f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  67    0x9e151  7      OPC=andl_r32_imm32  
  nop                                                                #  68    0x9e158  1      OPC=nop             
  nop                                                                #  69    0x9e159  1      OPC=nop             
  nop                                                                #  70    0x9e15a  1      OPC=nop             
  nop                                                                #  71    0x9e15b  1      OPC=nop             
  addq %r15, %r11                                                    #  72    0x9e15c  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  73    0x9e15f  3      OPC=jmpq_r64        
  nop                                                                #  74    0x9e162  1      OPC=nop             
  nop                                                                #  75    0x9e163  1      OPC=nop             
  nop                                                                #  76    0x9e164  1      OPC=nop             
  nop                                                                #  77    0x9e165  1      OPC=nop             
  nop                                                                #  78    0x9e166  1      OPC=nop             
  nop                                                                #  79    0x9e167  1      OPC=nop             
  nop                                                                #  80    0x9e168  1      OPC=nop             
  nop                                                                #  81    0x9e169  1      OPC=nop             
  nop                                                                #  82    0x9e16a  1      OPC=nop             
  nop                                                                #  83    0x9e16b  1      OPC=nop             
  nop                                                                #  84    0x9e16c  1      OPC=nop             
                                                                                                                  
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi

