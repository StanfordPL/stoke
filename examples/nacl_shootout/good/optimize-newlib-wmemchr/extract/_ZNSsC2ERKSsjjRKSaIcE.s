  .text
  .globl _ZNSsC2ERKSsjjRKSaIcE
  .type _ZNSsC2ERKSsjjRKSaIcE, @function

#! file-offset 0xedbe0
#! rip-offset  0xadbe0
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSsjjRKSaIcE:                                                   #        0xadbe0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xadbe0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xadbe1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xadbe3  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                         #  4     0xadbe5  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  5     0xadbe8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  6     0xadbeb  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  7     0xadbee  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  8     0xadbf0  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  9     0xadbf4  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  10    0xadbf7  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  11    0xadbf9  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  12    0xadbfd  2      OPC=cmpl_r32_r32    
  nop                                                                     #  13    0xadbff  1      OPC=nop             
  ja .L_adc40                                                             #  14    0xadc00  2      OPC=ja_label        
  subl %edx, %esi                                                         #  15    0xadc02  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                       #  16    0xadc04  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  17    0xadc08  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  18    0xadc0a  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  19    0xadc0d  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  20    0xadc0f  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  21    0xadc11  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                         #  22    0xadc14  3      OPC=movl_r32_r32    
  nop                                                                     #  23    0xadc17  1      OPC=nop             
  nop                                                                     #  24    0xadc18  1      OPC=nop             
  nop                                                                     #  25    0xadc19  1      OPC=nop             
  nop                                                                     #  26    0xadc1a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xadc1b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xadc20  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xadc22  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  30    0xadc26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xadc29  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xadc2c  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xadc2d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xadc2f  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xadc36  1      OPC=nop             
  nop                                                                     #  36    0xadc37  1      OPC=nop             
  nop                                                                     #  37    0xadc38  1      OPC=nop             
  nop                                                                     #  38    0xadc39  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xadc3a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xadc3d  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xadc40  1      OPC=nop             
  nop                                                                     #  42    0xadc41  1      OPC=nop             
  nop                                                                     #  43    0xadc42  1      OPC=nop             
  nop                                                                     #  44    0xadc43  1      OPC=nop             
  nop                                                                     #  45    0xadc44  1      OPC=nop             
  nop                                                                     #  46    0xadc45  1      OPC=nop             
  nop                                                                     #  47    0xadc46  1      OPC=nop             
.L_adc40:                                                                 #        0xadc47  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xadc47  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xadc4c  1      OPC=nop             
  nop                                                                     #  50    0xadc4d  1      OPC=nop             
  nop                                                                     #  51    0xadc4e  1      OPC=nop             
  nop                                                                     #  52    0xadc4f  1      OPC=nop             
  nop                                                                     #  53    0xadc50  1      OPC=nop             
  nop                                                                     #  54    0xadc51  1      OPC=nop             
  nop                                                                     #  55    0xadc52  1      OPC=nop             
  nop                                                                     #  56    0xadc53  1      OPC=nop             
  nop                                                                     #  57    0xadc54  1      OPC=nop             
  nop                                                                     #  58    0xadc55  1      OPC=nop             
  nop                                                                     #  59    0xadc56  1      OPC=nop             
  nop                                                                     #  60    0xadc57  1      OPC=nop             
  nop                                                                     #  61    0xadc58  1      OPC=nop             
  nop                                                                     #  62    0xadc59  1      OPC=nop             
  nop                                                                     #  63    0xadc5a  1      OPC=nop             
  nop                                                                     #  64    0xadc5b  1      OPC=nop             
  nop                                                                     #  65    0xadc5c  1      OPC=nop             
  nop                                                                     #  66    0xadc5d  1      OPC=nop             
  nop                                                                     #  67    0xadc5e  1      OPC=nop             
  nop                                                                     #  68    0xadc5f  1      OPC=nop             
  nop                                                                     #  69    0xadc60  1      OPC=nop             
  nop                                                                     #  70    0xadc61  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xadc62  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC2ERKSsjjRKSaIcE, .-_ZNSsC2ERKSsjjRKSaIcE

