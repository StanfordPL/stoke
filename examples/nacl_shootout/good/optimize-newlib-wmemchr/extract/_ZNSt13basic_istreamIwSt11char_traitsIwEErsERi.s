  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEErsERi
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEErsERi, @function

#! file-offset 0xab120
#! rip-offset  0x6b120
#! capacity    128 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEErsERi:                           #        0x6b120  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                   #  1     0x6b120  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                    #  2     0x6b125  5      OPC=movq_m64_r64    
  subl $0x28, %esp                                                         #  3     0x6b12a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  4     0x6b12d  3      OPC=addq_r64_r64    
  movl %edi, %ebx                                                          #  5     0x6b130  2      OPC=movl_r32_r32    
  movl %esi, %r12d                                                         #  6     0x6b132  3      OPC=movl_r32_r32    
  leal 0xc(%rsp), %esi                                                     #  7     0x6b135  4      OPC=leal_r32_m16    
  movl %ebx, %edi                                                          #  8     0x6b139  2      OPC=movl_r32_r32    
  callq ._ZNSt13basic_istreamIwSt11char_traitsIwEE10_M_extractIlEERS2_RT_  #  9     0x6b13b  5      OPC=callq_label     
  movl %ebx, %ebx                                                          #  10    0x6b140  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                 #  11    0x6b142  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                          #  12    0x6b146  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                          #  13    0x6b149  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                 #  14    0x6b14b  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                                          #  15    0x6b14f  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                          #  16    0x6b151  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rax,1)                                            #  17    0x6b153  6      OPC=testb_m8_imm8   
  jne .L_6b180                                                             #  18    0x6b159  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                                                     #  19    0x6b15b  4      OPC=movl_r32_m32    
  nop                                                                      #  20    0x6b15f  1      OPC=nop             
  movl %r12d, %r12d                                                        #  21    0x6b160  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)                                                 #  22    0x6b163  4      OPC=movl_m32_r32    
  nop                                                                      #  23    0x6b167  1      OPC=nop             
  nop                                                                      #  24    0x6b168  1      OPC=nop             
  nop                                                                      #  25    0x6b169  1      OPC=nop             
  nop                                                                      #  26    0x6b16a  1      OPC=nop             
  nop                                                                      #  27    0x6b16b  1      OPC=nop             
  nop                                                                      #  28    0x6b16c  1      OPC=nop             
  nop                                                                      #  29    0x6b16d  1      OPC=nop             
  nop                                                                      #  30    0x6b16e  1      OPC=nop             
  nop                                                                      #  31    0x6b16f  1      OPC=nop             
  nop                                                                      #  32    0x6b170  1      OPC=nop             
  nop                                                                      #  33    0x6b171  1      OPC=nop             
  nop                                                                      #  34    0x6b172  1      OPC=nop             
  nop                                                                      #  35    0x6b173  1      OPC=nop             
  nop                                                                      #  36    0x6b174  1      OPC=nop             
  nop                                                                      #  37    0x6b175  1      OPC=nop             
  nop                                                                      #  38    0x6b176  1      OPC=nop             
  nop                                                                      #  39    0x6b177  1      OPC=nop             
  nop                                                                      #  40    0x6b178  1      OPC=nop             
  nop                                                                      #  41    0x6b179  1      OPC=nop             
  nop                                                                      #  42    0x6b17a  1      OPC=nop             
  nop                                                                      #  43    0x6b17b  1      OPC=nop             
  nop                                                                      #  44    0x6b17c  1      OPC=nop             
  nop                                                                      #  45    0x6b17d  1      OPC=nop             
  nop                                                                      #  46    0x6b17e  1      OPC=nop             
  nop                                                                      #  47    0x6b17f  1      OPC=nop             
.L_6b180:                                                                  #        0x6b180  0      OPC=<label>         
  movl %ebx, %eax                                                          #  48    0x6b180  2      OPC=movl_r32_r32    
  movq 0x20(%rsp), %r12                                                    #  49    0x6b182  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rbx                                                    #  50    0x6b187  5      OPC=movq_r64_m64    
  addl $0x28, %esp                                                         #  51    0x6b18c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  52    0x6b18f  3      OPC=addq_r64_r64    
  popq %r11                                                                #  53    0x6b192  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  54    0x6b194  7      OPC=andl_r32_imm32  
  nop                                                                      #  55    0x6b19b  1      OPC=nop             
  nop                                                                      #  56    0x6b19c  1      OPC=nop             
  nop                                                                      #  57    0x6b19d  1      OPC=nop             
  nop                                                                      #  58    0x6b19e  1      OPC=nop             
  addq %r15, %r11                                                          #  59    0x6b19f  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  60    0x6b1a2  3      OPC=jmpq_r64        
  nop                                                                      #  61    0x6b1a5  1      OPC=nop             
  nop                                                                      #  62    0x6b1a6  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_istreamIwSt11char_traitsIwEErsERi, .-_ZNSt13basic_istreamIwSt11char_traitsIwEErsERi

