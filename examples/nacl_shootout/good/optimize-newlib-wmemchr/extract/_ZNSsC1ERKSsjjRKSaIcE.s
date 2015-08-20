  .text
  .globl _ZNSsC1ERKSsjjRKSaIcE
  .type _ZNSsC1ERKSsjjRKSaIcE, @function

#! file-offset 0xedb60
#! rip-offset  0xadb60
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1ERKSsjjRKSaIcE:                                                   #        0xadb60  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xadb60  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xadb61  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xadb63  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                         #  4     0xadb65  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  5     0xadb68  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  6     0xadb6b  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  7     0xadb6e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  8     0xadb70  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  9     0xadb74  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  10    0xadb77  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  11    0xadb79  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  12    0xadb7d  2      OPC=cmpl_r32_r32    
  nop                                                                     #  13    0xadb7f  1      OPC=nop             
  ja .L_adbc0                                                             #  14    0xadb80  2      OPC=ja_label        
  subl %edx, %esi                                                         #  15    0xadb82  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                       #  16    0xadb84  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  17    0xadb88  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  18    0xadb8a  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  19    0xadb8d  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  20    0xadb8f  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  21    0xadb91  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                         #  22    0xadb94  3      OPC=movl_r32_r32    
  nop                                                                     #  23    0xadb97  1      OPC=nop             
  nop                                                                     #  24    0xadb98  1      OPC=nop             
  nop                                                                     #  25    0xadb99  1      OPC=nop             
  nop                                                                     #  26    0xadb9a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xadb9b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xadba0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xadba2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  30    0xadba6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xadba9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xadbac  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xadbad  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xadbaf  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xadbb6  1      OPC=nop             
  nop                                                                     #  36    0xadbb7  1      OPC=nop             
  nop                                                                     #  37    0xadbb8  1      OPC=nop             
  nop                                                                     #  38    0xadbb9  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xadbba  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xadbbd  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xadbc0  1      OPC=nop             
  nop                                                                     #  42    0xadbc1  1      OPC=nop             
  nop                                                                     #  43    0xadbc2  1      OPC=nop             
  nop                                                                     #  44    0xadbc3  1      OPC=nop             
  nop                                                                     #  45    0xadbc4  1      OPC=nop             
  nop                                                                     #  46    0xadbc5  1      OPC=nop             
  nop                                                                     #  47    0xadbc6  1      OPC=nop             
.L_adbc0:                                                                 #        0xadbc7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xadbc7  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xadbcc  1      OPC=nop             
  nop                                                                     #  50    0xadbcd  1      OPC=nop             
  nop                                                                     #  51    0xadbce  1      OPC=nop             
  nop                                                                     #  52    0xadbcf  1      OPC=nop             
  nop                                                                     #  53    0xadbd0  1      OPC=nop             
  nop                                                                     #  54    0xadbd1  1      OPC=nop             
  nop                                                                     #  55    0xadbd2  1      OPC=nop             
  nop                                                                     #  56    0xadbd3  1      OPC=nop             
  nop                                                                     #  57    0xadbd4  1      OPC=nop             
  nop                                                                     #  58    0xadbd5  1      OPC=nop             
  nop                                                                     #  59    0xadbd6  1      OPC=nop             
  nop                                                                     #  60    0xadbd7  1      OPC=nop             
  nop                                                                     #  61    0xadbd8  1      OPC=nop             
  nop                                                                     #  62    0xadbd9  1      OPC=nop             
  nop                                                                     #  63    0xadbda  1      OPC=nop             
  nop                                                                     #  64    0xadbdb  1      OPC=nop             
  nop                                                                     #  65    0xadbdc  1      OPC=nop             
  nop                                                                     #  66    0xadbdd  1      OPC=nop             
  nop                                                                     #  67    0xadbde  1      OPC=nop             
  nop                                                                     #  68    0xadbdf  1      OPC=nop             
  nop                                                                     #  69    0xadbe0  1      OPC=nop             
  nop                                                                     #  70    0xadbe1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xadbe2  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC1ERKSsjjRKSaIcE, .-_ZNSsC1ERKSsjjRKSaIcE

