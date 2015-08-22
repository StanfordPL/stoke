  .text
  .globl _ZNSsC1ERKSsjjRKSaIcE
  .type _ZNSsC1ERKSsjjRKSaIcE, @function

#! file-offset 0xee280
#! rip-offset  0xae280
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1ERKSsjjRKSaIcE:                                                   #        0xae280  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xae280  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xae281  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xae283  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                         #  4     0xae285  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  5     0xae288  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  6     0xae28b  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  7     0xae28e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  8     0xae290  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  9     0xae294  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  10    0xae297  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  11    0xae299  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  12    0xae29d  2      OPC=cmpl_r32_r32    
  nop                                                                     #  13    0xae29f  1      OPC=nop             
  ja .L_ae2e0                                                             #  14    0xae2a0  2      OPC=ja_label        
  subl %edx, %esi                                                         #  15    0xae2a2  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                       #  16    0xae2a4  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  17    0xae2a8  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  18    0xae2aa  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  19    0xae2ad  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  20    0xae2af  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  21    0xae2b1  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                         #  22    0xae2b4  3      OPC=movl_r32_r32    
  nop                                                                     #  23    0xae2b7  1      OPC=nop             
  nop                                                                     #  24    0xae2b8  1      OPC=nop             
  nop                                                                     #  25    0xae2b9  1      OPC=nop             
  nop                                                                     #  26    0xae2ba  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xae2bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xae2c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xae2c2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  30    0xae2c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xae2c9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xae2cc  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xae2cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xae2cf  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xae2d6  1      OPC=nop             
  nop                                                                     #  36    0xae2d7  1      OPC=nop             
  nop                                                                     #  37    0xae2d8  1      OPC=nop             
  nop                                                                     #  38    0xae2d9  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xae2da  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xae2dd  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xae2e0  1      OPC=nop             
  nop                                                                     #  42    0xae2e1  1      OPC=nop             
  nop                                                                     #  43    0xae2e2  1      OPC=nop             
  nop                                                                     #  44    0xae2e3  1      OPC=nop             
  nop                                                                     #  45    0xae2e4  1      OPC=nop             
  nop                                                                     #  46    0xae2e5  1      OPC=nop             
  nop                                                                     #  47    0xae2e6  1      OPC=nop             
.L_ae2e0:                                                                 #        0xae2e7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xae2e7  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xae2ec  1      OPC=nop             
  nop                                                                     #  50    0xae2ed  1      OPC=nop             
  nop                                                                     #  51    0xae2ee  1      OPC=nop             
  nop                                                                     #  52    0xae2ef  1      OPC=nop             
  nop                                                                     #  53    0xae2f0  1      OPC=nop             
  nop                                                                     #  54    0xae2f1  1      OPC=nop             
  nop                                                                     #  55    0xae2f2  1      OPC=nop             
  nop                                                                     #  56    0xae2f3  1      OPC=nop             
  nop                                                                     #  57    0xae2f4  1      OPC=nop             
  nop                                                                     #  58    0xae2f5  1      OPC=nop             
  nop                                                                     #  59    0xae2f6  1      OPC=nop             
  nop                                                                     #  60    0xae2f7  1      OPC=nop             
  nop                                                                     #  61    0xae2f8  1      OPC=nop             
  nop                                                                     #  62    0xae2f9  1      OPC=nop             
  nop                                                                     #  63    0xae2fa  1      OPC=nop             
  nop                                                                     #  64    0xae2fb  1      OPC=nop             
  nop                                                                     #  65    0xae2fc  1      OPC=nop             
  nop                                                                     #  66    0xae2fd  1      OPC=nop             
  nop                                                                     #  67    0xae2fe  1      OPC=nop             
  nop                                                                     #  68    0xae2ff  1      OPC=nop             
  nop                                                                     #  69    0xae300  1      OPC=nop             
  nop                                                                     #  70    0xae301  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xae302  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC1ERKSsjjRKSaIcE, .-_ZNSsC1ERKSsjjRKSaIcE

