  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi, @function

#! file-offset 0xdd9a0
#! rip-offset  0x9d9a0
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi:            #        0x9d9a0  0      OPC=<label>         
  pushq %r12                                                         #  1     0x9d9a0  2      OPC=pushq_r64_1     
  movl %edx, %r12d                                                   #  2     0x9d9a2  3      OPC=movl_r32_r32    
  movl %esi, %esi                                                    #  3     0x9d9a5  2      OPC=movl_r32_r32    
  pushq %rbx                                                         #  4     0x9d9a7  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  5     0x9d9a8  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                    #  6     0x9d9aa  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  7     0x9d9ad  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                    #  8     0x9d9b0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  9     0x9d9b2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  10    0x9d9b6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  11    0x9d9b9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                           #  12    0x9d9bb  4      OPC=movl_r32_m32    
  nop                                                                #  13    0x9d9bf  1      OPC=nop             
  addl %ebx, %eax                                                    #  14    0x9d9c0  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                    #  15    0x9d9c2  2      OPC=movl_r32_r32    
  movl 0x7c(%r15,%rax,1), %edi                                       #  16    0x9d9c4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                    #  17    0x9d9c9  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                           #  18    0x9d9cb  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                    #  19    0x9d9cf  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                       #  20    0x9d9d1  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                     #  21    0x9d9d6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %eax                                             #  22    0x9d9d8  6      OPC=andl_r32_imm32  
  nop                                                                #  23    0x9d9de  1      OPC=nop             
  nop                                                                #  24    0x9d9df  1      OPC=nop             
  nop                                                                #  25    0x9d9e0  1      OPC=nop             
  addq %r15, %rax                                                    #  26    0x9d9e1  3      OPC=addq_r64_r64    
  callq %rax                                                         #  27    0x9d9e4  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                   #  28    0x9d9e6  3      OPC=cmpl_r32_r32    
  je .L_9da20                                                        #  29    0x9d9e9  2      OPC=je_label        
  movl %ebx, %ebx                                                    #  30    0x9d9eb  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  31    0x9d9ed  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  32    0x9d9f1  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  33    0x9d9f4  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  34    0x9d9f6  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  35    0x9d9fa  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  36    0x9d9fc  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  37    0x9d9fe  5      OPC=movl_r32_m32    
  nop                                                                #  38    0x9da03  1      OPC=nop             
  nop                                                                #  39    0x9da04  1      OPC=nop             
  nop                                                                #  40    0x9da05  1      OPC=nop             
  addl $0x8, %esp                                                    #  41    0x9da06  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  42    0x9da09  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  43    0x9da0c  1      OPC=popq_r64_1      
  popq %r12                                                          #  44    0x9da0d  2      OPC=popq_r64_1      
  orl $0x1, %esi                                                     #  45    0x9da0f  3      OPC=orl_r32_imm8    
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  46    0x9da12  5      OPC=jmpq_label_1    
  nop                                                                #  47    0x9da17  1      OPC=nop             
  nop                                                                #  48    0x9da18  1      OPC=nop             
  nop                                                                #  49    0x9da19  1      OPC=nop             
  nop                                                                #  50    0x9da1a  1      OPC=nop             
  nop                                                                #  51    0x9da1b  1      OPC=nop             
  nop                                                                #  52    0x9da1c  1      OPC=nop             
  nop                                                                #  53    0x9da1d  1      OPC=nop             
  nop                                                                #  54    0x9da1e  1      OPC=nop             
  nop                                                                #  55    0x9da1f  1      OPC=nop             
  nop                                                                #  56    0x9da20  1      OPC=nop             
  nop                                                                #  57    0x9da21  1      OPC=nop             
  nop                                                                #  58    0x9da22  1      OPC=nop             
  nop                                                                #  59    0x9da23  1      OPC=nop             
  nop                                                                #  60    0x9da24  1      OPC=nop             
  nop                                                                #  61    0x9da25  1      OPC=nop             
.L_9da20:                                                            #        0x9da26  0      OPC=<label>         
  addl $0x8, %esp                                                    #  62    0x9da26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  63    0x9da29  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  64    0x9da2c  1      OPC=popq_r64_1      
  popq %r12                                                          #  65    0x9da2d  2      OPC=popq_r64_1      
  popq %r11                                                          #  66    0x9da2f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  67    0x9da31  7      OPC=andl_r32_imm32  
  nop                                                                #  68    0x9da38  1      OPC=nop             
  nop                                                                #  69    0x9da39  1      OPC=nop             
  nop                                                                #  70    0x9da3a  1      OPC=nop             
  nop                                                                #  71    0x9da3b  1      OPC=nop             
  addq %r15, %r11                                                    #  72    0x9da3c  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  73    0x9da3f  3      OPC=jmpq_r64        
  nop                                                                #  74    0x9da42  1      OPC=nop             
  nop                                                                #  75    0x9da43  1      OPC=nop             
  nop                                                                #  76    0x9da44  1      OPC=nop             
  nop                                                                #  77    0x9da45  1      OPC=nop             
  nop                                                                #  78    0x9da46  1      OPC=nop             
  nop                                                                #  79    0x9da47  1      OPC=nop             
  nop                                                                #  80    0x9da48  1      OPC=nop             
  nop                                                                #  81    0x9da49  1      OPC=nop             
  nop                                                                #  82    0x9da4a  1      OPC=nop             
  nop                                                                #  83    0x9da4b  1      OPC=nop             
  nop                                                                #  84    0x9da4c  1      OPC=nop             
                                                                                                                  
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi

