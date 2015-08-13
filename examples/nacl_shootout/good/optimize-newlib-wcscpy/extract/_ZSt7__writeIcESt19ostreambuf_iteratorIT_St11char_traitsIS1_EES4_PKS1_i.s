  .text
  .globl _ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i
  .type _ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, @function

#! file-offset 0xb9c00
#! rip-offset  0x79c00
#! capacity    128 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i:  #        0x79c00  0      OPC=<label>         
  pushq %r12                                                               #  1     0x79c00  2      OPC=pushq_r64_1     
  movq %rdi, %rax                                                          #  2     0x79c02  3      OPC=movq_r64_r64    
  movl %edx, %r12d                                                         #  3     0x79c05  3      OPC=movl_r32_r32    
  shrq $0x20, %rax                                                         #  4     0x79c08  4      OPC=shrq_r64_imm8   
  movl %esi, %esi                                                          #  5     0x79c0c  2      OPC=movl_r32_r32    
  pushq %rbx                                                               #  6     0x79c0e  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  7     0x79c0f  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                          #  8     0x79c11  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  9     0x79c14  3      OPC=addq_r64_r64    
  testb %al, %al                                                           #  10    0x79c17  2      OPC=testb_r8_r8     
  jne .L_79c60                                                             #  11    0x79c19  2      OPC=jne_label       
  nop                                                                      #  12    0x79c1b  1      OPC=nop             
  nop                                                                      #  13    0x79c1c  1      OPC=nop             
  nop                                                                      #  14    0x79c1d  1      OPC=nop             
  nop                                                                      #  15    0x79c1e  1      OPC=nop             
  nop                                                                      #  16    0x79c1f  1      OPC=nop             
  movl %ebx, %ebx                                                          #  17    0x79c20  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                 #  18    0x79c22  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                                          #  19    0x79c26  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                          #  20    0x79c28  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                             #  21    0x79c2a  5      OPC=movl_r32_m32    
  nop                                                                      #  22    0x79c2f  1      OPC=nop             
  nop                                                                      #  23    0x79c30  1      OPC=nop             
  nop                                                                      #  24    0x79c31  1      OPC=nop             
  nop                                                                      #  25    0x79c32  1      OPC=nop             
  nop                                                                      #  26    0x79c33  1      OPC=nop             
  nop                                                                      #  27    0x79c34  1      OPC=nop             
  nop                                                                      #  28    0x79c35  1      OPC=nop             
  nop                                                                      #  29    0x79c36  1      OPC=nop             
  nop                                                                      #  30    0x79c37  1      OPC=nop             
  andl $0xffffffe0, %eax                                                   #  31    0x79c38  6      OPC=andl_r32_imm32  
  nop                                                                      #  32    0x79c3e  1      OPC=nop             
  nop                                                                      #  33    0x79c3f  1      OPC=nop             
  nop                                                                      #  34    0x79c40  1      OPC=nop             
  addq %r15, %rax                                                          #  35    0x79c41  3      OPC=addq_r64_r64    
  callq %rax                                                               #  36    0x79c44  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                         #  37    0x79c46  3      OPC=cmpl_r32_r32    
  setne %al                                                                #  38    0x79c49  3      OPC=setne_r8        
  nop                                                                      #  39    0x79c4c  1      OPC=nop             
  nop                                                                      #  40    0x79c4d  1      OPC=nop             
  nop                                                                      #  41    0x79c4e  1      OPC=nop             
  nop                                                                      #  42    0x79c4f  1      OPC=nop             
  nop                                                                      #  43    0x79c50  1      OPC=nop             
  nop                                                                      #  44    0x79c51  1      OPC=nop             
  nop                                                                      #  45    0x79c52  1      OPC=nop             
  nop                                                                      #  46    0x79c53  1      OPC=nop             
  nop                                                                      #  47    0x79c54  1      OPC=nop             
  nop                                                                      #  48    0x79c55  1      OPC=nop             
  nop                                                                      #  49    0x79c56  1      OPC=nop             
  nop                                                                      #  50    0x79c57  1      OPC=nop             
  nop                                                                      #  51    0x79c58  1      OPC=nop             
  nop                                                                      #  52    0x79c59  1      OPC=nop             
  nop                                                                      #  53    0x79c5a  1      OPC=nop             
  nop                                                                      #  54    0x79c5b  1      OPC=nop             
  nop                                                                      #  55    0x79c5c  1      OPC=nop             
  nop                                                                      #  56    0x79c5d  1      OPC=nop             
  nop                                                                      #  57    0x79c5e  1      OPC=nop             
  nop                                                                      #  58    0x79c5f  1      OPC=nop             
  nop                                                                      #  59    0x79c60  1      OPC=nop             
  nop                                                                      #  60    0x79c61  1      OPC=nop             
  nop                                                                      #  61    0x79c62  1      OPC=nop             
  nop                                                                      #  62    0x79c63  1      OPC=nop             
  nop                                                                      #  63    0x79c64  1      OPC=nop             
  nop                                                                      #  64    0x79c65  1      OPC=nop             
.L_79c60:                                                                  #        0x79c66  0      OPC=<label>         
  movzbl %al, %eax                                                         #  65    0x79c66  3      OPC=movzbl_r32_r8   
  addl $0x8, %esp                                                          #  66    0x79c69  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  67    0x79c6c  3      OPC=addq_r64_r64    
  shlq $0x20, %rax                                                         #  68    0x79c6f  4      OPC=shlq_r64_imm8   
  orq %rbx, %rax                                                           #  69    0x79c73  3      OPC=orq_r64_r64     
  popq %rbx                                                                #  70    0x79c76  1      OPC=popq_r64_1      
  popq %r12                                                                #  71    0x79c77  2      OPC=popq_r64_1      
  popq %r11                                                                #  72    0x79c79  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  73    0x79c7b  7      OPC=andl_r32_imm32  
  nop                                                                      #  74    0x79c82  1      OPC=nop             
  nop                                                                      #  75    0x79c83  1      OPC=nop             
  nop                                                                      #  76    0x79c84  1      OPC=nop             
  nop                                                                      #  77    0x79c85  1      OPC=nop             
  addq %r15, %r11                                                          #  78    0x79c86  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  79    0x79c89  3      OPC=jmpq_r64        
  nop                                                                      #  80    0x79c8c  1      OPC=nop             
                                                                                                                        
.size _ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, .-_ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i

