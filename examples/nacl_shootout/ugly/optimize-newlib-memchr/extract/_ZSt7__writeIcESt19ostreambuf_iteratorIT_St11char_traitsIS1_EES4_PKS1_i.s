  .text
  .globl _ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i
  .type _ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, @function

#! file-offset 0xba620
#! rip-offset  0x7a620
#! capacity    128 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i:  #        0x7a620  0      OPC=<label>         
  pushq %r12                                                               #  1     0x7a620  2      OPC=pushq_r64_1     
  movq %rdi, %rax                                                          #  2     0x7a622  3      OPC=movq_r64_r64    
  movl %edx, %r12d                                                         #  3     0x7a625  3      OPC=movl_r32_r32    
  shrq $0x20, %rax                                                         #  4     0x7a628  4      OPC=shrq_r64_imm8   
  movl %esi, %esi                                                          #  5     0x7a62c  2      OPC=movl_r32_r32    
  pushq %rbx                                                               #  6     0x7a62e  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  7     0x7a62f  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                          #  8     0x7a631  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  9     0x7a634  3      OPC=addq_r64_r64    
  testb %al, %al                                                           #  10    0x7a637  2      OPC=testb_r8_r8     
  jne .L_7a680                                                             #  11    0x7a639  2      OPC=jne_label       
  nop                                                                      #  12    0x7a63b  1      OPC=nop             
  nop                                                                      #  13    0x7a63c  1      OPC=nop             
  nop                                                                      #  14    0x7a63d  1      OPC=nop             
  nop                                                                      #  15    0x7a63e  1      OPC=nop             
  nop                                                                      #  16    0x7a63f  1      OPC=nop             
  movl %ebx, %ebx                                                          #  17    0x7a640  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                 #  18    0x7a642  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                                          #  19    0x7a646  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                          #  20    0x7a648  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                             #  21    0x7a64a  5      OPC=movl_r32_m32    
  nop                                                                      #  22    0x7a64f  1      OPC=nop             
  nop                                                                      #  23    0x7a650  1      OPC=nop             
  nop                                                                      #  24    0x7a651  1      OPC=nop             
  nop                                                                      #  25    0x7a652  1      OPC=nop             
  nop                                                                      #  26    0x7a653  1      OPC=nop             
  nop                                                                      #  27    0x7a654  1      OPC=nop             
  nop                                                                      #  28    0x7a655  1      OPC=nop             
  nop                                                                      #  29    0x7a656  1      OPC=nop             
  nop                                                                      #  30    0x7a657  1      OPC=nop             
  andl $0xffffffe0, %eax                                                   #  31    0x7a658  6      OPC=andl_r32_imm32  
  nop                                                                      #  32    0x7a65e  1      OPC=nop             
  nop                                                                      #  33    0x7a65f  1      OPC=nop             
  nop                                                                      #  34    0x7a660  1      OPC=nop             
  addq %r15, %rax                                                          #  35    0x7a661  3      OPC=addq_r64_r64    
  callq %rax                                                               #  36    0x7a664  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                         #  37    0x7a666  3      OPC=cmpl_r32_r32    
  setne %al                                                                #  38    0x7a669  3      OPC=setne_r8        
  nop                                                                      #  39    0x7a66c  1      OPC=nop             
  nop                                                                      #  40    0x7a66d  1      OPC=nop             
  nop                                                                      #  41    0x7a66e  1      OPC=nop             
  nop                                                                      #  42    0x7a66f  1      OPC=nop             
  nop                                                                      #  43    0x7a670  1      OPC=nop             
  nop                                                                      #  44    0x7a671  1      OPC=nop             
  nop                                                                      #  45    0x7a672  1      OPC=nop             
  nop                                                                      #  46    0x7a673  1      OPC=nop             
  nop                                                                      #  47    0x7a674  1      OPC=nop             
  nop                                                                      #  48    0x7a675  1      OPC=nop             
  nop                                                                      #  49    0x7a676  1      OPC=nop             
  nop                                                                      #  50    0x7a677  1      OPC=nop             
  nop                                                                      #  51    0x7a678  1      OPC=nop             
  nop                                                                      #  52    0x7a679  1      OPC=nop             
  nop                                                                      #  53    0x7a67a  1      OPC=nop             
  nop                                                                      #  54    0x7a67b  1      OPC=nop             
  nop                                                                      #  55    0x7a67c  1      OPC=nop             
  nop                                                                      #  56    0x7a67d  1      OPC=nop             
  nop                                                                      #  57    0x7a67e  1      OPC=nop             
  nop                                                                      #  58    0x7a67f  1      OPC=nop             
  nop                                                                      #  59    0x7a680  1      OPC=nop             
  nop                                                                      #  60    0x7a681  1      OPC=nop             
  nop                                                                      #  61    0x7a682  1      OPC=nop             
  nop                                                                      #  62    0x7a683  1      OPC=nop             
  nop                                                                      #  63    0x7a684  1      OPC=nop             
  nop                                                                      #  64    0x7a685  1      OPC=nop             
.L_7a680:                                                                  #        0x7a686  0      OPC=<label>         
  movzbl %al, %eax                                                         #  65    0x7a686  3      OPC=movzbl_r32_r8   
  addl $0x8, %esp                                                          #  66    0x7a689  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  67    0x7a68c  3      OPC=addq_r64_r64    
  shlq $0x20, %rax                                                         #  68    0x7a68f  4      OPC=shlq_r64_imm8   
  orq %rbx, %rax                                                           #  69    0x7a693  3      OPC=orq_r64_r64     
  popq %rbx                                                                #  70    0x7a696  1      OPC=popq_r64_1      
  popq %r12                                                                #  71    0x7a697  2      OPC=popq_r64_1      
  popq %r11                                                                #  72    0x7a699  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  73    0x7a69b  7      OPC=andl_r32_imm32  
  nop                                                                      #  74    0x7a6a2  1      OPC=nop             
  nop                                                                      #  75    0x7a6a3  1      OPC=nop             
  nop                                                                      #  76    0x7a6a4  1      OPC=nop             
  nop                                                                      #  77    0x7a6a5  1      OPC=nop             
  addq %r15, %r11                                                          #  78    0x7a6a6  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  79    0x7a6a9  3      OPC=jmpq_r64        
  nop                                                                      #  80    0x7a6ac  1      OPC=nop             
                                                                                                                        
.size _ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, .-_ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i

