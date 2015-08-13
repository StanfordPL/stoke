  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi, @function

#! file-offset 0xdd6a0
#! rip-offset  0x9d6a0
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi:            #        0x9d6a0  0      OPC=<label>         
  pushq %r12                                                         #  1     0x9d6a0  2      OPC=pushq_r64_1     
  movl %edx, %r12d                                                   #  2     0x9d6a2  3      OPC=movl_r32_r32    
  movl %esi, %esi                                                    #  3     0x9d6a5  2      OPC=movl_r32_r32    
  pushq %rbx                                                         #  4     0x9d6a7  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  5     0x9d6a8  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                    #  6     0x9d6aa  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  7     0x9d6ad  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                    #  8     0x9d6b0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  9     0x9d6b2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  10    0x9d6b6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  11    0x9d6b9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                           #  12    0x9d6bb  4      OPC=movl_r32_m32    
  nop                                                                #  13    0x9d6bf  1      OPC=nop             
  addl %ebx, %eax                                                    #  14    0x9d6c0  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                    #  15    0x9d6c2  2      OPC=movl_r32_r32    
  movl 0x7c(%r15,%rax,1), %edi                                       #  16    0x9d6c4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                    #  17    0x9d6c9  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                           #  18    0x9d6cb  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                    #  19    0x9d6cf  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                       #  20    0x9d6d1  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                     #  21    0x9d6d6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %eax                                             #  22    0x9d6d8  6      OPC=andl_r32_imm32  
  nop                                                                #  23    0x9d6de  1      OPC=nop             
  nop                                                                #  24    0x9d6df  1      OPC=nop             
  nop                                                                #  25    0x9d6e0  1      OPC=nop             
  addq %r15, %rax                                                    #  26    0x9d6e1  3      OPC=addq_r64_r64    
  callq %rax                                                         #  27    0x9d6e4  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                   #  28    0x9d6e6  3      OPC=cmpl_r32_r32    
  je .L_9d720                                                        #  29    0x9d6e9  2      OPC=je_label        
  movl %ebx, %ebx                                                    #  30    0x9d6eb  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  31    0x9d6ed  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  32    0x9d6f1  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  33    0x9d6f4  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  34    0x9d6f6  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  35    0x9d6fa  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  36    0x9d6fc  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  37    0x9d6fe  5      OPC=movl_r32_m32    
  nop                                                                #  38    0x9d703  1      OPC=nop             
  nop                                                                #  39    0x9d704  1      OPC=nop             
  nop                                                                #  40    0x9d705  1      OPC=nop             
  addl $0x8, %esp                                                    #  41    0x9d706  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  42    0x9d709  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  43    0x9d70c  1      OPC=popq_r64_1      
  popq %r12                                                          #  44    0x9d70d  2      OPC=popq_r64_1      
  orl $0x1, %esi                                                     #  45    0x9d70f  3      OPC=orl_r32_imm8    
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  46    0x9d712  5      OPC=jmpq_label_1    
  nop                                                                #  47    0x9d717  1      OPC=nop             
  nop                                                                #  48    0x9d718  1      OPC=nop             
  nop                                                                #  49    0x9d719  1      OPC=nop             
  nop                                                                #  50    0x9d71a  1      OPC=nop             
  nop                                                                #  51    0x9d71b  1      OPC=nop             
  nop                                                                #  52    0x9d71c  1      OPC=nop             
  nop                                                                #  53    0x9d71d  1      OPC=nop             
  nop                                                                #  54    0x9d71e  1      OPC=nop             
  nop                                                                #  55    0x9d71f  1      OPC=nop             
  nop                                                                #  56    0x9d720  1      OPC=nop             
  nop                                                                #  57    0x9d721  1      OPC=nop             
  nop                                                                #  58    0x9d722  1      OPC=nop             
  nop                                                                #  59    0x9d723  1      OPC=nop             
  nop                                                                #  60    0x9d724  1      OPC=nop             
  nop                                                                #  61    0x9d725  1      OPC=nop             
.L_9d720:                                                            #        0x9d726  0      OPC=<label>         
  addl $0x8, %esp                                                    #  62    0x9d726  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  63    0x9d729  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  64    0x9d72c  1      OPC=popq_r64_1      
  popq %r12                                                          #  65    0x9d72d  2      OPC=popq_r64_1      
  popq %r11                                                          #  66    0x9d72f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  67    0x9d731  7      OPC=andl_r32_imm32  
  nop                                                                #  68    0x9d738  1      OPC=nop             
  nop                                                                #  69    0x9d739  1      OPC=nop             
  nop                                                                #  70    0x9d73a  1      OPC=nop             
  nop                                                                #  71    0x9d73b  1      OPC=nop             
  addq %r15, %r11                                                    #  72    0x9d73c  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  73    0x9d73f  3      OPC=jmpq_r64        
  nop                                                                #  74    0x9d742  1      OPC=nop             
  nop                                                                #  75    0x9d743  1      OPC=nop             
  nop                                                                #  76    0x9d744  1      OPC=nop             
  nop                                                                #  77    0x9d745  1      OPC=nop             
  nop                                                                #  78    0x9d746  1      OPC=nop             
  nop                                                                #  79    0x9d747  1      OPC=nop             
  nop                                                                #  80    0x9d748  1      OPC=nop             
  nop                                                                #  81    0x9d749  1      OPC=nop             
  nop                                                                #  82    0x9d74a  1      OPC=nop             
  nop                                                                #  83    0x9d74b  1      OPC=nop             
  nop                                                                #  84    0x9d74c  1      OPC=nop             
                                                                                                                  
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi

