  .text
  .globl _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i
  .type _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, @function

#! file-offset 0xf2bc0
#! rip-offset  0xb2bc0
#! capacity    128 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i:  #        0xb2bc0  0      OPC=<label>         
  pushq %r12                                                               #  1     0xb2bc0  2      OPC=pushq_r64_1     
  movq %rdi, %rax                                                          #  2     0xb2bc2  3      OPC=movq_r64_r64    
  movl %edx, %r12d                                                         #  3     0xb2bc5  3      OPC=movl_r32_r32    
  shrq $0x20, %rax                                                         #  4     0xb2bc8  4      OPC=shrq_r64_imm8   
  movl %esi, %esi                                                          #  5     0xb2bcc  2      OPC=movl_r32_r32    
  pushq %rbx                                                               #  6     0xb2bce  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  7     0xb2bcf  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                          #  8     0xb2bd1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  9     0xb2bd4  3      OPC=addq_r64_r64    
  testb %al, %al                                                           #  10    0xb2bd7  2      OPC=testb_r8_r8     
  jne .L_b2c20                                                             #  11    0xb2bd9  2      OPC=jne_label       
  nop                                                                      #  12    0xb2bdb  1      OPC=nop             
  nop                                                                      #  13    0xb2bdc  1      OPC=nop             
  nop                                                                      #  14    0xb2bdd  1      OPC=nop             
  nop                                                                      #  15    0xb2bde  1      OPC=nop             
  nop                                                                      #  16    0xb2bdf  1      OPC=nop             
  movl %ebx, %ebx                                                          #  17    0xb2be0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                 #  18    0xb2be2  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                                          #  19    0xb2be6  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                          #  20    0xb2be8  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                             #  21    0xb2bea  5      OPC=movl_r32_m32    
  nop                                                                      #  22    0xb2bef  1      OPC=nop             
  nop                                                                      #  23    0xb2bf0  1      OPC=nop             
  nop                                                                      #  24    0xb2bf1  1      OPC=nop             
  nop                                                                      #  25    0xb2bf2  1      OPC=nop             
  nop                                                                      #  26    0xb2bf3  1      OPC=nop             
  nop                                                                      #  27    0xb2bf4  1      OPC=nop             
  nop                                                                      #  28    0xb2bf5  1      OPC=nop             
  nop                                                                      #  29    0xb2bf6  1      OPC=nop             
  nop                                                                      #  30    0xb2bf7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                   #  31    0xb2bf8  6      OPC=andl_r32_imm32  
  nop                                                                      #  32    0xb2bfe  1      OPC=nop             
  nop                                                                      #  33    0xb2bff  1      OPC=nop             
  nop                                                                      #  34    0xb2c00  1      OPC=nop             
  addq %r15, %rax                                                          #  35    0xb2c01  3      OPC=addq_r64_r64    
  callq %rax                                                               #  36    0xb2c04  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                         #  37    0xb2c06  3      OPC=cmpl_r32_r32    
  setne %al                                                                #  38    0xb2c09  3      OPC=setne_r8        
  nop                                                                      #  39    0xb2c0c  1      OPC=nop             
  nop                                                                      #  40    0xb2c0d  1      OPC=nop             
  nop                                                                      #  41    0xb2c0e  1      OPC=nop             
  nop                                                                      #  42    0xb2c0f  1      OPC=nop             
  nop                                                                      #  43    0xb2c10  1      OPC=nop             
  nop                                                                      #  44    0xb2c11  1      OPC=nop             
  nop                                                                      #  45    0xb2c12  1      OPC=nop             
  nop                                                                      #  46    0xb2c13  1      OPC=nop             
  nop                                                                      #  47    0xb2c14  1      OPC=nop             
  nop                                                                      #  48    0xb2c15  1      OPC=nop             
  nop                                                                      #  49    0xb2c16  1      OPC=nop             
  nop                                                                      #  50    0xb2c17  1      OPC=nop             
  nop                                                                      #  51    0xb2c18  1      OPC=nop             
  nop                                                                      #  52    0xb2c19  1      OPC=nop             
  nop                                                                      #  53    0xb2c1a  1      OPC=nop             
  nop                                                                      #  54    0xb2c1b  1      OPC=nop             
  nop                                                                      #  55    0xb2c1c  1      OPC=nop             
  nop                                                                      #  56    0xb2c1d  1      OPC=nop             
  nop                                                                      #  57    0xb2c1e  1      OPC=nop             
  nop                                                                      #  58    0xb2c1f  1      OPC=nop             
  nop                                                                      #  59    0xb2c20  1      OPC=nop             
  nop                                                                      #  60    0xb2c21  1      OPC=nop             
  nop                                                                      #  61    0xb2c22  1      OPC=nop             
  nop                                                                      #  62    0xb2c23  1      OPC=nop             
  nop                                                                      #  63    0xb2c24  1      OPC=nop             
  nop                                                                      #  64    0xb2c25  1      OPC=nop             
.L_b2c20:                                                                  #        0xb2c26  0      OPC=<label>         
  movzbl %al, %eax                                                         #  65    0xb2c26  3      OPC=movzbl_r32_r8   
  addl $0x8, %esp                                                          #  66    0xb2c29  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  67    0xb2c2c  3      OPC=addq_r64_r64    
  shlq $0x20, %rax                                                         #  68    0xb2c2f  4      OPC=shlq_r64_imm8   
  orq %rbx, %rax                                                           #  69    0xb2c33  3      OPC=orq_r64_r64     
  popq %rbx                                                                #  70    0xb2c36  1      OPC=popq_r64_1      
  popq %r12                                                                #  71    0xb2c37  2      OPC=popq_r64_1      
  popq %r11                                                                #  72    0xb2c39  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  73    0xb2c3b  7      OPC=andl_r32_imm32  
  nop                                                                      #  74    0xb2c42  1      OPC=nop             
  nop                                                                      #  75    0xb2c43  1      OPC=nop             
  nop                                                                      #  76    0xb2c44  1      OPC=nop             
  nop                                                                      #  77    0xb2c45  1      OPC=nop             
  addq %r15, %r11                                                          #  78    0xb2c46  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  79    0xb2c49  3      OPC=jmpq_r64        
  nop                                                                      #  80    0xb2c4c  1      OPC=nop             
                                                                                                                        
.size _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, .-_ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i

