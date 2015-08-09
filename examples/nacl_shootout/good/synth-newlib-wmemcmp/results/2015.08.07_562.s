  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    61 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wmemcmp:                       #        0     0      OPC=<label>         
  nop                           #  1     0     1      OPC=nop             
  xorl %eax, %eax               #  2     0x1   2      OPC=xorl_r32_r32    
  nop                           #  3     0x3   1      OPC=nop             
  subq %rax, %rdi               #  4     0x4   3      OPC=subq_r64_r64_1  
  je .L_2d                      #  5     0x7   2      OPC=je_label        
  movl %edi, %r8d               #  6     0x9   3      OPC=movl_r32_r32_1  
  movl (%r15,%r8,1), %r8d       #  7     0xc   4      OPC=movl_r32_m32    
  nop                           #  8     0x10  1      OPC=nop             
  leal (%rsi), %ecx             #  9     0x11  2      OPC=leal_r32_m32    
  movl (%r15,%rcx,1), %ecx      #  10    0x13  4      OPC=movl_r32_m32    
  nop                           #  11    0x17  1      OPC=nop             
  nop                           #  12    0x18  1      OPC=nop             
  cmpl %ecx, %r8d               #  13    0x19  3      OPC=cmpl_r32_r32    
  jne .L_30                     #  14    0x1c  2      OPC=jne_label       
  jmpq .L_24                    #  15    0x1e  2      OPC=jmpq_label      
.L_18:                          #        0x20  0      OPC=<label>         
  addl $0x1, %eax               #  16    0x20  5      OPC=addl_eax_imm32  
  leal (%rsi,%rax,4), %ecx      #  17    0x25  3      OPC=leal_r32_m16    
  movl (%r15,%rcx,1), %ecx      #  18    0x28  4      OPC=movl_r32_m32    
  nopl %eax                     #  19    0x2c  3      OPC=nopl_r32        
  nopl %eax                     #  20    0x2f  3      OPC=nopl_r32        
  nop                           #  21    0x32  1      OPC=nop             
  leal (%rdi,%rax,4), %r8d      #  22    0x33  4      OPC=leal_r32_m16    
  movl (%r15,%r8,1), %r8d       #  23    0x37  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  24    0x3b  3      OPC=cmpl_r32_r32    
  jne .L_30                     #  25    0x3e  2      OPC=jne_label       
.L_24:                          #        0x40  0      OPC=<label>         
  decq %rdx                     #  26    0x40  3      OPC=decq_r64        
  jne .L_18                     #  27    0x43  2      OPC=jne_label       
  nopl %eax                     #  28    0x45  3      OPC=nopl_r32        
  nop                           #  29    0x48  1      OPC=nop             
  nop                           #  30    0x49  1      OPC=nop             
  nop                           #  31    0x4a  1      OPC=nop             
  nop                           #  32    0x4b  1      OPC=nop             
  nopl %eax                     #  33    0x4c  3      OPC=nopl_r32        
  nop                           #  34    0x4f  1      OPC=nop             
  nop                           #  35    0x50  1      OPC=nop             
  xorl $0x3, %eax               #  36    0x51  5      OPC=xorl_eax_imm32  
  orq $0x8, %rax                #  37    0x56  6      OPC=orq_rax_imm32   
  nop                           #  38    0x5c  1      OPC=nop             
  xorq %rax, %rax               #  39    0x5d  3      OPC=xorq_r64_r64_1  
.L_2d:                          #        0x60  0      OPC=<label>         
  popq %r11                     #  40    0x60  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  41    0x62  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  42    0x66  3      OPC=addq_r64_r64    
  jmpq %r11                     #  43    0x69  3      OPC=jmpq_r64        
  nop                           #  44    0x6c  1      OPC=nop             
  nopl %eax                     #  45    0x6d  3      OPC=nopl_r32        
  nopl %eax                     #  46    0x70  3      OPC=nopl_r32        
  nop                           #  47    0x73  1      OPC=nop             
  nop                           #  48    0x74  1      OPC=nop             
  nop                           #  49    0x75  1      OPC=nop             
  nop                           #  50    0x76  1      OPC=nop             
  nop                           #  51    0x77  1      OPC=nop             
  nop                           #  52    0x78  1      OPC=nop             
  nopl %eax                     #  53    0x79  3      OPC=nopl_r32        
  nopl %eax                     #  54    0x7c  3      OPC=nopl_r32        
  nop                           #  55    0x7f  1      OPC=nop             
.L_30:                          #        0x80  0      OPC=<label>         
  setg %al                      #  56    0x80  3      OPC=setg_r8         
  andl $0x3, %eax               #  57    0x83  3      OPC=andl_r32_imm8   
  leal -0x1(%rax,%rax,1), %eax  #  58    0x86  4      OPC=leal_r32_m32    
  popq %r11                     #  59    0x8a  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  60    0x8c  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  61    0x90  3      OPC=addq_r64_r64    
  jmpq %r11                     #  62    0x93  3      OPC=jmpq_r64        
                                                                          
.size wmemcmp, .-wmemcmp
